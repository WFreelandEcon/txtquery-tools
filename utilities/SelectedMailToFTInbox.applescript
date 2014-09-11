property pTitle : "Selected Mail.app msg to FT Inbox"

	function(editor, options) {
		var oTree = editor.tree(),
			lstInbox = oTree.evaluateNodePath(options.inboxpath), oInbox, 
			strText, lstChiln, strMsg=options.msg, lstLines = strMsg.split('\\n'),
			lngLines = lstLines.length, i, oFirstChild=null, blnTop = options.top;
	
		if (lngLines) {
			// CHECK THAT WE HAVE AN INBOX (CREATING ONE IF NECESSARY)
			if (lstInbox.length) {
				oInbox = lstInbox[0];
			} else {
				oInbox = oTree.createNode('# Inbox');
				oTree.appendNode(oInbox);
			}
			oTree.ensureClassified();
			if (oInbox.hasChildren()) {
				oFirstChild = oInbox.children()[0];
			}
			// ADD NEW LINES EITHER AT START OR END OF INBOX
			if (blnTop && oFirstChild) {
				for (i=0; i<lngLines; i++) {
					oInbox.insertChildBefore(oTree.createNode(lstLines[i]),oFirstChild);
				}
			} else {
				for (i=0; i<lngLines; i++) {
					oInbox.appendChild(oTree.createNode(lstLines[i]));
				}
			}
		}
	}

"