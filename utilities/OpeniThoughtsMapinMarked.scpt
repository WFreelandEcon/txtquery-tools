FasdUAS 1.101.10   ��   ��    k             j     �� �� 0 ptitle pTitle  m        � 	 	 L O p e n   a c t i v e   i T h o u g h t s X   m a p   i n   M a r k e d   2   
  
 j    �� �� 0 pver pVer  m       �    0 . 2      l     ��������  ��  ��        l     ��������  ��  ��        l          j    �� �� *0 pblnpositionwindows pblnPositionWindows  m    ��
�� boovtrue  S M Set this to false to disable the window positioning at the end of the script     �   �   S e t   t h i s   t o   f a l s e   t o   d i s a b l e   t h e   w i n d o w   p o s i t i o n i n g   a t   t h e   e n d   o f   t h e   s c r i p t      l     ��������  ��  ��        j   	 �� �� 0 ph pH  m   	 
��
�� 
msng       j    �� !�� 0 py pY ! m    ��
�� 
msng    " # " l     ��������  ��  ��   #  $ % $ l    � &���� & O     � ' ( ' k    � ) )  * + * r     , - , 6   . / . 2   ��
�� 
pcap / E     0 1 0 1   	 ��
�� 
pnam 1 m     2 2 � 3 3  i t h o u g h t s x - o      ���� 0 lstproc lstProc +  4�� 4 Z    � 5 6���� 5 >    7 8 7 o    ���� 0 lstproc lstProc 8 J    ����   6 k    � 9 9  : ; : r    # < = < n    ! > ? > 4   !�� @
�� 
cwin @ m     ����  ? l    A���� A n     B C B 4    �� D
�� 
cobj D m    ����  C o    ���� 0 lstproc lstProc��  ��   = o      ���� 0 winthoughts winThoughts ;  E F E r   $ , G H G n   $ * I J I 1   ( *��
�� 
valL J l  $ ( K���� K n   $ ( L M L 4   % (�� N
�� 
attr N m   & ' O O � P P  A X D o c u m e n t M o   $ %���� 0 winthoughts winThoughts��  ��   H o      ���� 0 strurl strURL F  Q R Q l  - -��������  ��  ��   R  S T S I  - 6�� U��
�� .sysoexecTEXT���     TEXT U b   - 2 V W V m   - . X X � Y Y $ o p e n   - a   M a r k e d \   2   W n   . 1 Z [ Z 1   / 1��
�� 
strq [ o   . /���� 0 strurl strURL��   T  \�� \ Z   7 � ] ^���� ] o   7 <���� *0 pblnpositionwindows pblnPositionWindows ^ k   ? � _ _  ` a ` l  ? ?�� b c��   b } wset lngWidth to word 3 of (do shell script "defaults read /Library/Preferences/com.apple.windowserver | grep -w Width")    c � d d � s e t   l n g W i d t h   t o   w o r d   3   o f   ( d o   s h e l l   s c r i p t   " d e f a u l t s   r e a d   / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . w i n d o w s e r v e r   |   g r e p   - w   W i d t h " ) a  e f e l  ? ?�� g h��   g  yset lngHeight to word 3 of (do shell script "defaults read /Library/Preferences/com.apple.windowserver | grep -w Height")    h � i i � s e t   l n g H e i g h t   t o   w o r d   3   o f   ( d o   s h e l l   s c r i p t   " d e f a u l t s   r e a d   / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . w i n d o w s e r v e r   |   g r e p   - w   H e i g h t " ) f  j k j l  ? ?��������  ��  ��   k  l m l r   ? W n o n n  ? D p q p I   @ D�������� 0 displayresoln displayResoln��  ��   q  f   ? @ o J       r r  s t s o      ���� 0 lngwidth lngWidth t  u�� u o      ���� 0 	lngheight 	lngHeight��   m  v w v l  X X��������  ��  ��   w  x y x r   X c z { z \   X _ | } | o   X [���� 0 	lngheight 	lngHeight } m   [ ^����  { o      ���� 0 	lngheight 	lngHeight y  ~  ~ l  d d��������  ��  ��     � � � l  d d�� � ���   � ! set lngHalf to lngWidth / 2    � � � � 6 s e t   l n g H a l f   t o   l n g W i d t h   /   2 �  � � � r   d m � � � ^   d i � � � o   d g���� 0 lngwidth lngWidth � m   g h����  � o      ���� 0 lngthird lngThird �  � � � l  n n��������  ��  ��   �  � � � l  n n�� � ���   �   50/50    � � � �    5 0 / 5 0 �  � � � l  n n�� � ���   � a [tell oWin to tell window 1 to set {position, size} to {{lngHalf, 22}, {lngHalf, lngHeight}}    � � � � � t e l l   o W i n   t o   t e l l   w i n d o w   1   t o   s e t   { p o s i t i o n ,   s i z e }   t o   { { l n g H a l f ,   2 2 } ,   { l n g H a l f ,   l n g H e i g h t } } �  � � � l  n n�� � ���   � i ctell process "Marked 2" to tell window 1 to set {position, size} to {{0, 22}, {lngHalf, lngHeight}}    � � � � � t e l l   p r o c e s s   " M a r k e d   2 "   t o   t e l l   w i n d o w   1   t o   s e t   { p o s i t i o n ,   s i z e }   t o   { { 0 ,   2 2 } ,   { l n g H a l f ,   l n g H e i g h t } } �  � � � l  n n��������  ��  ��   �  � � � l  n n�� � ���   �   or 1/3 2/3    � � � �    o r   1 / 3   2 / 3 �  � � � O  n � � � � r   r � � � � J   r � � �  � � � J   r z � �  � � � o   r u���� 0 lngthird lngThird �  ��� � m   u x���� ��   �  ��� � J   z � � �  � � � ]   z  � � � o   z }���� 0 lngthird lngThird � m   } ~����  �  ��� � o    ����� 0 	lngheight 	lngHeight��  ��   � J       � �  � � � 1   � ���
�� 
posn �  ��� � 1   � ���
�� 
ptsz��   � o   n o���� 0 winthoughts winThoughts �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � 6 � � � � � 2  � ���
�� 
pcap � E   � � � � � 1   � ���
�� 
pnam � m   � � � � � � �  m a r k e d   2 � o      ���� 0 lstproc lstProc �  ��� � Z   � � � ����� � >  � � � � � o   � ����� 0 lstproc lstProc � J   � �����   � k   � � � �  � � � r   � � � � � n   � � � � � 4  � ��� �
�� 
cwin � m   � �����  � l  � � ����� � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 lstproc lstProc��  ��   � o      ���� 0 	winmarked 	winMarked �  ��� � O  � � � � � r   � � � � � J   � � � �  � � � J   � � � �  � � � m   � �����   �  ��� � m   � ����� ��   �  ��� � J   � � � �  � � � o   � ����� 0 lngthird lngThird �  ��� � o   � ��� 0 	lngheight 	lngHeight��  ��   � J       � �  � � � 1   � ��~
�~ 
posn �  ��} � 1   � ��|
�| 
ptsz�}   � o   � ��{�{ 0 	winmarked 	winMarked��  ��  ��  ��  ��  ��  ��  ��  ��  ��   ( m      � ��                                                                                  sevs  alis    �  Macintosh HD               �9�SH+  �4�System Events.app                                              �O�50�        ����  	                CoreServices    �9�S      �5"�    �4��4��4�  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   %  � � � l     �z�y�x�z  �y  �x   �  ��w � i     � � � I      �v�u�t�v 0 displayresoln displayResoln�u  �t   � k     � � �  � � � Z     � � ��s�r � G      � � � l     ��q�p � =     � � � o     �o�o 0 ph pH � m    �n
�n 
msng�q  �p   � l  
  ��m�l � =  
  � � � o   
 �k�k 0 py pY � m    �j
�j 
msng�m  �l   � k    �    r    - J      n   	 1    �i
�i 
txdl	  f     
�h
 m     �  R e s o l u t i o n�h   J        o      �g�g 0 dlm   �f n      1   ) +�e
�e 
txdl  f   ( )�f    r   . 7 n   . 5 2  3 5�d
�d 
citm l  . 3�c�b I  . 3�a�`
�a .sysoexecTEXT���     TEXT m   . / � D s y s t e m _ p r o f i l e r   S P D i s p l a y s D a t a T y p e�`  �c  �b   o      �_�_ 0 lstdisplays lstDisplays  l  8 8�^�]�\�^  �]  �\     Y   8 \!�["#�Z! k   E W$$ %&% r   E K'(' n   E I)*) 4   F I�Y+
�Y 
cobj+ o   G H�X�X 0 i  * o   E F�W�W 0 lstdisplays lstDisplays( o      �V�V 0 strline strLine& ,�U, Z  L W-.�T�S- E   L O/0/ o   L M�R�R 0 strline strLine0 m   M N11 �22 " M a i n   D i s p l a y :   Y e s.  S   R S�T  �S  �U  �[ 0 i  " m   ; <�Q�Q # n   < @343 1   = ?�P
�P 
leng4 o   < =�O�O 0 lstdisplays lstDisplays�Z    565 r   ] b787 1   ] ^�N
�N 
spac8 n     9:9 1   _ a�M
�M 
txdl:  f   ^ _6 ;<; r   c h=>= n   c f?@? 2  d f�L
�L 
citm@ o   c d�K�K 0 strline strLine> o      �J�J 0 lstparts lstParts< ABA r   i nCDC o   i j�I�I 0 dlm  D n     EFE 1   k m�H
�H 
txdlF  f   j kB GHG r   o yIJI n   o sKLK 4   p s�GM
�G 
cobjM m   q r�F�F L o   o p�E�E 0 lstparts lstPartsJ o      �D�D 0 ph pHH NON r   z �PQP n   z ~RSR 4   { ~�CT
�C 
cobjT m   | }�B�B S o   z {�A�A 0 lstparts lstPartsQ o      �@�@ 0 py pYO U�?U l  � ��>�=�<�>  �=  �<  �?  �s  �r   � V�;V L   � �WW J   � �XX YZY o   � ��:�: 0 ph pHZ [�9[ o   � ��8�8 0 py pY�9  �;  �w       �7\  �6]^_`abc]�5de�7  \ �4�3�2�1�0�/�.�-�,�+�*�)�(�'�4 0 ptitle pTitle�3 0 pver pVer�2 *0 pblnpositionwindows pblnPositionWindows�1 0 ph pH�0 0 py pY�/ 0 displayresoln displayResoln
�. .aevtoappnull  �   � ****�- 0 lstproc lstProc�, 0 winthoughts winThoughts�+ 0 strurl strURL�* 0 lngwidth lngWidth�) 0 	lngheight 	lngHeight�( 0 lngthird lngThird�' 0 	winmarked 	winMarked
�6 boovtrue] �ff  2 5 6 0^ �gg  1 6 0 0_ �& ��%�$hi�#�& 0 displayresoln displayResoln�%  �$  h �"�!� ���" 0 dlm  �! 0 lstdisplays lstDisplays�  0 i  � 0 strline strLine� 0 lstparts lstPartsi �������1��
� 
msng
� 
bool
� 
txdl
� 
cobj
� .sysoexecTEXT���     TEXT
� 
citm
� 
leng
� 
spac� �# �b  � 
 b  � �& u)�,�lvE[�k/E�Z[�l/)�,FZO�j �-E�O #l��,Ekh ��/E�O�� Y h[OY��O�)�,FO��-E�O�)�,FO��l/Ec  O���/Ec  OPY hOb  b  lv` �j��kl�
� .aevtoappnull  �   � ****j k     �mm  $��  �  �  k  l  ��n� 2����
�	 O�� X������� ���� ���
� 
pcapn  
� 
pnam� 0 lstproc lstProc
� 
cobj
� 
cwin�
 0 winthoughts winThoughts
�	 
attr
� 
valL� 0 strurl strURL
� 
strq
� .sysoexecTEXT���     TEXT� 0 displayresoln displayResoln� 0 lngwidth lngWidth� 0 	lngheight 	lngHeight� �  0 lngthird lngThird
�� 
posn
�� 
ptsz�� 0 	winmarked 	winMarked� �� �*�-�[�,\Z�@1E�O�jv ���k/�k/E�O���/�,E�O���,%j Ob   �)j+ E[�k/E` Z[�l/E` ZO_ a E` O_ m!E` O� -_ a lv_ l _ lvlvE[�k/*a ,FZ[�l/*a ,FZUO*�-�[�,\Za @1E�O�jv ?��k/�k/E` O_  )ja lv_ _ lvlvE[�k/*a ,FZ[�l/*a ,FZUY hY hY hUa ��o�� o  pp qq  ���r
�� 
pcapr �ss  M a r k e d   2b tt u��vu  ���w
�� 
pcapw �xx  i T h o u g h t s X
�� 
cwinv �yy * P o l y L a n g L e v e l s - 1 . i t m zc �zz � f i l e : / / / U s e r s / r o b i n t r e w / D o c u m e n t s / A R C H I V E / W m i n P o l y L a n g . d t B a s e 2 / F i l e s . n o i n d e x / i t m z / 0 / P o l y L a n g L e v e l s - 1 . i t m z�5*d @�������e {{ |��}|  ���~
�� 
pcap~ �  M a r k e d   2
�� 
cwin} ��� * P o l y L a n g L e v e l s - 1 . i t m zascr  ��ޭ