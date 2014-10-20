FasdUAS 1.101.10   ��   ��    k             j     �� �� 0 ptitle pTitle  m        � 	 	 N M a k e / A d j u s t   R e m i n d e r   f r o m   F o l d i n g T e x t   2   
  
 l          j    �� �� 0 pver pVer  m       �    0 . 1 5    Updated for Yosemite     �   *   U p d a t e d   f o r   Y o s e m i t e      l     ��  ��    #  Author Rob Trew, license MIT     �   :   A u t h o r   R o b   T r e w ,   l i c e n s e   M I T      l     ��  ��    W Q Provisional version -- refactoring to 1. check and report on plugin installation     �   �   P r o v i s i o n a l   v e r s i o n   - -   r e f a c t o r i n g   t o   1 .   c h e c k   a n d   r e p o r t   o n   p l u g i n   i n s t a l l a t i o n      l     ��   ��    \ V and 2. call plugin functions directly (rather than invoke a command and set a global)      � ! ! �   a n d   2 .   c a l l   p l u g i n   f u n c t i o n s   d i r e c t l y   ( r a t h e r   t h a n   i n v o k e   a   c o m m a n d   a n d   s e t   a   g l o b a l )   " # " j    �� $�� 0 pstrapp pstrApp $ m     % % � & &  F o l d i n g T e x t #  ' ( ' l     ��������  ��  ��   (  ) * ) l     ��������  ��  ��   *  + , + l     �� - .��   - N H THIS SCRIPT REQUIRES up to date versions of TWO PLUGINS TO BE INSTALLED    . � / / �   T H I S   S C R I P T   R E Q U I R E S   u p   t o   d a t e   v e r s i o n s   o f   T W O   P L U G I N S   T O   B E   I N S T A L L E D ,  0 1 0 l     �� 2 3��   2 T N (a dialog will prompt for any plugin which needs to be installed or upgraded)    3 � 4 4 �   ( a   d i a l o g   w i l l   p r o m p t   f o r   a n y   p l u g i n   w h i c h   n e e d s   t o   b e   i n s t a l l e d   o r   u p g r a d e d ) 1  5 6 5 j   	 �� 7�� (0 pstrrtpluginfolder pstrRTPluginFolder 7 m   	 
 8 8 � 9 9 B F o l d i n g T e x t   2   p l u g i n s   a n d   s c r i p t s 6  : ; : j    �� <�� 0 prtpluginlink pRTPluginLink < m     = = � > > J h t t p s : / / g i t h u b . c o m / R o b T r e w / t r e e - t o o l s ;  ? @ ? j    ,�� A�� 0 plstplugins plstPlugins A J    + B B  C D C l 	   E���� E K     F F �� G H�� 0 name   G m     I I � J J  r e m i n d e r   t o o l s H �� K L�� 0 version   K m     M M ?�333333 L �� N O�� 0 URL   N o    ���� 0 prtpluginlink pRTPluginLink O �� P���� 
0 folder   P o    ���� (0 pstrrtpluginfolder pstrRTPluginFolder��  ��  ��   D  Q�� Q l 	  ) R���� R K    ) S S �� T U�� 0 name   T m     V V � W W  s m a l l t i m e U �� X Y�� 0 version   X m     ! Z Z ?�333333 Y �� [ \�� 0 URL   [ o   " #���� 0 prtpluginlink pRTPluginLink \ �� ]���� 
0 folder   ] o   $ %���� (0 pstrrtpluginfolder pstrRTPluginFolder��  ��  ��  ��   @  ^ _ ^ l     ��������  ��  ��   _  ` a ` l     �� b c��   b h b 1. COPY THE TWO FOLLOWING PLUGIN FOLDERS AND THEIR CONTENTS TO THE  FOLDINGTEXT PLUG-IN DIRECTORY    c � d d �   1 .   C O P Y   T H E   T W O   F O L L O W I N G   P L U G I N   F O L D E R S   A N D   T H E I R   C O N T E N T S   T O   T H E     F O L D I N G T E X T   P L U G - I N   D I R E C T O R Y a  e f e l     �� g h��   g D > ( From the FoldingText menu: File > Open Application Folder )    h � i i |   (   F r o m   t h e   F o l d i n g T e x t   m e n u :   F i l e   >   O p e n   A p p l i c a t i o n   F o l d e r   ) f  j k j l     ��������  ��  ��   k  l m l l     �� n o��   n ! --- reminder tools.ftplugin    o � p p 6 - - -   r e m i n d e r   t o o l s . f t p l u g i n m  q r q l     �� s t��   s  --- smalltime.ftplugin    t � u u , - - -   s m a l l t i m e . f t p l u g i n r  v w v l     ��������  ��  ��   w  x y x l     �� z {��   z 4 . (both of these plugin folders can be found at    { � | | \   ( b o t h   o f   t h e s e   p l u g i n   f o l d e r s   c a n   b e   f o u n d   a t y  } ~ } l     ��  ���    b \ https://github.com/RobTrew/tree-tools/tree/master/FoldingText%202%20plugins%20and%20scripts    � � � � �   h t t p s : / / g i t h u b . c o m / R o b T r e w / t r e e - t o o l s / t r e e / m a s t e r / F o l d i n g T e x t % 2 0 2 % 2 0 p l u g i n s % 2 0 a n d % 2 0 s c r i p t s ~  � � � l     �� � ���   � H B Download https://github.com/RobTrew/tree-tools/archive/master.zip    � � � � �   D o w n l o a d   h t t p s : / / g i t h u b . c o m / R o b T r e w / t r e e - t o o l s / a r c h i v e / m a s t e r . z i p �  � � � l     �� � ���   � @ : Unzip the archive, and copy the 2 .ftplugin folders from:    � � � � t   U n z i p   t h e   a r c h i v e ,   a n d   c o p y   t h e   2   . f t p l u g i n   f o l d e r s   f r o m : �  � � � l     �� � ���   � ? 9	--	-- tree-tools-master/FoldingText 2 plugin and scripts    � � � � r 	 - - 	 - -   t r e e - t o o l s - m a s t e r / F o l d i n g T e x t   2   p l u g i n   a n d   s c r i p t s �  � � � l     �� � ���   � ; 5 into the FT Application folder's Plug-ins subfolder.    � � � � j   i n t o   t h e   F T   A p p l i c a t i o n   f o l d e r ' s   P l u g - i n s   s u b f o l d e r . �  � � � l     �� � ���   �  )    � � � �  ) �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � $  CLOSE & RESTART FoldingText 2    � � � � <   C L O S E   &   R E S T A R T   F o l d i n g T e x t   2 �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 9 3 2. CHOOSE A TAG TO HOLD YOUR REMINDER DATE / TIMES    � � � � f   2 .   C H O O S E   A   T A G   T O   H O L D   Y O U R   R E M I N D E R   D A T E   /   T I M E S �  � � � j   - 1�� ��� 0 pstrremindtag pstrRemindTag � m   - 0 � � � � �  @ a l e r t �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � j d 3. ADD ANY OTHER DATE TAGS WHICH YOU WOULD LIKE THE SCRIPT TO READ AND UPDATE TO THE FOLLOWING LIST    � � � � �   3 .   A D D   A N Y   O T H E R   D A T E   T A G S   W H I C H   Y O U   W O U L D   L I K E   T H E   S C R I P T   T O   R E A D   A N D   U P D A T E   T O   T H E   F O L L O W I N G   L I S T �  � � � l     �� � ���   � i c	('read and update' = translate any informal or relative expression to standard yyyy-mm-dd [HH:MM])    � � � � � 	 ( ' r e a d   a n d   u p d a t e '   =   t r a n s l a t e   a n y   i n f o r m a l   o r   r e l a t i v e   e x p r e s s i o n   t o   s t a n d a r d   y y y y - m m - d d   [ H H : M M ] ) �  � � � j   2 5�� ��� &0 plstotherdatetags plstOtherDateTags � J   2 4����   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � h b 4. EDIT THE FOLLOWING LIST, CHOOSING 3 @tag or @tag(value) PRIORITY LEVELS, *IN DESCENDING ORDER*    � � � � �   4 .   E D I T   T H E   F O L L O W I N G   L I S T ,   C H O O S I N G   3   @ t a g   o r   @ t a g ( v a l u e )   P R I O R I T Y   L E V E L S ,   * I N   D E S C E N D I N G   O R D E R * �  � � � l     �� � ���   � < 6  (Reminders.app only offers three levels of priority)    � � � � l     ( R e m i n d e r s . a p p   o n l y   o f f e r s   t h r e e   l e v e l s   o f   p r i o r i t y ) �  � � � l     �� � ���   � r l 1 to 3 @tags or @key(value) pairs eg  ,{"@hi", "@med", "@lo"} {"@priority(0)", "@priority(1)", "@priority"}    � � � � �   1   t o   3   @ t a g s   o r   @ k e y ( v a l u e )   p a i r s   e g     , { " @ h i " ,   " @ m e d " ,   " @ l o " }   { " @ p r i o r i t y ( 0 ) " ,   " @ p r i o r i t y ( 1 ) " ,   " @ p r i o r i t y " } �  � � � l     �� � ���   � _ Y in descending priority. If you use 4 or more tags, the fourth onwards will be treated as    � � � � �   i n   d e s c e n d i n g   p r i o r i t y .   I f   y o u   u s e   4   o r   m o r e   t a g s ,   t h e   f o u r t h   o n w a r d s   w i l l   b e   t r e a t e d   a s �  � � � l     �� � ���   � = 7 alternative indications of the lowest (third) priority    � � � � n   a l t e r n a t i v e   i n d i c a t i o n s   o f   t h e   l o w e s t   ( t h i r d )   p r i o r i t y �  � � � j   6 G�� ��� 0 plstheattags plstHeatTags � J   6 F � �  � � � m   6 9 � � � � �  @ p r i o r i t y ( 1 ) �  � � � m   9 < � � � � �  @ p r i o r i t y ( 2 ) �  � � � m   < ? � � � � �  @ p r i o r i t y ( 3 ) �  ��� � m   ? B � � � � �  @ p r i o r i t y��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � T N 5. CHOOOSE AN MD LINK LABEL FOR THE PLAIN TEXT LINKS TO REMINDERS.APP ENTRIES    � � � � �   5 .   C H O O O S E   A N   M D   L I N K   L A B E L   F O R   T H E   P L A I N   T E X T   L I N K S   T O   R E M I N D E R S . A P P   E N T R I E S �  � � � l      � � � � j   H L�� ��� 0 
plinklabel 
pLinkLabel � m   H K � � � � �  { c l o c k } � N H translated to an emoji clockface showing approx time (or 12 if no time)    � � � � �   t r a n s l a t e d   t o   a n   e m o j i   c l o c k f a c e   s h o w i n g   a p p r o x   t i m e   ( o r   1 2   i f   n o   t i m e ) �  � � � l     �� � ���   � y sproperty pLinkLabel : "{moon}{clock}" -- just because we can -- moon phase as well as clock face for alert time :-)    � � � � � p r o p e r t y   p L i n k L a b e l   :   " { m o o n } { c l o c k } "   - -   j u s t   b e c a u s e   w e   c a n   - -   m o o n   p h a s e   a s   w e l l   a s   c l o c k   f a c e   f o r   a l e r t   t i m e   : - ) �    l     ����   [ U property pLinkLabel : "??" -- a possible link label for the pictorially inclined :-)    � �   p r o p e r t y   p L i n k L a b e l   :   "�=� "   - -   a   p o s s i b l e   l i n k   l a b e l   f o r   t h e   p i c t o r i a l l y   i n c l i n e d   : - )  l     ����   A ; property pLinkLabel :"?" -- day/date (CJK graphic economy)    �		 v   p r o p e r t y   p L i n k L a b e l   : "e� "   - -   d a y / d a t e   ( C J K   g r a p h i c   e c o n o m y ) 

 l     ����   U O property pLinkLabel : "rmnd" -- [reminder](uuid) -- text label for the MD link    � �   p r o p e r t y   p L i n k L a b e l   :   " r m n d "   - -   [ r e m i n d e r ] ( u u i d )   - -   t e x t   l a b e l   f o r   t h e   M D   l i n k  l     ��������  ��  ��    l     ����   E ? Include links to NvAlt and/or Editorial in the Reminder Note ?    � ~   I n c l u d e   l i n k s   t o   N v A l t   a n d / o r   E d i t o r i a l   i n   t h e   R e m i n d e r   N o t e   ?  l     ����   | v 6. EDIT THE FOLLOWING VALUES TO INCLUDE OR SKIP LINKS BACK TO PLAIN TEXT FILES IN FT, TP, NVALT, OR EDITORIAL for iOS    � �   6 .   E D I T   T H E   F O L L O W I N G   V A L U E S   T O   I N C L U D E   O R   S K I P   L I N K S   B A C K   T O   P L A I N   T E X T   F I L E S   I N   F T ,   T P ,   N V A L T ,   O R   E D I T O R I A L   f o r   i O S  j   M O���� 0 pblnftdoclink pblnFTDocLink m   M N��
�� boovtrue  j   P R�� ��  0 pblntp3doclink pblnTP3DocLink  m   P Q��
�� boovfals !"! j   S U��#�� 0 pblnnvaltlink pblnNVAltLink# m   S T��
�� boovfals" $%$ j   V X��&�� &0 pblneditoriallink pblnEditorialLink& m   V W��
�� boovfals% '(' l     ��������  ��  ��  ( )*) j   Y ]��+�� 0 purl_ft pURL_FT+ m   Y \,, �--  f t d o c : / /* ./. j   ^ b��0�� 0 purl_tp3 pURL_TP30 m   ^ a11 �22  t p 3 d o c : / // 343 j   c i��5�� 0 purl_nv pURL_NV5 m   c f66 �77  n v a l t : / /4 898 l     ��:;��  : c ] See, for this pattern:http://editorial-app.appspot.com/workflow/5822792658321408/6bhzGfAOGVM   ; �<< �   S e e ,   f o r   t h i s   p a t t e r n : h t t p : / / e d i t o r i a l - a p p . a p p s p o t . c o m / w o r k f l o w / 5 8 2 2 7 9 2 6 5 8 3 2 1 4 0 8 / 6 b h z G f A O G V M9 =>= j   j p��?�� (0 peditorialworkflow pEditorialWorkFlow? m   j m@@ �AA  g e t U U I D> BCB j   q ��D�� 0 purlnotelink pURLNoteLinkD b   q |EFE b   q xGHG m   q tII �JJ * e d i t o r i a l : / / ? c o m m a n d =H o   t w���� (0 peditorialworkflow pEditorialWorkFlowF m   x {KK �LL  & i n p u t =C MNM l     ��������  ��  ��  N OPO l     ��������  ��  ��  P QRQ l     ��ST��  S h b 7. EDIT THE FOLLOWING VALUE TO INCLUDE OR SKIPP LOGGING OF DATE CHANGES IN THE REMINDERS.APP NOTE   T �UU �   7 .   E D I T   T H E   F O L L O W I N G   V A L U E   T O   I N C L U D E   O R   S K I P P   L O G G I N G   O F   D A T E   C H A N G E S   I N   T H E   R E M I N D E R S . A P P   N O T ER VWV l     ��XY��  X 9 3 Log date changes to the end of the Reminder note ?   Y �ZZ f   L o g   d a t e   c h a n g e s   t o   t h e   e n d   o f   t h e   R e m i n d e r   n o t e   ?W [\[ j   � ���]�� &0 pblnlogdatedeltas pblnLogDateDeltas] m   � ���
�� boovtrue\ ^_^ l     ��������  ��  ��  _ `a` l     �bc�  b Q K 8. TO SPECIFY A PARTICULAR REMINDERS LIST (RATHER THAN THE DEFAULT LIST):    c �dd �   8 .   T O   S P E C I F Y   A   P A R T I C U L A R   R E M I N D E R S   L I S T   ( R A T H E R   T H A N   T H E   D E F A U L T   L I S T ) :  a efe l     �~gh�~  g d ^	  edit the value of pRemindersListName below to the name of your target list in Reminders.app   h �ii � 	     e d i t   t h e   v a l u e   o f   p R e m i n d e r s L i s t N a m e   b e l o w   t o   t h e   n a m e   o f   y o u r   t a r g e t   l i s t   i n   R e m i n d e r s . a p pf jkj l     lmnl j   � ��}o�} (0 preminderslistname pRemindersListNameo m   � �pp �qq  m 7 1 leave empty to use default list in Reminders.app   n �rr b   l e a v e   e m p t y   t o   u s e   d e f a u l t   l i s t   i n   R e m i n d e r s . a p pk sts l     �|�{�z�|  �{  �z  t uvu l     �y�x�w�y  �x  �w  v wxw l     �vyz�v  y C = Don't edit these properties - the script depends on them :-)   z �{{ z   D o n ' t   e d i t   t h e s e   p r o p e r t i e s   -   t h e   s c r i p t   d e p e n d s   o n   t h e m   : - )x |}| j   � ��u~�u  0 precdatefields precDateFields~ K   � � �t���t 	0 alarm  � o   � ��s�s 0 pstrremindtag pstrRemindTag� �r���r 
0 others  � o   � ��q�q &0 plstotherdatetags plstOtherDateTags� �p��o�p 0 heat  � o   � ��n�n 0 plstheattags plstHeatTags�o  } ��� j   � ��m��m 0 
punixepoch 
pUnixEpoch� m   � ��l
�l 
msng� ��� l     ���� j   � ��k��k 0 plstheatvalue plstHeatValue� J   � ��� ��� m   � ��j�j � ��� m   � ��i�i � ��h� m   � ��g�g 	�h  � #  values used by Reminders.app   � ��� :   v a l u e s   u s e d   b y   R e m i n d e r s . a p p� ��� l     �f�e�d�f  �e  �d  � ��� j   � ��c��c $0 pstrjsupdatelink pstrJSUpdateLink� m   � ��� ���� 
 
 	 f u n c t i o n ( e d i t o r ,   o p t i o n s )   { 
 	 	 ' u s e   s t r i c t ' ; 
 	 	 v a r   t r e e   =   e d i t o r . t r e e ( ) , 
 	 	 	 n o d e   =   e d i t o r . s e l e c t e d R a n g e ( ) . s t a r t N o d e ,   s t r T e x t = n o d e . t e x t ( ) ,   s t r U U I D = o p t i o n s . u u i d ,   s t r P a t t e r n ,   r g x L i n k ,   s t r U p d a t e d , o M a t c h ; 
 	 	 s t r P a t t e r n = ' \ \ [ . * \ \ ] \ \ ( '   +   s t r U U I D   +   ' \ \ ) ' ; 
 	 	 r g x L i n k =   n e w   R e g E x p ( s t r P a t t e r n ) ; 
 	 	 s t r U p d a t e d   =   s t r T e x t . r e p l a c e ( r g x L i n k ,   ' [ '   +   o p t i o n s . l i n k n a m e   +   ' ] ( '   + s t r U U I D   +   ' ) ' ) ; 
 	 	 t r e e . b e g i n U p d a t e s ( ) ; 
 	 	 	 n o d e . s e t T e x t ( s t r U p d a t e d ) ; 
 	 	 t r e e . e n d U p d a t e s ( ) ; 
 	 	 t r e e . e n s u r e C l a s s i f i e d ( ) ; 
 	 } 
� ��� l     �b�a�`�b  �a  �`  � ��� i   � ���� I     �_�^�]
�_ .aevtoappnull  �   � ****�^  �]  � k     �� ��� l     �\���\  � = 7 ADJUST AND READ TEXT DATES, AND ANY UUID AND PRIORITY,   � ��� n   A D J U S T   A N D   R E A D   T E X T   D A T E S ,   A N D   A N Y   U U I D   A N D   P R I O R I T Y ,� ��� r     ��� o     �[�[ 0 
plinklabel 
pLinkLabel� o      �Z�Z 0 strlinklabel strLinkLabel� ��Y� O    ��� k   �� ��� r    ��� 2   �X
�X 
docu� o      �W�W 0 lstdocs lstDocs� ��V� Z   ���U�T� >    ��� o    �S�S 0 lstdocs lstDocs� J    �R�R  � O   ��� k    �� ��� Q     n���� r   # ,��� n   # *��� 1   ( *�Q
�Q 
psxp� l  # (��P�O� c   # (��� l  # &��N�M� n   # &��� m   $ &�L
�L 
file�  g   # $�N  �M  � m   & '�K
�K 
alis�P  �O  � o      �J�J 0 strpath strPath� R      �I�H�G
�I .ascrerr ****      � ****�H  �G  � k   4 n�� ��� I  4 9�F�E�D
�F .miscactvnull��� ��� null�E  �D  � ��� I  : k�C��
�C .sysodlogaskr        TEXT� b   : E��� b   : C��� b   : A��� b   : ?��� m   : ;�� ���   F i l e   n o t   s a v e d :  � n   ; >��� 1   < >�B
�B 
pnam�  g   ; <� 1   ? @�A
�A 
lnfd� 1   A B�@
�@ 
lnfd� m   C D�� ��� F S a v e   f i l e ,   a n d   r u n   s c r i p t   a g a i n   . . .� �?��
�? 
btns� J   H M�� ��>� m   H K�� ���  O K�>  � �=��
�= 
dflt� m   P S�� ���  O K� �<��;
�< 
appr� b   V e��� b   V _��� o   V [�:�: 0 ptitle pTitle� m   [ ^�� ���      v e r .  � o   _ d�9�9 0 pver pVer�;  � ��8� L   l n�7�7  �8  � ��� l  o o�6���6  � - ' DO WE HAVE THE PLUGINS WHICH WE NEED ?   � ��� N   D O   W E   H A V E   T H E   P L U G I N S   W H I C H   W E   N E E D   ?� ��� r   o y��� n  o u��� I   p u�5��4�5 0 loadedplugins loadedPlugins� ��3�  g   p q�3  �4  �  f   o p� o      �2�2 $0 lstloadedplugins lstloadedPlugins� � � r   z � J   z |�1�1   o      �0�0 0 
lstmissing 
lstMissing   Y   � ��/�. k   � � 	
	 r   � � n   � � 1   � ��-
�- 
pcnt l  � ��,�+ n   � � 4   � ��*
�* 
cobj o   � ��)�) 0 i   o   � ��(�( $0 lstloadedplugins lstloadedPlugins�,  �+   o      �'�' 0 varpath varPath
 �& Z   � ��%�$ >  � � n   � � m   � ��#
�# 
pcls l  � ��"�! o   � �� �  0 varpath varPath�"  �!   m   � ��
� 
ctxt r   � � l  � ��� b   � � l  � � ��  n   � �!"! 4   � ��#
� 
cobj# o   � ��� 0 i  " o   � ��� 0 plstplugins plstPlugins�  �   K   � �$$ �%�� 0 problem  % o   � ��� 0 varpath varPath�  �  �   n      &'&  ;   � �' o   � ��� 0 
lstmissing 
lstMissing�%  �$  �&  �/ 0 i   m   � ���  n   � �()( 1   � ��
� 
leng) o   � ��� 0 plstplugins plstPlugins�.   *+* l  � �����  �  �  + ,�, Z   �-.�/- >   � �010 o   � ��� 0 
lstmissing 
lstMissing1 J   � ��
�
  . n  � �232 I   � ��	4��	 (0 pointusertoplugins pointUserToPlugins4 5�5 o   � ��� 0 
lstmissing 
lstMissing�  �  3  f   � ��  / k   �66 787 l  � ��9:�  9 F @ IN THE SELECTED LINE, TRANSLATE ANY INFORMAL DATES/ADJUSTMENTS    : �;; �   I N   T H E   S E L E C T E D   L I N E ,   T R A N S L A T E   A N Y   I N F O R M A L   D A T E S / A D J U S T M E N T S  8 <=< l  � ��>?�  > 7 1 AND READ THE TEXT AND ANY UUID, DATE, PRIORITIES   ? �@@ b   A N D   R E A D   T H E   T E X T   A N D   A N Y   U U I D ,   D A T E ,   P R I O R I T I E S= ABA r   �CDC l  �E��E I  ��� F
� .FTsuevjSnull���     docu�   F ��GH
�� 
FTjsG m   � �II �JJ� f u n c t i o n ( e d i t o r ,   o p t i o n s )   { 
 	 	 	 	 	 	 ' u s e   s t r i c t ' 
 	 	 	 	 	 	 / /   c a l l   a   ' r e m i n d e r   t o o l s '   p l u g i n   f u n c t i o n   t o   u p d a t e   a n d   r e a d   t h e   l i n e 	 
 	 	 	 	 	 	 r e t u r n   r e q u i r e ( o p t i o n s . p l u g i n P a t h ) . u p d a t e A n d R e a d F o r L i n k ( e d i t o r ,   o p t i o n s ) ; 
 	 	 	 	 	 }H ��K��
�� 
FTopK b   �LML o   � �����  0 precdatefields precDateFieldsM K   �NN ��OP�� 0 
pluginpath 
pluginPathO n   � �QRQ 4   � ���S
�� 
cobjS m   � ����� R o   � ����� $0 lstloadedplugins lstloadedPluginsP ��T���� 0 	linklabel  T o   ���� 0 strlinklabel strLinkLabel��  ��  �  �  D o      ���� 0 recnode recNodeB UVU l ��������  ��  ��  V WXW l ��YZ��  Y C = AND UPDATE OR CREATE A LINKED REMINDER FOR THE SELECTED LINE   Z �[[ z   A N D   U P D A T E   O R   C R E A T E   A   L I N K E D   R E M I N D E R   F O R   T H E   S E L E C T E D   L I N EX \��\ n ]^] I  ��_���� 00 updateorcreatereminder updateOrCreateReminder_ `a`  g  a b��b o  ���� 0 recnode recNode��  ��  ^  f  ��  �  � n    cdc 4    ��e
�� 
cobje m    ���� d o    ���� 0 lstdocs lstDocs�U  �T  �V  � m    	ff�                                                                                      @ alis    `  Macintosh HD               �9�SH+  �5AFoldingText.app                                                ��m��>�        ����  	                Applications    �9�S      ��0�    �5A  *Macintosh HD:Applications: FoldingText.app     F o l d i n g T e x t . a p p    M a c i n t o s h   H D  Applications/FoldingText.app  / ��  �Y  � ghg l     ��������  ��  ��  h iji l     ��kl��  k 
 ----   l �mm  - - - -j non l     ��������  ��  ��  o pqp i   � �rsr I      ��t���� 00 updateorcreatereminder updateOrCreateRemindert uvu o      ���� 0 odoc oDocv w��w o      ���� 0 recnode recNode��  ��  s k    |xx yzy l     ��{|��  { 2 , Update existing reminder, or make a new one   | �}} X   U p d a t e   e x i s t i n g   r e m i n d e r ,   o r   m a k e   a   n e w   o n ez ~~ l     ������  � A ; and create a new list, if pRemindersListName is not empty,   � ��� v   a n d   c r e a t e   a   n e w   l i s t ,   i f   p R e m i n d e r s L i s t N a m e   i s   n o t   e m p t y , ��� l     ������  � $  and no matching list is found   � ��� <   a n d   n o   m a t c h i n g   l i s t   i s   f o u n d� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� Z    ������� =    ��� o     ���� 0 
punixepoch 
pUnixEpoch� m    ��
�� 
msng� r   
 ��� I   
 �������� 0 	unixepoch 	UnixEpoch��  ��  � o      ���� 0 
punixepoch 
pUnixEpoch��  ��  � ��� r    ��� m    ��
�� boovfals� o      ���� 0 
blnnewlist 
blnNewList� ��� r    %��� o    #���� 0 
plinklabel 
pLinkLabel� o      ���� 0 strlinklabel strLinkLabel� ��� Q   & 9����� r   ) 0��� l  ) .������ c   ) .��� l  ) ,������ n   ) ,��� o   * ,���� 0 	linklabel  � o   ) *���� 0 recnode recNode��  ��  � m   , -��
�� 
TEXT��  ��  � o      ���� 0 strlinklabel strLinkLabel� R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� Z   : K������� =   : =��� o   : ;���� 0 strlinklabel strLinkLabel� m   ; <�� ���  � r   @ G��� o   @ E���� 0 
plinklabel 
pLinkLabel� o      ���� 0 strlinklabel strLinkLabel��  ��  � ��� O   L��� k   P�� ��� r   P U��� n   P S��� o   Q S���� 0 uuid  � o   P Q���� 0 recnode recNode� o      ���� 0 varuuid varUUID� ��� r   V [��� l  V Y������ >   V Y��� o   V W���� 0 varuuid varUUID� m   W X��
�� 
null��  ��  � o      ���� 0 	blnlinked 	blnLinked� ��� Z   \ �������� o   \ ]���� 0 	blnlinked 	blnLinked� l  ` |���� Q   ` |���� r   c j��� 5   c h�����
�� 
remi� o   e f���� 0 varuuid varUUID
�� kfrmID  � o      ���� 0 orem oRem� R      ������
�� .ascrerr ****      � ****��  ��  � k   r |�� ��� I  r w�����
�� .sysodisAaleR        TEXT� m   r s�� ��� @ R e m i n d e r   n o t   f o u n d   f o r   t h i s   U U I D��  � ��� L   x z����  � ���� l  { {������  �  set blnLinked to false   � ��� , s e t   b l n L i n k e d   t o   f a l s e��  � ) # check that the record still exists   � ��� F   c h e c k   t h a t   t h e   r e c o r d   s t i l l   e x i s t s��  ��  � ��� l  � ���������  ��  ��  � ��� r   � ���� m   � ���
�� 
msng� o      ���� 0 dteoldalarm dteOldAlarm� ��� Z   �������� o   � ����� 0 	blnlinked 	blnLinked� O   ���� k   ��� ��� l  � �������  �   Update the alarm,   � ��� $   U p d a t e   t h e   a l a r m ,� ��� r   � ���� n   � ���� o   � ����� 	0 alarm  � o   � ����� 0 recnode recNode� o      ���� 0 varval varVal� ��� Z   � �������� >  � ���� o   � ����� 0 varval varVal� m   � ���
�� 
null� k   � ��� ��� r   � �   1   � ���
�� 
rmdt o      ���� 0 dteoldalarm dteOldAlarm�  r   � � n  � � I   � ������� 0 	checkdate 	checkDate 	
	 o   � ����� 0 varval varVal
 �� o   � ����� 0 recnode recNode��  ��    f   � � o      ���� 0 dtenew dteNew �� r   � � o   � ����� 0 dtenew dteNew 1   � ���
�� 
rmdt��  ��  ��  �  l  � �����     Update the priority    � (   U p d a t e   t h e   p r i o r i t y  r   � � n   � � o   � ����� 0 heat   o   � ����� 0 recnode recNode o      ���� 0 varval varVal  Z   � ��� >  � �  o   � ��� 0 varval varVal  m   � ��~
�~ 
null r   � �!"! n   � �#$# 4   � ��}%
�} 
cobj% o   � ��|�| 0 varval varVal$ o   � ��{�{ 0 plstheatvalue plstHeatValue" o      �z�z 0 lngheat lngHeat��   r   � �&'& m   � ��y�y  ' o      �x�x 0 lngheat lngHeat ()( l  � ��w�v�u�w  �v  �u  ) *+* Z  � �,-�t�s, >   � �./. n  � �010 1   � ��r
�r 
prio1  g   � �/ o   � ��q�q 0 lngheat lngHeat- r   � �232 o   � ��p�p 0 lngheat lngHeat3 n     454 1   � ��o
�o 
prio5  g   � ��t  �s  + 676 l  � ��n�m�l�n  �m  �l  7 898 l  � ��k:;�k  :   and the text.   ; �<<    a n d   t h e   t e x t .9 =>= r   � �?@? n   � �ABA o   � ��j�j 0 text  B o   � ��i�i 0 recnode recNode@ o      �h�h 0 strtext strText> CDC r   � �EFE n  � �GHG 1   � ��g
�g 
pnamH  g   � �F o      �f�f 0 strname strNameD IJI Z  �KL�e�dK H   � �MM E   � �NON o   � ��c�c 0 strname strNameO o   � ��b�b 0 strtext strTextL l 	P�a�`P r  QRQ b  STS b  UVU o  �_�_ 0 strtext strTextV 1  �^
�^ 
lnfdT o  �]�] 0 strname strNameR 1  �\
�\ 
pnam�a  �`  �e  �d  J W�[W r  XYX 1  �Z
�Z 
cntrY o      �Y�Y 0 olist oList�[  � o   � ��X�X 0 orem oRem��  � k  �ZZ [\[ l �W]^�W  ]   Text   ^ �__ 
   T e x t\ `a` r  *bcb K  (dd �Ve�U
�V 
pname n  !&fgf o  "&�T�T 0 text  g o  !"�S�S 0 recnode recNode�U  c o      �R�R 0 recnew recNewa hih r  +0jkj n  +.lml o  ,.�Q�Q 	0 alarm  m o  +,�P�P 0 recnode recNodek o      �O�O 0 varval varVali non l 11�Npq�N  p   Alarm   q �rr    A l a r mo sts Z  1Muv�M�Lu > 14wxw o  12�K�K 0 varval varValx m  23�J
�J 
nullv k  7Iyy z{z r  7@|}| n 7>~~ I  8>�I��H�I 0 	checkdate 	checkDate� ��� o  89�G�G 0 varval varVal� ��F� o  9:�E�E 0 recnode recNode�F  �H    f  78} o      �D�D 0 dtenew dteNew{ ��C� r  AI��� b  AG��� o  AB�B�B 0 recnew recNew� K  BF�� �A��@
�A 
rmdt� o  CD�?�? 0 dtenew dteNew�@  � o      �>�> 0 recnew recNew�C  �M  �L  t ��� l NN�=�<�;�=  �<  �;  � ��� l NN�:���:  �  	 Priority   � ���    P r i o r i t y� ��� r  NU��� n  NS��� o  OS�9�9 0 heat  � o  NO�8�8 0 recnode recNode� o      �7�7 0 varval varVal� ��� Z Vs���6�5� > VY��� o  VW�4�4 0 varval varVal� m  WX�3
�3 
null� r  \o��� b  \m��� o  \]�2�2 0 recnew recNew� K  ]l�� �1��0
�1 
prio� l `j��/�.� n  `j��� 4  ej�-�
�- 
cobj� o  hi�,�, 0 varval varVal� o  `e�+�+ 0 plstheatvalue plstHeatValue�/  �.  �0  � o      �*�* 0 recnew recNew�6  �5  � ��� l tt�)�(�'�)  �(  �'  � ��� l tt�&���&  �   Note   � ��� 
   N o t e� ��� l tt�%�$�#�%  �$  �#  � ��� r  tw��� m  tu�"
�" 
msng� o      �!�! 0 olist oList� ��� Z  x���� �� >  x���� o  x}�� (0 preminderslistname pRemindersListName� m  }��� ���  � Q  ������ r  ����� 5  �����
� 
list� o  ���� (0 preminderslistname pRemindersListName
� kfrmname� o      �� 0 olist oList� R      ���
� .ascrerr ****      � ****�  �  � k  ���� ��� r  ����� I �����
� .corecrel****      � null�  � ���
� 
kocl� m  ���
� 
list� ���
� 
prdt� K  ���� ���
� 
pnam� o  ���� (0 preminderslistname pRemindersListName�  �  � o      �� 0 olist oList� ��� r  ����� m  ���
� boovtrue� o      �
�
 0 
blnnewlist 
blnNewList�  �   �  � ��� Z �����	�� = ����� o  ���� 0 olist oList� m  ���
� 
msng� r  ����� 1  ���
� 
dlis� o      �� 0 olist oList�	  �  � ��� l ������  �  �  � ��� O ����� r  ����� l ���� ��� I �������
�� .corecrel****      � null��  � ����
�� 
kocl� m  ����
�� 
remi� �����
�� 
prdt� o  ������ 0 recnew recNew��  �   ��  � o      ���� 0 orem oRem� o  ������ 0 olist oList� ���� O  ����� k  ���� ��� r  ����� 1  ����
�� 
ID  � o      ���� 0 varuuid varUUID� ��� r  �	��� n  ���� 7 �����
�� 
ctxt� m  �������� m  ������� o  ������ 0 varuuid varUUID� o      ���� 0 struuid strUUID� ��� Z  
�������� l 
������ G  
��� o  
���� 0 pblnftdoclink pblnFTDocLink� o  ����  0 pblntp3doclink pblnTP3DocLink��  ��  � k  |�� ��� l �� ��    ( " encoded file name of current file    � D   e n c o d e d   f i l e   n a m e   o f   c u r r e n t   f i l e�  r  ( n $ I  $��	���� 0 
encodepath 
encodePath	 
��
 o   ���� 0 odoc oDoc��  ��    f   o      ����  0 strencodedpath strEncodedPath  Z )R���� o  ).���� 0 pblnftdoclink pblnFTDocLink r  1N b  1H b  1F b  1B b  1> b  18 1  14��
�� 
lnfd 1  47��
�� 
lnfd o  8=���� 0 purl_ft pURL_FT o  >A����  0 strencodedpath strEncodedPath m  BE �  ? f i n d = o  FG���� 0 struuid strUUID 1  HM��
�� 
body��  ��   �� Z S|���� o  SX����  0 pblntp3doclink pblnTP3DocLink r  [x !  b  [r"#" b  [p$%$ b  [l&'& b  [h()( b  [b*+* 1  [^��
�� 
lnfd+ 1  ^a��
�� 
lnfd) o  bg���� 0 purl_tp3 pURL_TP3' o  hk����  0 strencodedpath strEncodedPath% m  lo,, �--  ? f i n d =# o  pq���� 0 struuid strUUID! 1  rw��
�� 
body��  ��  ��  ��  ��  � ./. Z  ��01����0 o  ������ 0 pblnnvaltlink pblnNVAltLink1 r  ��232 b  ��454 b  ��676 b  ��898 1  ����
�� 
lnfd9 1  ����
�� 
lnfd7 o  ������ 0 purl_nv pURL_NV5 o  ������ 0 struuid strUUID3 1  ����
�� 
body��  ��  / :��: Z  ��;<����; o  ������ &0 pblneditoriallink pblnEditorialLink< r  ��=>= b  ��?@? b  ��ABA b  ��CDC b  ��EFE 1  ����
�� 
bodyF 1  ����
�� 
lnfdD 1  ����
�� 
lnfdB o  ������ 0 purlnotelink pURLNoteLink@ o  ������ 0 struuid strUUID> 1  ����
�� 
body��  ��  ��  � o  ������ 0 orem oRem��  � GHG l ����������  ��  ��  H I��I O  �JKJ k  �LL MNM r  ��OPO 1  ����
�� 
duedP o      ���� 0 dtealarm dteAlarmN Q��Q Z  �RS����R o  ������ &0 pblnlogdatedeltas pblnLogDateDeltasS Z  �TU����T l ��V����V >  ��WXW o  ������ 0 dteoldalarm dteOldAlarmX o  ������ 0 dtealarm dteAlarm��  ��  U r  �YZY b  �[\[ b  ��]^] 1  ����
�� 
body^ 1  ����
�� 
lnfd\ n �_`_ I  ���a���� 0 	changelog 	changeLoga bcb o  ������ 0 dteoldalarm dteOldAlarmc ded o  ������ 0 dtealarm dteAlarme f��f n  ��ghg o  ������ 0 iso  h o  ������ 0 recnode recNode��  ��  `  f  ��Z 1  ��
�� 
body��  ��  ��  ��  ��  K o  ������ 0 orem oRem��  � m   L Mii�                                                                                  rmnd  alis    X  Macintosh HD               �9�SH+  �5AReminders.app                                                  ��0϶��        ����  	                Applications    �9�S      ϶�w    �5A  (Macintosh HD:Applications: Reminders.app    R e m i n d e r s . a p p    M a c i n t o s h   H D  Applications/Reminders.app  / ��  � jkj l ��������  ��  ��  k lml l ��no��  n 8 2 if the Reminder is new, add a link to the FT item   o �pp d   i f   t h e   R e m i n d e r   i s   n e w ,   a d d   a   l i n k   t o   t h e   F T   i t e mm qrq l ��������  ��  ��  r sts Z  �uv��wu H  xx o  ���� 0 	blnlinked 	blnLinkedv k  Fyy z{z l ��|}��  |   Add a new link   } �~~    A d d   a   n e w   l i n k{ � O  >��� O  =��� l "<������ I "<�����
�� .FTsuevjSnull���     docu��  � ����
�� 
FTjs� m  &)�� ���R f u n c t i o n ( e d i t o r ,   o p t i o n s )   { 
 	 	 	 	 	 ' u s e   s t r i c t ' 
 	 	 	 	 	 v a r   t r e e   =   e d i t o r . t r e e ( ) , 
 	 	 	 	 	 	 n o d e   =   e d i t o r . s e l e c t e d R a n g e ( ) . s t a r t N o d e ; 
 	 	 	 	 	 t r e e . b e g i n U p d a t e s ( ) ; 
 	 	 	 	 	 	 n o d e . s e t T e x t ( n o d e . t e x t ( )   +     '   [ '   +   o p t i o n s . l i n k n a m e   +   ' ] ( '   +   o p t i o n s . u u i d   +   ' ) '   ) 
 	 	 	 	 	 t r e e . e n d U p d a t e s ( ) ; 
 	 	 	 	 	 t r e e . e n s u r e C l a s s i f i e d ( ) ; 
 	 	 	 	 }� �����
�� 
FTop� K  ,6�� ������ 0 uuid  � o  -.���� 0 varuuid varUUID� ������� 0 linkname  � o  12���� 0 strlinklabel strLinkLabel��  ��  ��  ��  � o  ���� 0 odoc oDoc� m  ���                                                                                      @ alis    `  Macintosh HD               �9�SH+  �5AFoldingText.app                                                ��m��>�        ����  	                Applications    �9�S      ��0�    �5A  *Macintosh HD:Applications: FoldingText.app     F o l d i n g T e x t . a p p    M a c i n t o s h   H D  Applications/FoldingText.app  / ��  � ���� r  ?F��� m  ?B�� ���  C r e a t e d� o      ���� 0 strmsg strMsg��  ��  w k  I��� ��� l II������  � 2 , update existing link label, if {calculated}   � ��� X   u p d a t e   e x i s t i n g   l i n k   l a b e l ,   i f   { c a l c u l a t e d }� ��� Z  I�������� C IR��� o  IN���� 0 
plinklabel 
pLinkLabel� m  NQ�� ���  {� O  U}��� O  [|��� l _{������ I _{�����
�� .FTsuevjSnull���     docu��  � ���
� 
FTjs� o  ch�~�~ $0 pstrjsupdatelink pstrJSUpdateLink� �}��|
�} 
FTop� K  ku�� �{���{ 0 uuid  � o  lm�z�z 0 varuuid varUUID� �y��x�y 0 linkname  � o  pq�w�w 0 strlinklabel strLinkLabel�x  �|  ��  ��  � o  [\�v�v 0 odoc oDoc� m  UX���                                                                                      @ alis    `  Macintosh HD               �9�SH+  �5AFoldingText.app                                                ��m��>�        ����  	                Applications    �9�S      ��0�    �5A  *Macintosh HD:Applications: FoldingText.app     F o l d i n g T e x t . a p p    M a c i n t o s h   H D  Applications/FoldingText.app  / ��  ��  ��  � ��u� r  ����� m  ���� ���  U p d a t e d� o      �t�t 0 strmsg strMsg�u  t ��� r  ����� b  ����� b  ����� b  ����� o  ���s�s 0 strmsg strMsg� m  ���� ���    [� n  ����� 1  ���r
�r 
pnam� o  ���q�q 0 olist oList� m  ���� ���  ]� o      �p�p 0 strmsg strMsg� ��� l ���o�n�m�o  �n  �m  � ��� r  ����� n  ����� o  ���l�l 0 datetext  � o  ���k�k 0 recnode recNode� o      �j�j 0 vardatesource varDateSource� ��� Z  �����i�h� > ����� o  ���g�g 0 vardatesource varDateSource� m  ���f
�f 
null� k  ���� ��� r  ����� m  ���� ���  � o      �e�e 0 	strprefix 	strPrefix� ��� Z �����d�c� >  ����� n  ����� 4 ���b�
�b 
cha � m  ���a�a � o  ���`�` 0 pstrremindtag pstrRemindTag� m  ���� ���  @� r  ����� m  ���� ���  @� o      �_�_ 0 	strprefix 	strPrefix�d  �c  � ��^� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� o  ���]�] 0 strmsg strMsg� 1  ���\
�\ 
spac� o  ���[�[ 0 	strprefix 	strPrefix� l 	����Z�Y� o  ���X�X 0 pstrremindtag pstrRemindTag�Z  �Y  � m  ���� ���  (� o  ���W�W 0 vardatesource varDateSource� m  ���� ���  )� o      �V�V 0 strmsg strMsg�^  �i  �h  � � � l ���U�T�S�U  �T  �S     Z ��R�Q = � o  � �P�P 0 dtealarm dteAlarm m   �O
�O 
msng r   n  
	
	 o  
�N�N 0 text  
 o  �M�M 0 recnode recNode o      �L�L 0 dtealarm dteAlarm�R  �Q    I ,�K
�K .sysonotfnull��� ��� TEXT o  �J�J 0 strmsg strMsg �I
�I 
appr o  �H�H 0 ptitle pTitle �G�F
�G 
subt c  !& o  !$�E�E 0 dtealarm dteAlarm m  $%�D
�D 
TEXT�F   �C Z  -|�B�A o  -.�@�@ 0 
blnnewlist 
blnNewList I 1x�?
�? .sysodlogaskr        TEXT b  1R b  1N b  1J b  1F  b  1@!"! b  1<#$# b  18%&% m  14'' �(( D N e w   l i s t   c r e a t e d   i n   R e m i n d e r s . a p p :& 1  47�>
�> 
lnfd$ 1  8;�=
�= 
lnfd" 1  <?�<
�< 
tab   o  @E�;�; (0 preminderslistname pRemindersListName l 	FI)�:�9) 1  FI�8
�8 
lnfd�:  �9   1  JM�7
�7 
lnfd m  NQ** �++ r ( b a s e d   o n   ` p R e m i n d e r s L i s t N a m e `   a t   t h e   t o p   o f   t h i s   s c r i p t ) �6,-
�6 
btns, l 
UZ.�5�4. J  UZ// 0�30 m  UX11 �22  O K�3  �5  �4  - �234
�2 
dflt3 m  ]`55 �66  O K4 �17�0
�1 
appr7 b  cr898 b  cl:;: o  ch�/�/ 0 ptitle pTitle; m  hk<< �==      v e r .  9 o  lq�.�. 0 pver pVer�0  �B  �A  �C  q >?> l     �-�,�+�-  �,  �+  ? @A@ i   � �BCB I      �*D�)�* 0 	checkdate 	checkDateD EFE o      �(�( 0 
lngseconds 
lngSecondsF G�'G o      �&�& 0 recnode recNode�'  �)  C k     �HH IJI l     �%�$�#�%  �$  �#  J KLK l     �"MN�"  M #  in case of summer time delta   N �OO :   i n   c a s e   o f   s u m m e r   t i m e   d e l t aL PQP r     'RSR n     TUT o    �!�! 0 	alarmlist  U o     � �  0 recnode recNodeS J      VV WXW o      �� 0 lngyear lngYearX YZY o      �� 0 lngmonth lngMonthZ [\[ o      �� 0 lngday lngDay\ ]^] o      �� 0 lnghour lngHour^ _�_ o      �� 0 lngmins lngMins�  Q `a` l  ( (����  �  �  a bcb l  ( (�de�  d F @ if daylight saving then is the same as now, this will be enough   e �ff �   i f   d a y l i g h t   s a v i n g   t h e n   i s   t h e   s a m e   a s   n o w ,   t h i s   w i l l   b e   e n o u g hc ghg r   ( 1iji [   ( /klk o   ( -�� 0 
punixepoch 
pUnixEpochl o   - .�� 0 
lngseconds 
lngSecondsj o      �� 0 dtenew dteNewh mnm l  2 2����  �  �  n opo l  2 2�qr�  q Z T but it may not be, and we could be at the cusp of day/month/year so let's check :-)   r �ss �   b u t   i t   m a y   n o t   b e ,   a n d   w e   c o u l d   b e   a t   t h e   c u s p   o f   d a y / m o n t h / y e a r   s o   l e t ' s   c h e c k   : - )p tut r   2 cvwv n   2 Fxyx J   3 Fzz {|{ 1   4 6�
� 
year| }~} m   8 :�
� 
mnth~ � 1   < >�
� 
hour� ��� 1   @ B�

�
 
min �  y o   2 3�	�	 0 dtenew dteNeww J      �� ��� o      �� 0 lngyear1 lngYear1� ��� o      �� 0 	lngmonth1 	lngMonth1� ��� o      �� 0 lnghour1 lngHour1� ��� o      �� 0 lngmins1 lngMins1�  u ��� l  d i���� r   d i��� m   d e�� � n      ��� 1   f h�
� 
day � o   e f�� 0 dtenew dteNew� K E (in case we set an interim day/month combination that doesn't exist)   � ��� �   ( i n   c a s e   w e   s e t   a n   i n t e r i m   d a y / m o n t h   c o m b i n a t i o n   t h a t   d o e s n ' t   e x i s t )� ��� l  j j� �����   ��  ��  � ��� Z  j y������� >   j m��� o   j k���� 0 lngyear1 lngYear1� o   k l���� 0 lngyear lngYear� r   p u��� o   p q���� 0 lngyear lngYear� n      ��� 1   r t��
�� 
year� o   q r���� 0 dtenew dteNew��  ��  � ��� Z  z �������� >   z }��� o   z {���� 0 	lngmonth1 	lngMonth1� o   { |���� 0 lngmonth lngMonth� r   � ���� o   � ����� 0 lngmonth lngMonth� n      ��� m   � ���
�� 
mnth� o   � ����� 0 dtenew dteNew��  ��  � ��� r   � ���� o   � ����� 0 lngday lngDay� n      ��� 1   � ���
�� 
day � o   � ����� 0 dtenew dteNew� ��� Z  � �������� >   � ���� o   � ����� 0 lnghour1 lngHour1� o   � ����� 0 lnghour lngHour� r   � ���� o   � ����� 0 lnghour lngHour� n      ��� 1   � ���
�� 
hour� o   � ����� 0 dtenew dteNew��  ��  � ��� Z  � �������� >   � ���� o   � ����� 0 lngmins1 lngMins1� o   � ����� 0 lngmins lngMins� r   � ���� o   � ����� 0 lngmins lngMins� n      ��� 1   � ���
�� 
min � o   � ����� 0 dtenew dteNew��  ��  � ��� r   � ���� m   � �����  � n      ��� m   � ���
�� 
scnd� o   � ����� 0 dtenew dteNew� ���� L   � ��� o   � ����� 0 dtenew dteNew��  A ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 0 
encodepath 
encodePath� ���� o      ���� 0 odoc oDoc��  ��  � O     !��� O     ��� k    �� ��� r    ��� n    ��� 1    ��
�� 
psxp� l   ������ c    ��� l   ������ n    ��� m   	 ��
�� 
file�  g    	��  ��  � m    ��
�� 
alis��  ��  � o      ���� 0 strpath strPath� ���� L    �� l   ������ I   �����
�� .FTsuevjSnull���     docu��  � ����
�� 
FTjs� m    �� ��� x f u n c t i o n ( e d i t o r ,   o p t i o n s )   { r e t u r n   e n c o d e U R I ( o p t i o n s . f p a t h ) ; }� �����
�� 
FTop� K    �� ������� 	0 fpath  � o    ���� 0 strpath strPath��  ��  ��  ��  ��  � o    ���� 0 odoc oDoc� m     ���                                                                                      @ alis    `  Macintosh HD               �9�SH+  �5AFoldingText.app                                                ��m��>�        ����  	                Applications    �9�S      ��0�    �5A  *Macintosh HD:Applications: FoldingText.app     F o l d i n g T e x t . a p p    M a c i n t o s h   H D  Applications/FoldingText.app  / ��  � ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� (0 pointusertoplugins pointUserToPlugins� ���� o      ���� 0 
lstmissing 
lstMissing��  ��  � k    `�� ��� l     ������  � 7 1 TELL THE USER WHERE TO FIND THE REQUIRED PLUGINS   � ��� b   T E L L   T H E   U S E R   W H E R E   T O   F I N D   T H E   R E Q U I R E D   P L U G I N S� � � r      n      1    ��
�� 
leng o     ���� 0 
lstmissing 
lstMissing o      ���� 0 
lngmissing 
lngMissing   l   ��������  ��  ��    r    
	
	 J    ����  
 o      ���� 0 lstmenu lstMenu  r     n     1    ��
�� 
leng l   ���� c     o    ���� 0 
lngmissing 
lngMissing m    ��
�� 
TEXT��  ��   o      ���� 0 	lngdigits 	lngDigits  l   ��������  ��  ��    Y    f���� k    a  O    \ k   & [   !"! r   & 9#$# b   & 7%&% b   & 5'(' b   & 3)*) b   & /+,+ n  & --.- I   ' -��/���� 
0 padnum  / 010 o   ' (���� 0 i  1 2��2 o   ( )���� 0 	lngdigits 	lngDigits��  ��  .  f   & ', 1   - .��
�� 
tab * n  / 2343 o   0 2���� 0 name  4  g   / 0( m   3 455 �66  :& 1   5 6��
�� 
tab $ o      ���� 0 stritem strItem" 7��7 Z   : [89��:8 =  : ?;<; n  : ==>= o   ; =���� 0 problem  >  g   : ;< m   = >��
�� 
null9 r   B G?@? b   B EABA o   B C���� 0 stritem strItemB m   C DCC �DD  n o t   i n s t a l l e d@ o      ���� 0 stritem strItem��  : r   J [EFE b   J YGHG b   J WIJI b   J SKLK b   J QMNM b   J MOPO o   J K���� 0 stritem strItemP m   K LQQ �RR  n e e d s   v e r s i o n  N n  M PSTS o   N P���� 0 version  T  g   M NL m   Q RUU �VV    ( u p g r a d e   f r o m  J n  S VWXW o   T V���� 0 problem  X  g   S TH m   W XYY �ZZ  )F o      ���� 0 stritem strItem��   c    #[\[ l   !]����] n    !^_^ 4    !��`
�� 
cobj` o     ���� 0 i  _ o    ���� 0 
lstmissing 
lstMissing��  ��  \ m   ! "��
�� 
reco a��a r   ] abcb o   ] ^���� 0 stritem strItemc n      ded  ;   _ `e o   ^ _���� 0 lstmenu lstMenu��  �� 0 i   m    ����  o    ���� 0 
lngmissing 
lngMissing��   fgf l  g g��������  ��  ��  g hih r   g �jkj b   g �lml b   g �non b   g �pqp b   g �rsr b   g �tut b   g �vwv b   g �xyx b   g �z{z b   g �|}| b   g �~~ b   g ���� b   g ���� b   g ���� b   g ���� b   g x��� b   g v��� b   g l��� l  g j������ c   g j��� o   g h���� 0 
lngmissing 
lngMissing� m   h i�
� 
TEXT��  ��  � 1   j k�~
�~ 
spac� I   l u�}��|�} 0 pl  � ��� m   m p�� ���  p l u g i n� ��{� o   p q�z�z 0 
lngmissing 
lngMissing�{  �|  � 1   v w�y
�y 
spac� I   x ��x��w�x 0 apl  � ��� m   y |�� ���  n e e d� ��v� o   | }�u�u 0 
lngmissing 
lngMissing�v  �w  � l 	 � ���t�s� m   � ��� ��� :   t o   b e   i n s t a l l e d   o r   u p g r a d e d .�t  �s  � 1   � ��r
�r 
lnfd� 1   � ��q
�q 
lnfd l 	 � ���p�o� m   � ��� ��� B 1 .   C o p y   e a c h   . f t p l u g i n   f o l d e r   t o :�p  �o  } 1   � ��n
�n 
lnfd{ 1   � ��m
�m 
tab y o   � ��l�l 0 pstrapp pstrAppw m   � ��� ��� 8   >   F i l e   >   A p p l i c a t i o n   F o l d e ru 1   � ��k
�k 
lnfds 1   � ��j
�j 
lnfdq l 	 � ���i�h� m   � ��� ��� 0 2 .   C l o s e   a n d   r e s t s t a r t    �i  �h  o o   � ��g�g 0 pstrapp pstrAppm 1   � ��f
�f 
lnfdk o      �e�e 0 strmsg strMsgi ��� l  � ��d�c�b�d  �c  �b  � ��� O   �^��� k   �]�� ��� I  � ��a�`�_
�a .miscactvnull��� ��� null�`  �_  � ��� r   ���� I  � ��^��
�^ .gtqpchltns    @   @ ns  � o   � ��]�] 0 lstmenu lstMenu� �\��
�\ 
appr� b   � ���� b   � ���� o   � ��[�[ 0 ptitle pTitle� 1   � ��Z
�Z 
tab � o   � ��Y�Y 0 pver pVer� �X��
�X 
prmp� l 	 � ���W�V� o   � ��U�U 0 strmsg strMsg�W  �V  � �T��
�T 
inSL� l 
 � ���S�R� J   � ��� ��Q� n   � ���� 4   � ��P�
�P 
cobj� m   � ��O�O � o   � ��N�N 0 lstmenu lstMenu�Q  �S  �R  � �M��
�M 
okbt� m   � ��� ��� H G o   t o   p l u g i n s   p a g e   f o r   s e l e c t e d   i t e m� �L��
�L 
cnbt� l 	 � ���K�J� m   � ��� ���  C a n c e l�K  �J  � �I��
�I 
empL� m   � ��H
�H boovtrue� �G��F
�G 
mlsl� m   � ��E
�E boovfals�F  � o      �D�D 0 	varchoice 	varChoice� ��� Z  Z���C�� =  ��� o  �B�B 0 	varchoice 	varChoice� m  �A
�A boovfals� r  ��� m  	�@�@  � o      �?�? 0 	lngchoice 	lngChoice�C  � k  Z�� ��� r  )��� J  �� ��� n ��� 1  �>
�> 
txdl�  f  � ��=� 1  �<
�< 
tab �=  � J      �� ��� o      �;�; 0 dlm  � ��:� n     ��� 1  #'�9
�9 
txdl�  f  "#�:  � ��� r  *9��� c  *7��� l *3��8�7� n  *3��� 4 .3�6�
�6 
citm� m  12�5�5 � l *.��4�3� n  *.��� 4  +.�2�
�2 
cobj� m  ,-�1�1 � o  *+�0�0 0 	varchoice 	varChoice�4  �3  �8  �7  � m  36�/
�/ 
long� o      �.�. 0 	lngchoice 	lngChoice� ��� r  :A��� o  :;�-�- 0 dlm  � n        1  <@�,
�, 
txdl  f  ;<� �+ I BZ�*�)
�* .sysoexecTEXT���     TEXT b  BV m  BE � 
 o p e n   n  EU	 1  QU�(
�( 
strq	 n  EQ

 o  MQ�'�' 0 url   l EM�&�% n  EM 4  JM�$
�$ 
cobj o  KL�#�# 0 	lngchoice 	lngChoice o  EJ�"�" 0 plstplugins plstPlugins�&  �%  �)  �+  � �! L  [] o  [\� �  0 	lngchoice 	lngChoice�!  � m   � ��                                                                                      @ alis    `  Macintosh HD               �9�SH+  �5AFoldingText.app                                                ��m��>�        ����  	                Applications    �9�S      ��0�    �5A  *Macintosh HD:Applications: FoldingText.app     F o l d i n g T e x t . a p p    M a c i n t o s h   H D  Applications/FoldingText.app  / ��  � � l __����  �  �  �  �  l     ����  �  �    l     ��     CHECK    �    C H E C K  l     ��    property plstPlugins : {�    � 2 p r o p e r t y   p l s t P l u g i n s   :   { �  !  l     �"#�  " \ V	{name:"reminder tools", version:0.2, URL:pRTPluginLink, folder:pstrRTPluginFolder}, �   # �$$ � 	 { n a m e : " r e m i n d e r   t o o l s " ,   v e r s i o n : 0 . 2 ,   U R L : p R T P l u g i n L i n k ,   f o l d e r : p s t r R T P l u g i n F o l d e r } ,   �! %&% l     �'(�  ' V P	{name:"smalltime", version:0.2, URL:pRTPluginLink, folder:pstrRTPluginFolder} �   ( �)) � 	 { n a m e : " s m a l l t i m e " ,   v e r s i o n : 0 . 2 ,   U R L : p R T P l u g i n L i n k ,   f o l d e r : p s t r R T P l u g i n F o l d e r }   �& *+* i   � �,-, I      �.�� 0 loadedplugins loadedPlugins. /�/ o      �� 0 odoc oDoc�  �  - k     00 121 l     �34�  3 ? 9 CHECK THAT REQUIRED PLUGINS ARE INSTALLED AND UP TO DATE   4 �55 r   C H E C K   T H A T   R E Q U I R E D   P L U G I N S   A R E   I N S T A L L E D   A N D   U P   T O   D A T E2 676 O     898 O    :;: r    <=< l   >��> I   ��?
� .FTsuevjSnull���     docu�  ? �@A
� 
FTjs@ m   
 BB �CC� 
 	 	 	 	 f u n c t i o n ( e d i t o r ,   o p t i o n s )   { 
 	 	 	 	 	 ' u s e   s t r i c t ' 
 	 	 	 	 	 / /   c h e c k   f o r   p l u g i n s 
 	 	 	 	 	 v a r 	 f n Q u e r y   =   r e q u i r e ( ' f t / u t i l / q u e r y p a r a m e t e r ' ) . Q u e r y P a r a m e t e r , 
 	 	 	 	 	 	 l s t P l u g i n s   =   f n Q u e r y ( ' p l u g i n P a t h s ' ,   ' ' ) . s p l i t ( ' : ' ) , 
 	 	 	 	 	 	 l s t F o u n d   =   [ ] ; 
 	 	 	 	 	 	 o p t i o n s . n e e d e d . f o r E a c h ( f u n c t i o n ( d c t P l u g i n )   { 
 	 	 	 	 	 	 	 v a r   s t r F o l d e r   =   ' / P l u g - I n s / '   +   d c t P l u g i n . n a m e   +   ' . f t p l u g i n / ' , 
 	 	 	 	 	 	 	 	 l n g P l u g i n s   =   l s t P l u g i n s . l e n g t h ,   s t r P l u g i n P a t h , 
 	 	 	 	 	 	 	 	 b l n F o u n d ,   i ,   o P l u g i n ; 
 	 	 	 	 	 	 	 f o r   ( i = 0 ;   i < l n g P l u g i n s ;   i + + )   { 
 	 	 	 	 	 	 	 	 s t r P l u g i n P a t h   =   l s t P l u g i n s [ i ] ; 
 	 	 	 	 	 	 	 	 b l n F o u n d   =   ( s t r P l u g i n P a t h . i n d e x O f ( s t r F o l d e r )   ! = =   - 1 ) ; 
 	 	 	 	 	 	 	 	 i f   ( b l n F o u n d )   { 
 	 	 	 	 	 	 	 	 	 / /   c h e c k   w h e t h e r   t h e   p l u g i n   i s   u p   t o   d a t e 
 	 	 	 	 	 	 	 	 	 o P l u g i n   =   r e q u i r e ( s t r P l u g i n P a t h ) ; 
 	 	 	 	 	 	 	 	 	 i f   ( o P l u g i n . v e r s i o n   > =   d c t P l u g i n . v e r s i o n )   { 
 	 	 	 	 	 	 	 	 	 	 l s t F o u n d . p u s h ( s t r P l u g i n P a t h ) ; 
 	 	 	 	 	 	 	 	 	 }   e l s e   { 
 	 	 	 	 	 	 	 	 	 	 l s t F o u n d . p u s h ( o P l u g i n . v e r s i o n ) ; 
 	 	 	 	 	 	 	 	 	 } 
 	 	 	 	 	 	 	 	 	 b r e a k ; 
 	 	 	 	 	 	 	 	 } 
 	 	 	 	 	 	 	 } 
 	 	 	 	 	 	 	 i f   ( ! b l n F o u n d )   { l s t F o u n d . p u s h ( n u l l ) ; } 
 	 	 	 	 	 	 } ) ; 
 	 	 	 	 	 r e t u r n   l s t F o u n d ; 
 	 	 	 	 }A �
D�	
�
 
FTopD K    EE �F�� 
0 needed  F o    �� 0 plstplugins plstPlugins�  �	  �  �  = o      �� $0 lstloadedplugins lstloadedPlugins; o    �� 0 odoc oDoc9 m     GG�                                                                                      @ alis    `  Macintosh HD               �9�SH+  �5AFoldingText.app                                                ��m��>�        ����  	                Applications    �9�S      ��0�    �5A  *Macintosh HD:Applications: FoldingText.app     F o l d i n g T e x t . a p p    M a c i n t o s h   H D  Applications/FoldingText.app  / ��  7 H�H L    II o    �� $0 lstloadedplugins lstloadedPlugins�  + JKJ l     �� ���  �   ��  K LML i   � �NON I      ��P���� 0 	changelog 	changeLogP QRQ o      ���� 0 dteoldalarm dteOldAlarmR STS o      ���� 0 dtealarm dteAlarmT U��U o      ���� 0 striso strISO��  ��  O k     �VV WXW Z     �YZ��[Y >    \]\ o     ���� 0 dteoldalarm dteOldAlarm] m    ��
�� 
msngZ k    �^^ _`_ r    aba \    	cdc o    ���� 0 dtealarm dteAlarmd o    ���� 0 dteoldalarm dteOldAlarmb o      ���� 0 rdelta rDelta` efe Z    gh��ig ?    jkj o    ���� 0 rdelta rDeltak m    ����  h r    lml m    nn �oo  d e f e r r e d  m o      ���� 0 strdirn strDirn��  i r    pqp m    rr �ss  b r o u g h t   a h e a d  q o      ���� 0 strdirn strDirnf tut r    &vwv l   $x����x A    $yzy I    "��{���� 0 abs  { |��| o    ���� 0 rdelta rDelta��  ��  z 1   " #��
�� 
days��  ��  w o      ���� 0 blntime blnTimeu }~} Z   ' ����� o   ' (���� 0 blntime blnTime� k   + ��� ��� Z   + L������ =   + 0��� n   + .��� 1   , .��
�� 
time� o   + ,���� 0 dteoldalarm dteOldAlarm� m   . /����  � r   3 6��� m   3 4�� ���  s e t   t o  � o      ���� 0 strdirn strDirn� ��� =   9 >��� n   9 <��� 1   : <��
�� 
time� o   9 :���� 0 dtealarm dteAlarm� m   < =����  � ���� k   A H�� ��� r   A D��� m   A B�� ���  T i m e   c l e a r e d� o      ���� 0 strmsg strMsg� ���� r   E H��� m   E F��
�� boovfals� o      ���� 0 blntime blnTime��  ��  ��  � ��� l  M M��������  ��  ��  � ���� Z   M �������� o   M N���� 0 blntime blnTime� k   Q ��� ��� r   Q ]��� c   Q [��� I   Q Y������� 0 abs  � ���� _   R U��� o   R S���� 0 rdelta rDelta� m   S T������  ��  � m   Y Z��
�� 
TEXT� o      ���� 0 strhours strHours� ��� r   ^ l��� c   ^ j��� _   ^ h��� I   ^ f������� 0 abs  � ���� `   _ b��� o   _ `���� 0 rdelta rDelta� m   ` a������  ��  � m   f g���� <� m   h i��
�� 
TEXT� o      ���� 0 strmins strMins� ��� r   m t��� b   m r��� b   m p��� o   m n���� 0 strdirn strDirn� o   n o���� 0 strhours strHours� m   p q�� ���  h� o      ���� 0 strmsg strMsg� ���� Z  u �������� >   u x��� o   u v���� 0 strmins strMins� m   v w�� ���  0� r   { ���� b   { ���� b   { ~��� o   { |���� 0 strmsg strMsg� o   | }���� 0 strmins strMins� m   ~ �� ���  m� o      ���� 0 strmsg strMsg��  ��  ��  ��  ��  ��  ��  � r   � ���� b   � ���� b   � ���� o   � ����� 0 strdirn strDirn� I   � �������� 0 abs  � ���� _   � ���� o   � ����� 0 rdelta rDelta� 1   � ���
�� 
days��  ��  � m   � ��� ���  d� o      ���� 0 strmsg strMsg~ ���� r   � ���� m   � ��� ��� !�� o      ���� 0 strprepn strPrepn��  ��  [ k   � ��� ��� r   � ���� m   � ��� ���    c r e a t e d   f o r  � o      ���� 0 strmsg strMsg� ���� r   � ���� m   � ��� ���  � o      ���� 0 strprepn strPrepn��  X ��� l  � ���������  ��  ��  � ���� L   � ��� b   � ���� b   � ���� b   � ���� b   � ���� b   � �� � m   � � � 
 [ l o g :  n   � � 1   � ���
�� 
shdt l  � ����� I  � �������
�� .misccurdldt    ��� null��  ��  ��  ��  � m   � � �  ]  � o   � ����� 0 strmsg strMsg� o   � ����� 0 strprepn strPrepn� o   � ����� 0 striso strISO��  M 	 l     ��������  ��  ��  	 

 i   � � I      ������ 0 abs   �� o      ���� 0 varn varN��  ��   Z     �� A      o     ���� 0 varn varN m    ����   L    	 d     o    ���� 0 varn varN��   L     o    ���� 0 varn varN  l     ��������  ��  ��    i   � � I      �������� 0 	unixepoch 	UnixEpoch��  ��   O     < k    ;   !"! r    )#$# J    %% &'& m    	�����' ()( m   	 
���� ) *��* m   
 ����  ��  $ J      ++ ,-, n     ./. 1    ��
�� 
year/  g    - 010 n     232 1    ��
�� 
day 3  g    1 4��4 n     565 1   % '��
�� 
time6  g   $ %��  " 787 l  * /9:;9 r   * /<=< m   * +���� = n     >?> m   , .��
�� 
mnth?  g   + ,: ( " set after day for fear of Feb :-)   ; �@@ D   s e t   a f t e r   d a y   f o r   f e a r   o f   F e b   : - )8 ABA L   0 8CC l  0 7D����D [   0 7EFE  g   0 1F l  1 6G��~G n  1 6HIH l  2 6J�}�|J I  2 6�{�z�y
�{ .sysoGMT long   ��� null�z  �y  �}  �|  I  f   1 2�  �~  ��  ��  B K�xK L   9 ;LL  g   9 :�x   l    M�w�vM I    �u�t�s
�u .misccurdldt    ��� null�t  �s  �w  �v   NON l     �r�q�p�r  �q  �p  O PQP l     �oRS�o  R 7 1 Left pad with zeroes to get a fixed digit length   S �TT b   L e f t   p a d   w i t h   z e r o e s   t o   g e t   a   f i x e d   d i g i t   l e n g t hQ UVU i   � �WXW I      �nY�m�n 
0 padnum  Y Z[Z o      �l�l 0 lngnum lngNum[ \�k\ o      �j�j 0 	lngdigits 	lngDigits�k  �m  X k     )]] ^_^ r     `a` c     bcb o     �i�i 0 lngnum lngNumc m    �h
�h 
TEXTa o      �g�g 0 strnum strNum_ ded r    fgf l   h�f�eh \    iji o    �d�d 0 	lngdigits 	lngDigitsj l   
k�c�bk n    
lml 1    
�a
�a 
lengm o    �`�` 0 strnum strNum�c  �b  �f  �e  g o      �_�_ 0 lnggap lngGape non V    &pqp k    !rr sts r    uvu b    wxw m    yy �zz  0x o    �^�^ 0 strnum strNumv o      �]�] 0 strnum strNumt {�\{ r    !|}| \    ~~ o    �[�[ 0 lnggap lngGap m    �Z�Z } o      �Y�Y 0 lnggap lngGap�\  q ?    ��� o    �X�X 0 lnggap lngGap� m    �W�W  o ��V� L   ' )�� o   ' (�U�U 0 strnum strNum�V  V ��� l     �T�S�R�T  �S  �R  � ��� l     �Q���Q  �   'plugin' ? 'plugins'   � ��� *   ' p l u g i n '  !�   ' p l u g i n s '� ��� i   � ���� I      �P��O�P 0 pl  � ��� o      �N�N 0 strword strWord� ��M� o      �L�L 0 lng  �M  �O  � Z     ���K�� ?     ��� o     �J�J 0 lng  � m    �I�I � b    	��� o    �H�H 0 strword strWord� m    �� ���  s�K  � o    �G�G 0 strword strWord� ��� l     �F�E�D�F  �E  �D  � ��� l     �C���C  �   'need' ? 'needs'   � ��� "   ' n e e d '  !�   ' n e e d s '� ��� i   � ���� I      �B��A�B 0 apl  � ��� o      �@�@ 0 strword strWord� ��?� o      �>�> 0 lng  �?  �A  � Z     ���=�� A     ��� o     �<�< 0 lng  � m    �;�; � b    	��� o    �:�: 0 strword strWord� m    �� ���  s�=  � o    �9�9 0 strword strWord� ��8� l     �7�6�5�7  �6  �5  �8       '�4�   % 8 =� ��� ��3�2�1�0,16@��/p��.���������������4  � %�-�,�+�*�)�(�'�&�%�$�#�"�!� ����������������������
�	�- 0 ptitle pTitle�, 0 pver pVer�+ 0 pstrapp pstrApp�* (0 pstrrtpluginfolder pstrRTPluginFolder�) 0 prtpluginlink pRTPluginLink�( 0 plstplugins plstPlugins�' 0 pstrremindtag pstrRemindTag�& &0 plstotherdatetags plstOtherDateTags�% 0 plstheattags plstHeatTags�$ 0 
plinklabel 
pLinkLabel�# 0 pblnftdoclink pblnFTDocLink�"  0 pblntp3doclink pblnTP3DocLink�! 0 pblnnvaltlink pblnNVAltLink�  &0 pblneditoriallink pblnEditorialLink� 0 purl_ft pURL_FT� 0 purl_tp3 pURL_TP3� 0 purl_nv pURL_NV� (0 peditorialworkflow pEditorialWorkFlow� 0 purlnotelink pURLNoteLink� &0 pblnlogdatedeltas pblnLogDateDeltas� (0 preminderslistname pRemindersListName�  0 precdatefields precDateFields� 0 
punixepoch 
pUnixEpoch� 0 plstheatvalue plstHeatValue� $0 pstrjsupdatelink pstrJSUpdateLink
� .aevtoappnull  �   � ****� 00 updateorcreatereminder updateOrCreateReminder� 0 	checkdate 	checkDate� 0 
encodepath 
encodePath� (0 pointusertoplugins pointUserToPlugins� 0 loadedplugins loadedPlugins� 0 	changelog 	changeLog� 0 abs  � 0 	unixepoch 	UnixEpoch� 
0 padnum  �
 0 pl  �	 0 apl  � ��� �  ��� � I�� 0 name  � � M�� 0 version  � � =�� 0 URL  � � 8�� 
0 folder  �  � � V�� 0 name  � � M�� 0 version  � �  =��  0 URL  � �� 8���� 
0 folder  ��  � ������  ��  � ����� �   � � � �
�3 boovtrue
�2 boovfals
�1 boovfals
�0 boovfals� ��� F e d i t o r i a l : / / ? c o m m a n d = g e t U U I D & i n p u t =
�/ boovtrue� �� ���� 	0 alarm  � ������ 
0 others  � ������� 0 heat  ��  
�. 
msng� ����� �  �������� �� �� 	� �����������
�� .aevtoappnull  �   � ****��  ��  � ���� 0 i  � +��f�������������������������������������������������������������I���������������� 0 strlinklabel strLinkLabel
�� 
docu�� 0 lstdocs lstDocs
�� 
cobj
�� 
file
�� 
alis
�� 
psxp�� 0 strpath strPath��  ��  
�� .miscactvnull��� ��� null
�� 
pnam
�� 
lnfd
�� 
btns
�� 
dflt
�� 
appr�� 
�� .sysodlogaskr        TEXT�� 0 loadedplugins loadedPlugins�� $0 lstloadedplugins lstloadedPlugins�� 0 
lstmissing 
lstMissing
�� 
leng
�� 
pcnt�� 0 varpath varPath
�� 
pcls
�� 
ctxt�� 0 problem  �� (0 pointusertoplugins pointUserToPlugins
�� 
FTjs
�� 
FTop�� 0 
pluginpath 
pluginPath�� 0 	linklabel  �� 
�� .FTsuevjSnull���     docu�� 0 recnode recNode�� 00 updateorcreatereminder updateOrCreateReminder��!b  	E�O�*�-E�O�jv��k/ � *�,�&�,E�W AX 	 
*j O�*�,%�%�%�%a a kva a a b   a %b  %a  OhO)*k+ E` OjvE` O Nkb  a ,Ekh  _ �/a ,E` O_ a ,a  b  �/a  _ l%_ 6FY h[OY��O_ jv )_ k+ !Y 7*a "a #a $b  a %_ �k/a &�a '%a ' (E` )O)*_ )l+ *UY hU� ��s���������� 00 updateorcreatereminder updateOrCreateReminder�� ����� �  ������ 0 odoc oDoc�� 0 recnode recNode��  � �������������������������������������������� 0 odoc oDoc�� 0 recnode recNode�� 0 
blnnewlist 
blnNewList�� 0 strlinklabel strLinkLabel�� 0 varuuid varUUID�� 0 	blnlinked 	blnLinked�� 0 orem oRem�� 0 dteoldalarm dteOldAlarm�� 0 varval varVal�� 0 dtenew dteNew�� 0 lngheat lngHeat�� 0 strtext strText�� 0 strname strName�� 0 olist oList�� 0 recnew recNew�� 0 struuid strUUID��  0 strencodedpath strEncodedPath�� 0 dtealarm dteAlarm�� 0 strmsg strMsg�� 0 vardatesource varDateSource�� 0 	strprefix 	strPrefix� K�������������i����������������������������������������������������������,�������������������������������������'�~*�}1�|5<�{�z
�� 
msng�� 0 	unixepoch 	UnixEpoch�� 0 	linklabel  
�� 
TEXT��  ��  �� 0 uuid  
�� 
null
�� 
remi
�� kfrmID  
�� .sysodisAaleR        TEXT�� 	0 alarm  
�� 
rmdt�� 0 	checkdate 	checkDate�� 0 heat  
�� 
cobj
�� 
prio�� 0 text  
�� 
pnam
�� 
lnfd
�� 
cntr
�� 
list
�� kfrmname
�� 
kocl
�� 
prdt�� 
�� .corecrel****      � null
�� 
dlis
�� 
ID  
�� 
ctxt����
�� 
bool�� 0 
encodepath 
encodePath
�� 
body
�� 
dued�� 0 iso  �� 0 	changelog 	changeLog
�� 
FTjs
�� 
FTop�� 0 linkname  
�� .FTsuevjSnull���     docu�� 0 datetext  
�� 
cha 
�� 
spac
�� 
appr
�� 
subt
� .sysonotfnull��� ��� TEXT
�~ 
tab 
�} 
btns
�| 
dflt�{ 
�z .sysodlogaskr        TEXT��}b  �  *j+ Ec  Y hOfE�Ob  	E�O ��,�&E�W X  hO��  b  	E�Y hO�á�,E�O��E�O� ! *��0E�W X  �j OhOPY hO�E�O� �� ���,E�O�� *�,E�O)��l+ E�O�*�,FY hO�a ,E�O�� b  a �/E�Y jE�O*a ,� �*a ,FY hO�a ,E�O*a ,E�O�� �_ %�%*a ,FY hO*a ,E�UY�a �a ,lE�O��,E�O�� )��l+ E�O��l%E�Y hO�a ,E�O�� �a b  a �/l%E�Y hO�E�Ob  a  ? *a b  a 0E�W 'X  *a a a a b  la  E�OeE�Y hO��  *a ,E�Y hO� *a �a �a  E�UO� �*a  ,E�O�[a !\[Za "\Zi2E�Ob  

 b  a #& c)�k+ $E^ Ob  
 "_ _ %b  %] %a %%�%*a &,FY hOb   "_ _ %b  %] %a '%�%*a &,FY hY hOb   _ _ %b  %�%*a &,FY hOb    *a &,_ %_ %b  %�%*a &,FY hUO� B*a (,E^ Ob   /�]  #*a &,_ %)�] �a ),m+ *%*a &,FY hY hUUO� 3a + !� *a ,a -a .�a /�a a  0UUOa 1E^ Y Bb  	a 2 -a + #� *a ,b  a .�a /�a a  0UUY hOa 3E^ O] a 4%�a ,%a 5%E^ O�a 6,E^ O] � Ka 7E^ Ob  a 8k/a 9 a :E^ Y hO] _ ;%] %b  %a <%] %a =%E^ Y hO] �  �a ,E^ Y hO] a >b   a ?] �&a  @O� La A_ %_ %_ B%b  %_ %_ %a C%a Da Ekva Fa Ga >b   a H%b  %a I JY h� �yC�x�w���v�y 0 	checkdate 	checkDate�x �u��u �  �t�s�t 0 
lngseconds 
lngSeconds�s 0 recnode recNode�w  � �r�q�p�o�n�m�l�k�j�i�h�g�r 0 
lngseconds 
lngSeconds�q 0 recnode recNode�p 0 lngyear lngYear�o 0 lngmonth lngMonth�n 0 lngday lngDay�m 0 lnghour lngHour�l 0 lngmins lngMins�k 0 dtenew dteNew�j 0 lngyear1 lngYear1�i 0 	lngmonth1 	lngMonth1�h 0 lnghour1 lngHour1�g 0 lngmins1 lngMins1� 
�f�e�d�c�b�a�`�_�^�]�f 0 	alarmlist  
�e 
cobj�d �c 
�b 
year
�a 
mnth
�` 
hour
�_ 
min 
�^ 
day 
�] 
scnd�v ���,E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�Z[��/E�ZOb  �E�O�[�,\[�,\[�,\[�,\Z�vE[�k/E�Z[�l/E�Z[�m/E�Z[��/E�ZOk��,FO�� 
���,FY hO�� 
���,FY hO���,FO�� 
���,FY hO�� 
���,FY hOj��,FO�� �\��[�Z���Y�\ 0 
encodepath 
encodePath�[ �X��X �  �W�W 0 odoc oDoc�Z  � �V�U�V 0 odoc oDoc�U 0 strpath strPath� 
��T�S�R�Q��P�O�N�M
�T 
file
�S 
alis
�R 
psxp
�Q 
FTjs
�P 
FTop�O 	0 fpath  �N 
�M .FTsuevjSnull���     docu�Y "� � *�,�&�,E�O*����l� 	UU� �L��K�J���I�L (0 pointusertoplugins pointUserToPlugins�K �H��H �  �G�G 0 
lstmissing 
lstMissing�J  � 
�F�E�D�C�B�A�@�?�>�=�F 0 
lstmissing 
lstMissing�E 0 
lngmissing 
lngMissing�D 0 lstmenu lstMenu�C 0 	lngdigits 	lngDigits�B 0 i  �A 0 stritem strItem�@ 0 strmsg strMsg�? 0 	varchoice 	varChoice�> 0 	lngchoice 	lngChoice�= 0 dlm  � -�<�;�:�9�8�7�65�5�4CQ�3UY�2��1��0��/����.�-�,�+�*��)��(�'�&�%�$�#�"�!� �
�< 
leng
�; 
TEXT
�: 
cobj
�9 
reco�8 
0 padnum  
�7 
tab �6 0 name  �5 0 problem  
�4 
null�3 0 version  
�2 
spac�1 0 pl  �0 0 apl  
�/ 
lnfd
�. .miscactvnull��� ��� null
�- 
appr
�, 
prmp
�+ 
inSL
�* 
okbt
�) 
cnbt
�( 
empL
�' 
mlsl�& 
�% .gtqpchltns    @   @ ns  
�$ 
txdl
�# 
citm
�" 
long�! 0 url  
�  
strq
� .sysoexecTEXT���     TEXT�Ia��,E�OjvE�O��&�,E�O Rk�kh ��/�& 7)��l+ �%*�,%�%�%E�O*�,�  
��%E�Y ��%*�,%�%*�,%�%E�UO��6F[OY��O��&�%*a �l+ %�%*a �l+ %a %_ %_ %a %_ %�%b  %a %_ %_ %a %b  %_ %E�Oa  �*j O�a b   �%b  %a �a ��k/kva a a  a !a "ea #fa $ %E�O�f  jE�Y N)a &,�lvE[�k/E�Z[�l/)a &,FZO��k/a 'k/a (&E�O�)a &,FOa )b  �/a *,a +,%j ,O�UOP� �-������ 0 loadedplugins loadedPlugins� ��� �  �� 0 odoc oDoc�  � ��� 0 odoc oDoc� $0 lstloadedplugins lstloadedPlugins� G�B����
� 
FTjs
� 
FTop� 
0 needed  � 
� .FTsuevjSnull���     docu�  � � *����b  l� E�UUO�� �O������ 0 	changelog 	changeLog� ��� �  ���
� 0 dteoldalarm dteOldAlarm� 0 dtealarm dteAlarm�
 0 striso strISO�  � 
�	��������� �	 0 dteoldalarm dteOldAlarm� 0 dtealarm dteAlarm� 0 striso strISO� 0 rdelta rDelta� 0 strdirn strDirn� 0 blntime blnTime� 0 strmsg strMsg� 0 strhours strHours� 0 strmins strMins�  0 strprepn strPrepn� ��nr�������������������������
�� 
msng�� 0 abs  
�� 
days
�� 
time��
�� 
TEXT�� <
�� .misccurdldt    ��� null
�� 
shdt� Ǡ� ���E�O�j �E�Y �E�O*�k+ �E�O� d��,j  �E�Y ��,j  �E�OfE�Y hO� :*��"k+ �&E�O*��#k+ �"�&E�O��%�%E�O�� ��%�%E�Y hY hY �*��"k+ %�%E�O�E�Y a E�Oa E�Oa *j a ,%a %�%�%�%� ������������ 0 abs  �� ����� �  ���� 0 varn varN��  � ���� 0 varn varN�  �� �j �'Y �� ������������ 0 	unixepoch 	UnixEpoch��  ��  �  � ����������������
�� .misccurdldt    ��� null���
�� 
cobj
�� 
year
�� 
day 
�� 
time
�� 
mnth
�� .sysoGMT long   ��� null�� =*j   5�kjmvE[�k/*�,FZ[�l/*�,FZ[�m/*�,FZOk*�,FO*)j O*U� ��X���������� 
0 padnum  �� ����� �  ������ 0 lngnum lngNum�� 0 	lngdigits 	lngDigits��  � ���������� 0 lngnum lngNum�� 0 	lngdigits 	lngDigits�� 0 strnum strNum�� 0 lnggap lngGap� ����y
�� 
TEXT
�� 
leng�� *��&E�O���,E�O h�j�%E�O�kE�[OY��O�� ������������� 0 pl  �� ����� �  ������ 0 strword strWord�� 0 lng  ��  � ������ 0 strword strWord�� 0 lng  � ��� �k ��%Y �� ������������� 0 apl  �� ����� �  ������ 0 strword strWord�� 0 lng  ��  � ������ 0 strword strWord�� 0 lng  � ��� �l ��%Y � ascr  ��ޭ