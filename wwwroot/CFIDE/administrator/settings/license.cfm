����  -1 
SourceFile )/CFIDE/administrator/settings/license.cfm cflicense2ecfm1381679102  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   NOT_VALID_LICENSE Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   ADMINSUBMIT   	   ENTER_LICENSE   	    REQUEST " " 	  $ FORM & & 	  ( AERRORMESSAGES * * 	  , CHECKCSRFTOKEN . . 	  0 BERRORSEXIST 2 2 	  4 GETCSRFTOKEN 6 6 	  8 TOKEN : : 	  < EDITION > > 	  @ com.macromedia.SourceModTime  R^�� pageContext #Lcoldfusion/runtime/NeoPageContext; E F	  G getOut ()Ljavax/servlet/jsp/JspWriter; I J javax/servlet/jsp/JspContext L
 M K parent Ljavax/servlet/jsp/tagext/Tag; O P	  Q LOCALE S REQUEST.LOCALE U en W checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V Y Z
  [ java/lang/String ] 
LOCALEFILE _ java/lang/StringBuffer a resources/settings_ c (Ljava/lang/String;)V  e
 b f _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; h i
  j _String &(Ljava/lang/Object;)Ljava/lang/String; l m coldfusion/runtime/Cast o
 p n append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; r s
 b t .cfm v toString ()Ljava/lang/String; x y java/lang/Object {
 | z _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V ~ 
  � false � set (Ljava/lang/Object;)V � � coldfusion/runtime/Variable �
 � � _setCurrentLineNo (I)V � �
  � ArrayNew (I)Ljava/util/List; � �
  � _Array 2(Ljava/lang/Object;)Lcoldfusion/runtime/FastArray; � �
 p � setArray !(Lcoldfusion/runtime/FastArray;)V � �
 � � (class$coldfusion$tagext$lang$ImportedTag Ljava/lang/Class; "coldfusion.tagext.lang.ImportedTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � "coldfusion/tagext/lang/ImportedTag � l10n � 
../cftags/ � admin � setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V � �
 � � &coldfusion/runtime/AttributeCollection � id � not_valid_license � var � ([Ljava/lang/Object;)V  �
 � � setAttributecollection (Ljava/util/Map;)V � �  coldfusion/tagext/lang/ModuleTag �
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � 
doStartTag ()I � �
 � � 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � "The license entered was not valid. � write � e java/io/Writer �
 � � doAfterBody � �
 � � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � doEndTag � � #javax/servlet/jsp/tagext/TagSupport �
 � � doCatch (Ljava/lang/Throwable;)V � �
 � � 	doFinally � 
 � � isDefinedCanonicalVariable  (Lcoldfusion/runtime/Variable;)Z � �
  �   � 	CSRFTOKEN � FORM.CSRFTOKEN �  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z � �
  � _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � checkCSRFToken _autoscalarize �
  SETTINGSTABKEYNAME 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;	
 
 FORM.ADMINSUBMIT NEW_LICENSE Trim &(Ljava/lang/String;)Ljava/lang/String;
  LICENSE _resolve i
  
isValidKey _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
  _boolean (Ljava/lang/Object;)Z 
 p! 1# ArrayLen (Ljava/lang/Object;)I%&
 ' _Object (D)Ljava/lang/Object;)*
 p+ _arraySetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V-.
 / setLicenseKey1 license_pagename3 pagename5 Licensing Settings7 enter_license9 jscript; true= Enter a license number.? 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTagBA �	 D !coldfusion/tagext/lang/IncludeTagF ../header.cfmH setTemplateJ e
GK _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)ZMN
 O $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTagRQ �	 T coldfusion/tagext/io/OutputTagV
W � 
Y _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V[\
 ] )class$coldfusion$tagext$html$form$FormTag #coldfusion.tagext.html.form.FormTag`_ �	 b #coldfusion/tagext/html/form/FormTagd cfformf actionh CGIj SCRIPT_NAMEl _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;no
 p 	setActionr e
es postu 	setMethodw e
ex
e � 2
	
<input type="hidden" name="csrftoken" value="{ getCSRFToken} ">

 ../include/buttonbar.cfm� ../include/margintop.cfm� ../include/errors.cfm� "


<p>
<span class="sentance">� license_intro� �
		Use the form below to enter a new serial number. Depending on the serial
		number you enter, various features will be turned on or turned off.
		Your current edition is:
� 
<b>� EncodeForHTML�
 � 5</b>
</span>
</p>

<p>
<span class="sentance">
� new_license� New License�  � *class$coldfusion$tagext$html$form$InputTag $coldfusion.tagext.html.form.InputTag�� �	 � $coldfusion/tagext/html/form/InputTag� text� setType� e
�� setMaxLength� �
�� � e
�� setValue� e
�� cfinput� message� 
setMessage� e
�� size� 35� class� label�
� � 
</span>
</p>		


� ../include/marginbottom.cfm�
e �
e �
e �
e �
W � coldfusion/tagext/QueryLoop�
� �
� �
W � 

� ../footer.cfm� metaData Ljava/lang/Object;��	 � getMetadata ()Ljava/lang/Object; this Lcflicense2ecfm1381679102; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage out Ljavax/servlet/jsp/JspWriter; value module1 $Lcoldfusion/tagext/lang/ImportedTag; mode1 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 module2 mode2 t14 t15 t16 t17 t18 t19 module3 mode3 t22 t23 t24 t25 t26 t27 include4 #Lcoldfusion/tagext/lang/IncludeTag; output14  Lcoldfusion/tagext/io/OutputTag; mode14 form13 %Lcoldfusion/tagext/html/form/FormTag; mode13 include5 t34 include6 t36 include7 t38 module8 mode8 t41 t42 t43 t44 t45 t46 module9 mode9 t49 t50 t51 t52 t53 t54 input10 &Lcoldfusion/tagext/html/form/InputTag; t56 	include11 t58 	include12 t60 t61 t62 t63 t64 t65 t66 t67 t68 t69 t70 	include15 LineNumberTable java/lang/Throwable. <clinit> 1                      "     &     *     .     2     6     :     >     � �   A �   Q �   _ �   � �   ��    �� �   "     �Ӱ   �       ��      �   �     �*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )**++,� � -**/+,� � 1**3+,� � 5**7+,� � 9**;+,� � =**?+,� � A�   �        ���     ���    ���  �� �  �  H  	�*� H� NL*� RN**� %TVX� \*#� ^Y`S� bYd� g*#� ^YTS� k� q� uw� u� }� �*� 5�� �*� -*� �*� �� �� �*� �-� �� �:*� ����� �� �Y� |Y�SY�SY�SY�S� �� �� �� �Y6� 5*+� �L+ֶ �� ޚ��� � :� �:*+� �L�� �� :� #�� � #:		� � � :
� 
�:� �**� � � i*� =�� �**� )��� �� *� =*'� ^Y�S� k� �*� �**� 1� *� |Y**� =�SY*#� ^YS� kS�W**� )� �� �*'� ^YS*#� �*'� ^YS� k� q�� �*$� �**#� ^YS�� |Y*'� ^YS� kS��"�� >*� 5$� �**� -� |Y*&� �**� -��(�c�,S**� ��0� 8*(� �**#� ^YS�2� |Y*'� ^YS� kS�W*� A*#� ^YSY?S� k� �*� �-� �� �:*3� ����� �� �Y� |Y�SY4SY�SY6S� �� �� �� �Y6� 6*+� �L+8� �� ޚ��� � :� �:*+� �L�� �� :� #�� � #:� � � :� �:� �*� �-� �� �:*4� ����� �� �Y� |Y�SY:SY�SY:SY<SY>S� �� �� �� �Y6� 6*+� �L+@� �� ޚ��� � :� �:*+� �L�� �� :� #�� � #:� � � :� �:� �*�E-� ��G:*5� �I�L� ��P� �*�U-� ��W:*7� �� ��XY6��*+Z�^*�c� ��e:*8� �gi*k� ^YmS� k� q�q�tv�y� ��zY6 �
* +� �L+|� �+*:� �**� 9� ~*� |Y*#� ^YS� kS�� q� �+�� �*�E� ��G:!*<� �!��L!� �!�P� :"�����"�*+Z�^*�E� ��G:#*=� �#��L#� �#�P� :$�?�z��$�*+Z�^*�E� ��G:%*>� �%��L%� �%�P� :&���7�|&�+�� �*� �� �� �:'*B� �'���� �'� �Y� |Y�SY�S� �� �'� �'� �Y6(� 6*'(+� �L+�� �'� ޚ��� � :)� )�:**(+� �L�*'� �� :+� ,�Y����+�� � #:,',� � � :-� -�:.'� �.+�� �+*G� �**� A�� q��� �+�� �*� �	� �� �:/*M� �/���� �/� �Y� |Y�SY�S� �� �/� �/� �Y60� 6*/0+� �L+�� �/� ޚ��� � :1� 1�:2*0+� �L�2/� �� :3� ,�q����3�� � #:4/4� � � :5� 5�:6/� �6*+��^*��
� ���:7*M� �7���7&��7���7���7��**� !�� q�q��7� �Y� |Y�SY�SY�SY�S� ���7� �7�P� :8� �� �/8�+�� �*�E� ��G:9*R� �9��L9� �9�P� ::� m� �� �:�*+Z�^*�E� ��G:;*S� �;��L;� �;�P� :<� *� e� �<�*+Z�^�� � � :=� =�:>* +� �L�>��� :?� &� k?�� � #:@@�Ĩ � :A� A�:B�ũB*+Z�^�ƚ�W��� :C� #C�� � #:DD�ʨ � :E� E�:F�˩F*+Ͷ^*�E-� ��G:G*W� �G϶LG� �G�P� �� ` � � �/ � � �/ �/
/ �/
//!/�//�8D/>AD/�8S/>AS/DPS/SXS/���/���/�//�"/"/"/"'"/?[^/^c^/4��/���/4��/���/���/���/'CF/FKF/o{/ux{/o�/ux�/{��/���/�^�/d��/���/���/�o�/u1�/7s�/y��/���/���/�^	/d�	/��	/��	/�o	/u1	/7s	/y�	/��	/��	/�^	/d�	/��	/��	/�o	/u1	/7s	/y�	/��	/��	/			/			/z^	I/d�	I/��	I/��	I/�o	I/u1	I/7s	I/y�	I/��	I/�	=	I/	C	F	I/z^	X/d�	X/��	X/��	X/�o	X/u1	X/7s	X/y�	X/��	X/�	=	X/	C	F	X/	I	U	X/	X	]	X/ �  � H  	���    	���   	���   	� O P   	���   	���   	���   	���   	���   	��� 	  	��� 
  	���   	���   	���   	���   	���   	���   	���   	���   	���   	���   	���   	���   	���   	���   	���   	���   	���   	���   	��    	��   	�   	��    	�� !  	�� "  	�� #  	�� $  	�	� %  	�
� &  	�� '  	�� (  	�� )  	�� *  	�� +  	�� ,  	�� -  	�� .  	�� /  	�� 0  	�� 1  	�� 2  	�� 3  	�� 4  	�� 5  	�� 6  	� 7  	�� 8  	�� 9  	�� :  	� � ;  	�!� <  	�"� =  	�#� >  	�$� ?  	�%� @  	�&� A  	�'� B  	�(� C  	�)� D  	�*� E  	�+� F  	�,� G-  n �       +  +  0  0  0  0  E  E  '  '  '  '      T  T  T  T  P  d  d  c  c  c  c  Y  P  �  �  �  �  n . . . . - - < < < < 8 B B B B F F H H A A T T T T P A l l ~ ~ � � l l l - - � "� "� "� "� "� "� "� "� "� "� #� #� #� #� #� #� #� #� #� #� $� $� $� $� $� $� $� $ % % % % % %1 &1 &1 &1 &1 &1 &= &= &1 &1 &C &C &C &C &  &  &q (q (W (W (W (W (Q '� $� "� /� /� /� /� /� /� 3� 3� 3� 3� 3� 4� 4� 4� 4� 4� 4d 4I 5I 53 5� 8� 8� 8� 8� 8� 8� :� :	 :	 :� :� :� :� :� :A <A <* <� =� =l =� >� >� >$ B$ B� B� G� G� G� G� G� G� G� G� G M M� M� M� M� M� M� M� M� M� M� M� M M M M M� MV RV R> R� S� S� S� 8_ 7	� W	� W	q W       �   #     *� 
�   �       ��   0  �   Y     ;�� �� �C� ��ES� ��Ua� ��c�� ���� �Y� |� ��ӱ   �       ;��         B    C