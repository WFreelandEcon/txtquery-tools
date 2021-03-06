property pTitle : "Reminders - Copy as linked TaskPaper/FT item"
property pVer : "0.18" -- Checked for Yosemite
property pAuthor : "Rob Trew"

-- Just a link, or a full FoldingText item with link and @alert/@priority/@cal (Reminders list) tags ?
property pblnLinksOnly : false

property pstrMDLinkLabel : "❓" -- (if no hours, minutes to convert to 🕒 🕟 etc)
property pstrDoneCheck : "✔️"
property pstrAlertTag : "alert" -- @alert(yyy-mm-dd HH:MM)
property pblnListTag : true
property pstrListTag : "list"

-- PASTE FORMAT OPTIONS
property pblnMDLink : true -- Always wraps reminders UUID in [MD](link) ? (Any duplicates will always labelled this way)

property pblnTextPart : false -- Include part of the text in any MD label link ?
property plngTextPartWords : 4 -- If so, how many words ?

property pstrDelim : "~|~"
property pSQLPrefix : "sqlite3 $HOME/Library/Calendars/Calendar\\ Cache \""
property pSQLPrefix2 : "sqlite3 -separator " & quoted form of pstrDelim & " $HOME/Library/Calendars/Calendar\\ Cache \""
property pDetailsSQL : pSQLPrefix2 & "select znode.ztitle, trim(replace(zcalendaritem.ztitle,x'0A','')), strftime('%Y-%m-%d %H:%S', zduedate + 978307200, 'unixepoch', 'localtime'), strftime('%Y-%m-%d %H:%S', zcompleteddate + 978307200, 'unixepoch', 'localtime'), zpriority, zcalendaritem.znotes from zcalendaritem inner join znode on zcalendaritem.zcalendar = znode.z_pk where zcalendaritem.z_ent is 9 and zlocaluid='"
property pFindSQL : pSQLPrefix & "select zlocaluid from zcalendaritem inner join znode on zcalendaritem.zcalendar = znode.z_pk where zcalendaritem.z_ent is 9 and trim(replace(zcalendaritem.ztitle,x'0A',''))="
property pdteCocoaEpoch : missing value
property pMaxInt : (2 ^ 29) - 1

property plstHeatTags : {"@priority(1)", "@priority(2)", "@priority(3)"}
property pURLScheme : "x-apple-reminder://"
property plstImmediateDays : {"yesterday", "today", "tomorrow"}
property pblnHan : user locale of (system info) begins with "zh"

-- Get text, status, and reminder date from selected Reminder
on run
	if pblnHan then
		set plstImmediateDays to {"昨天", "今天", "明天"}
	else
		set plstImmediateDays to {"yesterday", "today", "tomorrow"}
	end if
	
	set strMD to ""
	
	set {lstRecs, blnActive} to copiedReminders()
	--display notification ((length of lstRecs) as string) & " copied ..."
	if lstRecs ≠ {} then
		set strMD to MDText(lstRecs, blnActive)
		display notification strMD
		set the clipboard to strMD
	end if
	strMD
end run

on MDText(lstRecs, blnActive)
	set strPaste to ""
	set lstSeen to {}
	if blnActive then
		set strDoneClause to " and zcompleteddate is null"
	else
		set strDoneClause to " and zcompleteddate is not null"
	end if
	
	repeat with i from 1 to length of lstRecs
		set recSeln to item i of lstRecs
		-- BUILD AN SQL QUERY ON THE TEXT AND DATE, AND HARVEST ANY RESULTS
		set strCmd to pSQLPrefix & "select Z_PK from ZNODE where ztitle='" & itemlist of recSeln & "'\""
		set strCalID to do shell script strCmd
		if strCalID ≠ "" then
			set strListClause to " and zcalendar=" & strCalID
		else
			set strListClause to ""
		end if
		set dteAlarm to alarmdate of recSeln
		
		set blnAlarm to (dteAlarm is not missing value)
		if blnAlarm then
			set {h, m} to {hours of dteAlarm, minutes of dteAlarm}
		else
			set {h, m} to {missing value, missing value}
		end if
		
		if blnActive then
			if blnAlarm then
				set lngSecs to AS2CocoaTime(dteAlarm)
				set strDayClause to " and zduedate >= " & ¬
					Int2Str(lngSecs) & " and zduedate < " & Int2Str(lngSecs + (days * 1))
			else
				set strDayClause to " and zduedate is null"
			end if
		else
			set strDayClause to ""
		end if
		
		set varHeat to (priority of recSeln)
		if varHeat > 0 and varHeat < 9 then
			set strHeatClause to " and zpriority=" & varHeat as string
		else
			set strHeatClause to " and (zpriority is null or zpriority=0)"
		end if
		
		set strText to itemtext of recSeln
		set strCmd to pFindSQL & (quoted form of my Trim(strText)) & strListClause & strDoneClause & strDayClause & strHeatClause & "\""
		set lstResults to paragraphs of (do shell script strCmd)
		
		-- DETECTING DUPLICATES (SAME REMINDER TEXT ON SAME DAY)
		set lngResults to length of lstResults
		if lngResults > 1 then
			set lngDuplicates to lngResults
		else
			set lngDuplicates to 0
		end if
		
		
		-- EXTRACT THE UUID FROM EACH MATCH
		repeat with i from 1 to lngResults
			set strFields to contents of (item i of lstResults)
			set {dlm, my text item delimiters} to {my text item delimiters, "|"}
			set strUUID to text item 1 of strFields
			
			-- AND IF WE HAVEN'T SEEN THIS UUID BEFORE
			if not (lstSeen contains strUUID) then
				set end of lstSeen to strUUID
				
				-- APPEND A PASTE-READY COPY TO THE PASTE STRING
				set strPaste to strPaste & FormatItem(strUUID, strText, lngDuplicates, i, h, m)
			end if
		end repeat
	end repeat
	return Trim(strPaste)
end MDText


on copiedReminders()
	if pblnHan then
		set iNameStart to 4
		set strDelim to "”, "
	else
		set iNameStart to 9
		set strDelim to ", "
	end if
	tell application "Reminders" to activate
	tell application "System Events"
		set appR to first application process where name = "Reminders"
		tell front window of appR
			set oUI to UI elements of it
			try
				set oGroup to group 1 of splitter group 1
			on error
				set oGroup to group 1 of it
			end try
			set strList to description of oGroup
			set strListName to text iNameStart thru -1 of strList
			set {dlm, my text item delimiters} to {my text item delimiters, strDelim}
			set strListName to first text item of strListName
			set blnActive to (strListName ≠ "Completed")
			
			--if blnActive then
			--	set blnToday to (strListName = "Today")
			--else
			--	set blnToday to false
			--end if
			
			set lstRecs to {}
			set my text item delimiters to dlm
			set oTbl to table 1 of scroll area 1 of oGroup
			set lstRows to rows of oTbl where selected = true
			if lstRows ≠ {} then
				repeat with oRow in lstRows
					set blnInverted to false
					set oRow to contents of oRow
					set oUI to first UI element of (contents of oRow)
					tell oUI
						set {strItemList, strNote, strTimeString, dteDue} to {missing value, missing value, missing value, missing value}
						set strItem to value of first text field
						set lngBang to my mapScale(count of images)
						set lstStatics to value of static texts
						set lngStatics to length of lstStatics
						if lngStatics > 1 then
							if not pblnHan then
								set strNote to item 2 of lstStatics
							else
								set strValue to item 2 of lstStatics
								if length of strValue ≥ 8 and text 4 of strValue = "午" then
									set strNote to item 1 of lstStatics
									set blnInverted to true
								else
									set strNote to strValue
								end if
							end if
						end if
						set blnActive to ((value of checkbox 1) ≠ 1)
						if (blnActive) then
							set blnToday to (strListName = "Today")
							if blnToday then
								set {dlm, my text item delimiters} to {my text item delimiters, " — "}
								set lstParts to text items of item 1 of lstStatics
								set my text item delimiters to dlm
								set strItemList to (item 1 of lstParts)
								set strTimeString to (item 2 of lstParts)
							else
								set strItemList to strListName
								if lngStatics > 0 then
									if blnInverted then
										set strTimeString to item 2 of lstStatics
									else
										set strTimeString to item 1 of lstStatics
									end if
								end if
							end if
						else
							if lngStatics > 0 then set strItemList to item 1 of lstStatics
						end if
					end tell
					
					if strTimeString is not missing value then
						try
							set dteDue to my date strTimeString
						on error
							if not pblnHan then
								set {dlm, my text item delimiters} to {my text item delimiters, space}
								set lstParts to text items of strTimeString
								set strFirst to item 1 of lstParts
								set strRest to (items 2 thru -1 of lstParts) as string
							else
								set strFirst to text 1 thru 2 of strTimeString
								set strRest to text 3 thru -1 of strTimeString
							end if
							if plstImmediateDays contains strFirst then
								set dteDue to (current date)
								if strFirst = item 1 of plstImmediateDays then
									set dteDue to dteDue - 1 * days
								else if strFirst = item 3 of plstImmediateDays then
									set dteDue to dteDue + 1 * days
								end if
								set strDate to (short date string of dteDue) & space & (strRest)
								set the clipboard to strDate
								set dteDue to my date strDate
							else
								set strNote to strTimeString
							end if
							
							set my text item delimiters to dlm
						end try
					end if
					set end of lstRecs to {itemlist:strItemList, itemtext:strItem, itemnote:strNote, priority:lngBang, alarmdate:dteDue}
				end repeat
			else
				display dialog "First select a Reminder, " & linefeed & linefeed & "then run 'Copy Reminder' script again ..." buttons {"OK"} default button "OK" with title pTitle & "  ver. " & pVer
			end if
		end tell
	end tell
	return {lstRecs, blnActive}
end copiedReminders


-- Calendar cache uses 0,9,5,1, Reminders uses 0,1,2,3
on mapScale(lngBang)
	set lngScaled to lngBang
	if lngBang > 0 then
		if lngBang > 2 then
			set lngScaled to 1
		else
			if lngBang < 2 then
				set lngScaled to 9
			else
				set lngScaled to 5
			end if
		end if
	end if
	return lngScaled
end mapScale

-- Emotime (4,30) --> 🕟
on et(h, m)
	set i to 128347
	set t to h mod 12
	if t > 0 then set i to 128335 + t
	if m ≥ 30 then set i to (i + 12)
	return string id i
end et

-- Prepare formatted version of Reminders UUID (see options in properties at top of script)
on FormatItem(strUUID, strText, lngDuplicates, iDuplicate, h, m)
	set strPaste to ""
	if pblnLinksOnly then
		set {dlm, my text item delimiters} to {my text item delimiters, space}
		set strURL to pURLScheme & strUUID
		
		if lngDuplicates > 0 then
			set strLabel to (("duplicate " & iDuplicate as string) & " of " & lngDuplicates as string) & ":"
			try
				set strLabel to strLabel & words 1 thru plngTextPartWords of strText & " …"
			on error
				set strLabel to strLabel & strText
			end try
			set strPaste to "[" & strLabel & "](" & strURL & ")" & linefeed
		else
			if pblnMDLink then
				if h is not missing value then
					set strLabel to et(h, m)
				else
					set strLabel to pstrMDLinkLabel
				end if
				
				if pblnTextPart then
					set strLabel to strLabel & ":"
					try
						set strLabel to strLabel & words 1 thru plngTextPartWords of strText & " …"
					on error
						set strLabel to strLabel & strText
					end try
				end if
				set strPaste to "[" & strLabel & "](" & strURL & ")" & linefeed
			else
				set strPaste to strURL & linefeed
			end if
		end if
		set my text item delimiters to dlm
	else
		set strPaste to FullDetails(strUUID, h, m)
	end if
	
	return strPaste
end FormatItem


on FullDetails(strUUID, h, m)
	set strPaste to ""
	
	set lstPriority to Get9PartPriorityList()
	set {dlm, my text item delimiters} to {my text item delimiters, pstrDelim}
	
	set strCmd to pDetailsSQL & strUUID & "'\""
	set lstRecord to text items of (do shell script strCmd)
	-- list text due done priority notes = 6
	if length of lstRecord = 6 then
		set {strList, strText, strDue, strDone, strPriority, strNotes} to lstRecord
		if (strPriority ≠ "") and (strPriority ≠ "0") then
			set strPriority to item (strPriority as integer) of lstPriority
		else
			set strPriority to ""
		end if
		if h is not missing value then
			set strLabel to et(h, m)
		else
			if strDone ≠ "" then
				set strLabel to pstrDoneCheck
			else
				set strLabel to pstrMDLinkLabel
			end if
		end if
		
		set lstLine to {"-", strText, " [" & strLabel & "](" & pURLScheme & strUUID & ")"}
		
		if pblnListTag then
			set strListTag to "@" & pstrListTag & "(" & lowerCase(strList) & ")"
			set end of lstLine to strListTag
		end if
		
		if strDue ≠ "" then
			if strDue ends with " 00:00" then set strDue to text 1 thru 10 of strDue
			set end of lstLine to "@" & pstrAlertTag & "(" & strDue & ")"
		end if
		if strPriority ≠ "" then set end of lstLine to strPriority
		if strDone ≠ "" then set end of lstLine to "@done(" & strDone & ")"
		set my text item delimiters to space
		set strPaste to strPaste & (lstLine as string) & linefeed
		if strNotes ≠ "" then
			set lstNotes to paragraphs of (Trim(strNotes))
			repeat with oNote in lstNotes
				set strPaste to strPaste & tab & tab & contents of oNote & linefeed
			end repeat
		end if
	end if
	
	
	set my text item delimiters to dlm
	
	-- list, item, due, done, priority, note
	return strPaste
end FullDetails


on lowerCase(strMixed)
	set lstLower to {}
	repeat with oChar in characters of strMixed
		set lngChar to id of oChar
		if lngChar ≥ 65 and lngChar ≤ 90 then
			set end of lstLower to lngChar + 32
		else
			set end of lstLower to lngChar
		end if
	end repeat
	return string id lstLower
end lowerCase

on Get9PartPriorityList()
	set lstBase to contents of plstHeatTags
	set lngBase to length of lstBase
	set lstLong to {}
	if lngBase > 0 then
		-- Get a base of three tags,
		-- neither less
		repeat while length of lstBase < 3
			set oTag to contents of item -1 of lstBase
			set end of lstBase to oTag
		end repeat
		-- nor more
		set lstBase to items 1 thru 3 of lstBase
	else
		set lstBase to {"@priority(1)", "@priority(2)", "@priority(3)"}
	end if
	-- and expand to nine (9 priority levels in the DB, only 3 in Reminders.app)
	repeat with i from 1 to 3
		set oTag to contents of item i of lstBase
		repeat with j from 1 to 3
			set end of lstLong to oTag
		end repeat
	end repeat
	
	return lstLong
end Get9PartPriorityList


-- Convert an Applescript date to a number of seconds since the Cocoa Epoch
-- (Format used in the Calendar Cache)
on AS2CocoaTime(dteAS)
	if pdteCocoaEpoch is missing value then set pdteCocoaEpoch to CocoaEpoch()
	return (dteAS - pdteCocoaEpoch) - (time to GMT)
end AS2CocoaTime

-- Get an Applescript date version of the Cocoa epoch moment
on CocoaEpoch()
	-- year of the release of Mac OS X 10.0
	tell (current date)
		set its day to 1 -- (Feb 29 precaution)
		set {its year, its month, its day, its time} to {2001, 1, 1, 0}
		return it
	end tell
end CocoaEpoch

-- Stringify large date integers for the SQL clauses
on Int2Str(n)
	if n > pMaxInt then
		set {lngRest, str} to {n, ""}
		repeat while lngRest > 10
			set str to ((lngRest mod 10) as integer as string) & str
			set lngRest to lngRest div 10
		end repeat
		(lngRest as string) & str
	else
		n as integer as string
	end if
end Int2Str

on Trim(strText)
	set lngChars to length of strText
	if lngChars is 0 then return ""
	set lstWhite to {space, tab, ASCII character 0}
	
	set blnFound to false
	repeat with iChar from 1 to lngChars
		if character iChar of strText is not in lstWhite then exit repeat
	end repeat
	set strText to text iChar thru lngChars of strText
	
	repeat with iChar from length of strText to 1 by -1
		if character iChar of strText is not in lstWhite then exit repeat
	end repeat
	set strText to text 1 thru iChar of strText
	return strText
end Trim
