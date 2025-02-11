FasdUAS 1.101.10   ��   ��    k             l     ��  ��     !/usr/bin/osascript     � 	 	 & ! / u s r / b i n / o s a s c r i p t   
  
 l     ��������  ��  ��        l      ��  ��   {u
For details and documentation:
http://github.com/inkling/Subliminal

Copyright 2013 Inkling Systems, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
     �  � 
 F o r   d e t a i l s   a n d   d o c u m e n t a t i o n : 
 h t t p : / / g i t h u b . c o m / i n k l i n g / S u b l i m i n a l 
 
 C o p y r i g h t   2 0 1 3   I n k l i n g   S y s t e m s ,   I n c . 
 
 L i c e n s e d   u n d e r   t h e   A p a c h e   L i c e n s e ,   V e r s i o n   2 . 0   ( t h e   " L i c e n s e " ) ; 
 y o u   m a y   n o t   u s e   t h i s   f i l e   e x c e p t   i n   c o m p l i a n c e   w i t h   t h e   L i c e n s e . 
 Y o u   m a y   o b t a i n   a   c o p y   o f   t h e   L i c e n s e   a t 
 
 	 h t t p : / / w w w . a p a c h e . o r g / l i c e n s e s / L I C E N S E - 2 . 0 
 
 U n l e s s   r e q u i r e d   b y   a p p l i c a b l e   l a w   o r   a g r e e d   t o   i n   w r i t i n g ,   s o f t w a r e 
 d i s t r i b u t e d   u n d e r   t h e   L i c e n s e   i s   d i s t r i b u t e d   o n   a n   " A S   I S "   B A S I S , 
 W I T H O U T   W A R R A N T I E S   O R   C O N D I T I O N S   O F   A N Y   K I N D ,   e i t h e r   e x p r e s s   o r   i m p l i e d . 
 S e e   t h e   L i c e n s e   f o r   t h e   s p e c i f i c   l a n g u a g e   g o v e r n i n g   p e r m i s s i o n s   a n d 
 l i m i t a t i o n s   u n d e r   t h e   L i c e n s e . 
      l     ��������  ��  ��        l      ��  ��   ��
Waits for an authorization dialog to appear when instruments is launched, 
then dismisses it by entering the specified login password.

This is a workaround for http://openradar.appspot.com/radar?id=1544403.

This script requires that GUI scripting be enabled.
To enable GUI scripting:

    - If the test machine runs Mac OS X 10.8 Mountain Lion,
	  open System Preferences and check "Enable Access for Assistive Devices"
	  in the Accessibility preference pane.
	- If the test machine runs Mac OS X 10.9 
	  Mavericks, open System Preferences and click on "Security & Privacy".
	  Select "Accessibility" and drag Terminal.app from Applications/Utilities 
	  into the list. Do not forget to check the box.

To use this script, put it into the background right before 
instruments is launched:

	osascript authorize_instruments "$LOGIN_PASSWORD" &
	# Kill the process when the parent script ends
	trap "kill $!" SIGINT SIGTERM EXIT

	xcrun instruments ...

     �  z 
 W a i t s   f o r   a n   a u t h o r i z a t i o n   d i a l o g   t o   a p p e a r   w h e n   i n s t r u m e n t s   i s   l a u n c h e d ,   
 t h e n   d i s m i s s e s   i t   b y   e n t e r i n g   t h e   s p e c i f i e d   l o g i n   p a s s w o r d . 
 
 T h i s   i s   a   w o r k a r o u n d   f o r   h t t p : / / o p e n r a d a r . a p p s p o t . c o m / r a d a r ? i d = 1 5 4 4 4 0 3 . 
 
 T h i s   s c r i p t   r e q u i r e s   t h a t   G U I   s c r i p t i n g   b e   e n a b l e d . 
 T o   e n a b l e   G U I   s c r i p t i n g : 
 
         -   I f   t h e   t e s t   m a c h i n e   r u n s   M a c   O S   X   1 0 . 8   M o u n t a i n   L i o n , 
 	     o p e n   S y s t e m   P r e f e r e n c e s   a n d   c h e c k   " E n a b l e   A c c e s s   f o r   A s s i s t i v e   D e v i c e s " 
 	     i n   t h e   A c c e s s i b i l i t y   p r e f e r e n c e   p a n e . 
 	 -   I f   t h e   t e s t   m a c h i n e   r u n s   M a c   O S   X   1 0 . 9   
 	     M a v e r i c k s ,   o p e n   S y s t e m   P r e f e r e n c e s   a n d   c l i c k   o n   " S e c u r i t y   &   P r i v a c y " . 
 	     S e l e c t   " A c c e s s i b i l i t y "   a n d   d r a g   T e r m i n a l . a p p   f r o m   A p p l i c a t i o n s / U t i l i t i e s   
 	     i n t o   t h e   l i s t .   D o   n o t   f o r g e t   t o   c h e c k   t h e   b o x . 
 
 T o   u s e   t h i s   s c r i p t ,   p u t   i t   i n t o   t h e   b a c k g r o u n d   r i g h t   b e f o r e   
 i n s t r u m e n t s   i s   l a u n c h e d : 
 
 	 o s a s c r i p t   a u t h o r i z e _ i n s t r u m e n t s   " $ L O G I N _ P A S S W O R D "   & 
 	 #   K i l l   t h e   p r o c e s s   w h e n   t h e   p a r e n t   s c r i p t   e n d s 
 	 t r a p   " k i l l   $ ! "   S I G I N T   S I G T E R M   E X I T 
 
 	 x c r u n   i n s t r u m e n t s   . . . 
 
      l     ��������  ��  ��        i         I     �� ��
�� .aevtoappnull  �   � ****  o      ���� 0 argv  ��    k     n      !   r      " # " n      $ % $ 4    �� &
�� 
cobj & m    ����  % o     ���� 0 argv   # o      ���� 0 loginpassword loginPassword !  ' ( ' l   ��������  ��  ��   (  ) * ) l   �� + ,��   + + % ensure that GUI scripting is enabled    , � - - J   e n s u r e   t h a t   G U I   s c r i p t i n g   i s   e n a b l e d *  . / . O     0 1 0 Z     2 3���� 2 H     4 4 1    ��
�� 
uien 3 k     5 5  6 7 6 l   �� 8 9��   8 = 7 returning this string causes it to be logged to stdout    9 � : : n   r e t u r n i n g   t h i s   s t r i n g   c a u s e s   i t   t o   b e   l o g g e d   t o   s t d o u t 7  ;�� ; L     < < m     = = � > >� E r r o r :   G U I   s c r i p t i n g   i s   n o t   e n a b l e d .   I f   t h i s   m a c h i n e   r u n s   M a c   O S   X   1 0 . 8   M o u n t a i n   L i o n ,   o p e n   S y s t e m   P r e f e r e n c e s   a n d   c h e c k   ' E n a b l e   A c c e s s   f o r   A s s i s t i v e   D e v i c e s '   i n   t h e   A c c e s s i b i l i t y   p r e f e r e n c e   p a n e .   I f   t h i s   m a c h i n e   r u n s   M a c   O S   X   1 0 . 9   M a v e r i c k s ,   o p e n   S y s t e m   P r e f e r e n c e s   a n d   c l i c k   o n   ' S e c u r i t y   &   P r i v a c y ' .   S e l e c t   ' A c c e s s i b i l i t y '   a n d   d r a g   T e r m i n a l . a p p   f r o m   A p p l i c a t i o n s / U t i l i t i e s   i n t o   t h e   l i s t ,   a n d   d o   n o t   f o r g e t   t o   c h e c k   t h e   b o x .   O n c e   G U I   s c r i p t i n g   i s   e n a b l e d ,   r u n   ` a u t h o r i z e _ i n s t r u m e n t s `   a g a i n . 
 	 	 	 	 	      ��  ��  ��   1 m     ? ?�                                                                                  sevs  alis    v  SSD                        �j�H+   �9�System Events.app                                               ���A`�        ����  	                CoreServices    �jt�      �A�9     �9� �9� �9�  4SSD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p    S S D  -System/Library/CoreServices/System Events.app   / ��   /  @ A @ l   ��������  ��  ��   A  B C B l   �� D E��   D J D begin with a short delay, to catch the prompt under the assumption     E � F F �   b e g i n   w i t h   a   s h o r t   d e l a y ,   t o   c a t c h   t h e   p r o m p t   u n d e r   t h e   a s s u m p t i o n   C  G H G l   �� I J��   I F @ that instruments will be launched immediately after this is run    J � K K �   t h a t   i n s t r u m e n t s   w i l l   b e   l a u n c h e d   i m m e d i a t e l y   a f t e r   t h i s   i s   r u n H  L M L I   �� N��
�� .sysodelanull��� ��� nmbr N m     O O @      ��   M  P�� P O     n Q R Q k   $ m S S  T U T V   $ ; V W V k   1 6 X X  Y Z Y l  1 1�� [ \��   [ H B long delay: it is likely that the prompt will not appear this run    \ � ] ] �   l o n g   d e l a y :   i t   i s   l i k e l y   t h a t   t h e   p r o m p t   w i l l   n o t   a p p e a r   t h i s   r u n Z  ^ _ ^ l  1 1�� ` a��   ` ; 5 and we don't want to impede instruments' performance    a � b b j   a n d   w e   d o n ' t   w a n t   t o   i m p e d e   i n s t r u m e n t s '   p e r f o r m a n c e _  c�� c I  1 6�� d��
�� .sysodelanull��� ��� nmbr d m   1 2 e e @$      ��  ��   W H   ( 0 f f E  ( / g h g n   ( - i j i 1   + -��
�� 
pnam j 2  ( +��
�� 
prcs h m   - . k k � l l  S e c u r i t y A g e n t U  m�� m O   < m n o n k   C l p p  q r q r   C V s t s o   C D���� 0 loginpassword loginPassword t n       u v u 1   Q U��
�� 
valL v n   D Q w x w 4   N Q�� y
�� 
txtf y m   O P����  x n   D N z { z 4   K N�� |
�� 
scra | m   L M����  { n   D K } ~ } 4   H K�� 
�� 
sgrp  m   I J����  ~ 4   D H�� �
�� 
cwin � m   F G����  r  � � � I  W i�� ���
�� .prcsclicnull��� ��� uiel � n   W e � � � 4   ^ e�� �
�� 
butT � m   a d � � � � �  T a k e   C o n t r o l � n   W ^ � � � 4   [ ^�� �
�� 
sgrp � m   \ ]����  � 4   W [�� �
�� 
cwin � m   Y Z���� ��   �  ��� � l  j l � � � � L   j l����   � A ; just so the script doesn't print the last command executed    � � � � v   j u s t   s o   t h e   s c r i p t   d o e s n ' t   p r i n t   t h e   l a s t   c o m m a n d   e x e c u t e d��   o 4   < @�� �
�� 
prcs � m   > ? � � � � �  S e c u r i t y A g e n t��   R m     ! � ��                                                                                  sevs  alis    v  SSD                        �j�H+   �9�System Events.app                                               ���A`�        ����  	                CoreServices    �jt�      �A�9     �9� �9� �9�  4SSD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p    S S D  -System/Library/CoreServices/System Events.app   / ��  ��     ��� � l     ��������  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ���� � ���
�� .aevtoappnull  �   � ****�� 0 argv  ��   � ���� 0 argv   � ���� ?�� = O������ k e ������������� ���
�� 
cobj�� 0 loginpassword loginPassword
�� 
uien
�� .sysodelanull��� ��� nmbr
�� 
prcs
�� 
pnam
�� 
cwin
�� 
sgrp
�� 
scra
�� 
txtf
�� 
valL
�� 
butT
�� .prcsclicnull��� ��� uiel�� o��k/E�O� *�, �Y hUO�j O� K h*�-�,��j [OY��O*��/ +�*�k/�k/�k/�l/a ,FO*�k/�l/a a /j OhUUascr  ��ޭ