����  -� 
SourceFile N/CFIDE/administrator/archives/wizards/archivewizard_page_veritycollections.cfm 5cfarchivewizard_page_veritycollections2ecfm1490760458  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   ARCHIVENAME Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   PATH   	   DESELECT_ALL   	    FORM " " 	  $ SELECTALLSOLRCOLLECTIONS & & 	  ( DESELECTALLSOLRCOLLECTIONS * * 	  , COLLECTIONS . . 	  0 SOLRCOLLECTIONS 2 2 	  4 	ISSAFEURL 6 6 	  8 SOLRCOLLECTIONNAME : : 	  < 
VERITYLIST > > 	  @ NAME B B 	  D COLLECTIONNAME F F 	  H DESELECTALLVERITYCOLLECTIONS J J 	  L SELECTALLVERITYCOLLECTIONS N N 	  P REQUEST R R 	  T SELECTC V V 	  X 	URLENCHAR Z Z 	  \ 	DESELECTC ^ ^ 	  ` 
SELECT_ALL b b 	  d ACOLLECTIONS f f 	  h GETCSRFTOKEN j j 	  l com.macromedia.SourceModTime  R^�! pageContext #Lcoldfusion/runtime/NeoPageContext; q r	  s getOut ()Ljavax/servlet/jsp/JspWriter; u v javax/servlet/jsp/JspContext x
 y w parent Ljavax/servlet/jsp/tagext/Tag; { |	  } 'class$coldfusion$tagext$lang$IncludeTag Ljava/lang/Class; !coldfusion.tagext.lang.IncludeTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � �  �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � !coldfusion/tagext/lang/IncludeTag � _setCurrentLineNo (I)V � �
  � controludfs.cfm � setTemplate (Ljava/lang/String;)V � �
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � LOCALE � REQUEST.LOCALE � en � checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V � �
  � java/lang/String � 
LOCALEFILE � java/lang/StringBuffer � resources/archives_ �  �
 � � _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 � � .cfm � toString ()Ljava/lang/String; � � java/lang/Object �
 � � _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � WHERETO � FORM.WHERETO �  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z � �
  � CAR � ARCHIVES � _resolve � �
  � URL � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
  � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � VERITYCOLLECTIONS � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
  � clear � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � isDefinedCanonicalVariable  (Lcoldfusion/runtime/Variable;)Z � �
  � _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � ListToArray $(Ljava/lang/String;)Ljava/util/List; � 
  _Array 2(Ljava/lang/Object;)Lcoldfusion/runtime/FastArray;
 � setArray !(Lcoldfusion/runtime/FastArray;)V coldfusion/runtime/Variable

	 addAll _get �
  selectAllVerityCollections 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;
  selectAllSolrCollections deSelectAllVerityCollections deSelectAllSolrCollections NEXTSTEP FORM.NEXTSTEP  _Object (Z)Ljava/lang/Object;"#
 �$ _boolean (Ljava/lang/Object;)Z&'
 �( 	isSafeURL* 'class$coldfusion$tagext$net$LocationTag !coldfusion.tagext.net.LocationTag-, �	 / !coldfusion/tagext/net/LocationTag1 setAddtoken3 �
24 
cflocation6 url8 _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;:;
 < setUrl> �
2? *coldfusion/runtime/TransientVariableHolderA &(Lcoldfusion/runtime/NeoPageContext;)V C
BD ,class$coldfusion$tagext$search$CollectionTag &coldfusion.tagext.search.CollectionTagGF �	 I &coldfusion/tagext/search/CollectionTagK LISTM 	setActionO �
LP collectionsR setNameT �
LU verityW 	setEngineY �
LZ unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;\] coldfusion/runtime/NeoException_
`^ t22 [Ljava/lang/String; Anydbc	 f findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)Ihi
`j CFCATCHl bind '(Ljava/lang/String;Ljava/lang/Object;)Vno
Bp 	name,pathr QueryNew /(Ljava/lang/String;)Lcoldfusion/sql/QueryTable;tu
 v set (Ljava/lang/Object;)Vxy
z unbind| 
B} solrcollections solr� t23�c	 � (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag�� �	 � "coldfusion/tagext/lang/ImportedTag� l10n� ../../cftags/� admin� :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)VT�
�� &coldfusion/runtime/AttributeCollection� id� archive_avc� var� title� ([Ljava/lang/Object;)V �
�� setAttributecollection (Ljava/util/Map;)V��  coldfusion/tagext/lang/ModuleTag�
�� 
doStartTag ()I��
�� 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;��
 � Archive Solr Collection� write� � java/io/Writer�
�� doAfterBody��
�� _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;��
 � doEndTag�� #javax/servlet/jsp/tagext/TagSupport�
�� doCatch (Ljava/lang/Throwable;)V��
�� 	doFinally� 
�� archivewizard_header.cfm� $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag�� �	 � coldfusion/tagext/io/OutputTag�
�� M

<table border="0" cellpadding="1" cellspacing="0" width="100%" bgcolor="#� 
GRAYMEDIUM��"><tr><td>
<table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="white">
<tr valign="top">
	<td height="350">
		<table border="0" cellpadding="0" cellspacing="0" width="20" bgcolor="#888885"><tr><td>
		<table border="0" cellpadding="0" cellspacing="1" width="20">
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#888885"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		<tr bgcolor="#FFFFFF"><td height="20">&nbsp;</td></tr>
		</table>
		</td></tr></table>
	</td>

	<td height="20" width="20" nowrap>&nbsp;</td>
	<td width="100%"><br>
	
� 
select_all� 
Select All� 
� _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V��
 � deselect_all� Deselect All� �

<table border="0" cellpadding="0" cellspacing="0" width="100%"><tr><td>
<table border="0" cellpadding="2" cellspacing="1" width="100%">
� )class$coldfusion$tagext$html$form$FormTag #coldfusion.tagext.html.form.FormTag�� �	 � #coldfusion/tagext/html/form/FormTag� editForm�
�U POST� 	setMethod� �
�� cfform� action� CGI� SCRIPT_NAME  ?archivename= URLEncodedFormat 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
 
�P
�� �
<tr >
	<td>
	<table border="0" cellpadding="0" cellspacing="1" width="100%">
	<tr>
	<td class="cellBlueTopAndBottom" align="right" ><input type=submit value="
 q" name="selectc" class="buttn"></td>
	<td class="cellBlueTopAndBottom" align="right" ><input type=submit value=" t" name="deselectc" class="buttn"></td>
	</tr>
	</table></td>
</tr>
<tr>
	<td height="18" colspan="3" bgcolor="# 	GRAYLIGHT P" class="cellBlueTopAndBottom"><font class="label">&nbsp; <b class="form-title"> l10n_solrarchdata Registered Solr Collections M</b></font></td>
</tr>
<tr >
	<th width="18" nowrap height="20" bgcolor="# 	BLUELIGHT B" class="cellBlueTopAndBottom">&nbsp;</th>
	<th nowrap bgcolor="# 7" class="cellBlueTopAndBottom"><p class="label">&nbsp;  name  Name" / &nbsp;</p></th>
	<th  width="100%" bgcolor="#$ collection_directory& Collection Directory(  &nbsp;</p></th>
</tr>
			* � �
 , _List $(Ljava/lang/Object;)Ljava/util/List;./
 �0 ArrayToList $(Ljava/util/List;)Ljava/lang/String;23
 4 
		6 $class$coldfusion$tagext$lang$LoopTag coldfusion.tagext.lang.LoopTag98 �	 ; coldfusion/tagext/lang/LoopTag= setQuery?y coldfusion/tagext/QueryLoopA
B@
>� �
			
				<tr >
					<td align="center" height="18" nowrap class="cell3BlueSides">
						<input type="checkbox" name="solrcollectionname" value="E EncodeForHTMLAttribute &(Ljava/lang/String;)Ljava/lang/String;GH
 I N" onclick="setFormValue('archivewizard_page_veritycollections.cfm?archivename=K ')"
							M ListFindNoCase '(Ljava/lang/String;Ljava/lang/String;)IOP
 Q (D)Z&S
 �T checkedV  id="X g">
					</td>
					<td nowrap class="cellRightAndBottomBlueSide"><p class="label">&nbsp; <label for="Z ">\ f</label> &nbsp;</p></td>
					<td nowrap class="cellRightAndBottomBlueSide"	><p class="label">&nbsp; ^ 
ESAPIUTILS` encodeForHTMLFilePathb  &nbsp;</p></td>
				</tr>
		d
>�
>�
B�
>� 1

<input type="Hidden" name="csrftoken" value="j getcsrftokenl ARCHIVETABKEYNAMEn �">
<input type="Hidden" name="whereto" value="archivewizard_page_veritycollections.cfm">
<input type="Hidden" name="previousStep" value="archivewizard_page_datasources.cfm?archivename=p [">
<input type="Hidden" name="nextStep" value="archivewizard_page_applets.cfm?archivename=r ">
t
��
��
��
�� }
</table>
</td></tr></table>
<br>
<br>
<br>
</td><td width="20" nowrap>&nbsp;</td></tr>
</table>
</td></tr></table>
z
��
B�
�� archivewizard_footer.cfm metaData Ljava/lang/Object;��	 � getMetadata ()Ljava/lang/Object; this 7Lcfarchivewizard_page_veritycollections2ecfm1490760458; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage out Ljavax/servlet/jsp/JspWriter; value include0 #Lcoldfusion/tagext/lang/IncludeTag; 	location2 #Lcoldfusion/tagext/net/LocationTag; t6 ,Lcoldfusion/runtime/TransientVariableHolder; collection3 (Lcoldfusion/tagext/search/CollectionTag; t8 t9 #Lcoldfusion/runtime/AbortException; t10 Ljava/lang/Exception; __cfcatchThrowable0 Ljava/lang/Throwable; t12 t13 t14 collection4 t16 t17 t18 __cfcatchThrowable1 t20 t21 module5 $Lcoldfusion/tagext/lang/ImportedTag; mode5 I t24 t25 t26 t27 t28 t29 include6 output14  Lcoldfusion/tagext/io/OutputTag; mode14 module7 mode7 t35 t36 t37 t38 t39 t40 module8 mode8 t43 t44 t45 t46 t47 t48 form13 %Lcoldfusion/tagext/html/form/FormTag; mode13 module9 mode9 t53 t54 t55 t56 t57 t58 module10 mode10 t61 t62 t63 t64 t65 t66 module11 mode11 t69 t70 t71 t72 t73 t74 loop12  Lcoldfusion/tagext/lang/LoopTag; mode12 t77 t78 t79 t80 t81 t82 t83 t84 t85 t86 t87 t88 t89 t90 	include15 LineNumberTable !coldfusion/runtime/AbortException� java/lang/Exception� java/lang/Throwable� <clinit> 1                       "     &     *     .     2     6     :     >     B     F     J     N     R     V     Z     ^     b     f     j      �   , �   F �   bc   �c   � �   � �   � �   8 �   ��    �� �   "     ���   �       ��      �  A    *+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )**++,� � -**/+,� � 1**3+,� � 5**7+,� � 9**;+,� � =**?+,� � A**C+,� � E**G+,� � I**K+,� � M**O+,� � Q**S+,� � U**W+,� � Y**[+,� � ]**_+,� � a**c+,� � e**g+,� � i**k+,� � m�   �       ��    ��   ��  �� �  u  \  �*� t� zL*� ~N*� �-� �� �:*	� ��� �� �� �� �**� U���� �*S� �Y�S� �Y�� �*S� �Y�S� �� ¶ �ȶ ƶ ζ �**� %�ֶ ڙ�*� �***S� �Y�SY�S� �*�� �YS� �� � �� �Y�S� ��� Ͷ �W**� I� �� t*� i*� �**� I� �� ¸��*� �***S� �Y�SY�S� �*�� �YS� �� � �� �Y�S� �� �Y**� i� �S� �W*� �***S� �Y�SY�S� �*�� �YS� �� � �� �Y3S� ��� Ͷ �W**� =� �� t*� i*!� �**� =� �� ¸��*"� �***S� �Y�SY�S� �*�� �YS� �� � �� �Y3S� �� �Y**� i� �S� �W**� Y� �� P*(� �**� Q�*� �Y**� � �S�W*)� �**� )�*� �Y**� � �S�W� �**� a� �� P*-� �**� M�*� �Y**� � �S�W*.� �**� -�*� �Y**� � �S�W� �**� %!� ڸ%Y�)� 0W*1� �**� 9�+*� �Y*#� �YS� �S��)� O*�0-� ��2:*2� ��579*#� �YS� �� ��=�@� �� �� ��BY*� t�E:*�J-� ��L:*<� �N�QS�VX�[� �� �� :� e�� _� e:		�:

�a:�g�k�   2           m�q*� 1*?� �*s�w�{� 
�� � :� �:�~��BY*� t�E:*�J-� ��L:*F� �N�Q��V��[� �� �� :� e�� _� e:�:�a:���k�   2           m�q*� 5*I� �*s�w�{� �� � :� �:�~�*��-� ���:*P� ��������Y� �Y�SY�SY�SY�S����� ���Y6� 6*+��L+��������� � :� �:*+��L���� :� #�� � #:�Ǩ � :� �:�ʩ*� �-� �� �:*Q� �̶ �� �� �� �*��-� ���:*S� �� ���Y6 ��+ֶ�+*S� �Y�S� �� ¶�+ڶ�*��� ���:!*q� �!�����!��Y� �Y�SY�SY�SY�S����!� �!��Y6"� 6*!"+��L+޶�!������ � :#� #�:$*"+��L�$!��� :%� &��%�� � #:&!&�Ǩ � :'� '�:(!�ʩ(*+��*��� ���:)*r� �)�����)��Y� �Y�SY�SY�SY�S����)� �)��Y6*� 6*)*+��L+��)������ � :+� +�:,**+��L�,)��� :-� &�-�� � #:.).�Ǩ � :/� /�:0)�ʩ0+��*��� ���:1*v� �1��1���1��� �Y*�� �YS� �� · �� �*v� �*�� �YS� �� �**� ]� �� ¸� ƶ ��=�1� �1�	Y62��*12+��L+��+**� e� �� ¶�+��+**� !� �� ¶�+��+*S� �YS� �� ¶�+��*��	1� ���:3* �� �3�����3��Y� �Y�SYS����3� �3��Y64� 6*34+��L+��3������ � :5� 5�:6*4+��L�63��� :7� ,�ߨ�^7�� � #:838�Ǩ � :9� 9�::3�ʩ:+��+*S� �YS� �� ¶�+��+*S� �YS� �� ¶�+��*��
1� ���:;* �� �;�����;��Y� �Y�SY!S����;� �;��Y6<� 6*;<+��L+#��;������ � :=� =�:>*<+��L�>;��� :?� ,�ը�T?�� � #:@;@�Ǩ � :A� A�:B;�ʩB+%��+*S� �YS� �� ¶�+��*��1� ���:C* �� �C�����C��Y� �Y�SY'S����C� �C��Y6D� 6*CD+��L+)��C������ � :E� E�:F*D+��L�FC��� :G� ,��$�hG�� � #:HCH�Ǩ � :I� I�:JC�ʩJ++��*� A* �� �**S� �Y�SY�S� �*�� �YS� �� � �� �Y3S�-�1�5�{*+7��*�<1� ��>:K* �� �K��CK� �K�DY6L�4+F��+* �� �**� E� �� ¸J��+L��+* �� �*�� �YS� �� �**� ]� �� ¸��+N��* �� �**� A� �� �**� E� �� ¸R��U� 
+W��+Y��+* �� �**� E� �� ¸J��+[��+* �� �**� E� �� ¸J��+]��+* �� �**� E� �� ¸J��+_��+* �� �**S� �YaS� �c� �Y**� � �S� �� ¶�+e��K�f���K�g� :M� ,� �)�mM�� � #:NKN�h� � :O� O�:PK�i�P+k��+* �� �**� m�m*� �Y*S� �YoS� �S�� ¶�+q��+* �� �*�� �YS� �� �**� ]� �� ¸��+s��+* �� �*�� �YS� �� �**� ]� �� ¸��+u��1�v��L� � :Q� Q�:R*2+��L�R1�w� :S� &� jS�� � #:T1T�x� � :U� U�:V1�y�V+{���|���}� :W� #W�� � #:XX�h� � :Y� Y�:Z�~�Z*+��*� �-� �� �:[* �� �[�� �[� �[� �� �� nd�������d�������d��������������Ye�_be�Yj�_bj�Y��_b��e�������#?B�BGB�bn�hkn�b}�hk}�nz}�}�}�d�������Y�������Y���������������8TW�W\W�-z������-z���������������	
	�			��	6	B�	<	?	B��	6	Q�	<	?	Q�	B	N	Q�	Q	V	Q�	�

�


�	�
@
L�
F
I
L�	�
@
[�
F
I
[�
L
X
[�
[
`
[�
� ��
�,8�258�
�,G�25G�8DG�GLG��'3�-03��'B�-0B�3?B�BGB�@	6�	<
@�
F,�2'�-��5	66�	<
@6�
F,6�2'6�-*6�036�5	6E�	<
@E�
F,E�2'E�-*E�03E�6BE�EJE���}��z}��	6}�	<
@}�
F,}�2'}�-*}�0q}�wz}������z���	6��	<
@��
F,��2'��-*��0q��wz��}������� �  � \  ���    ���   ���   � { |   ���   ���   ���   ���   ���   ��� 	  ��� 
  ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���    ��� !  ��� "  ��� #  ��� $  ��� %  ��� &  ��� '  ��� (  ��� )  ��� *  ��� +  ��� ,  ��� -  ��� .  ��� /  ��� 0  ��� 1  ��� 2  ��� 3  ��� 4  ��� 5  ��� 6  ��� 7  ��� 8  ��� 9  ��� :  ��� ;  ��� <  ��� =  ��� >  ��� ?  ��� @  ��� A  ��� B  ��� C  ��� D  ��� E  ��� F  ��� G  ��� H  ��� I  ��� J  ��� K  ��� L  ��� M  ��� N  ��� O  ��� P  ��� Q  ��� R  ��� S  ��� T  ��� U  ��� V  ��� W  ��� X  ��� Y  ��� Z  ��� [�  ~�   # 	 # 	  	 A  A  V  V  [  [  [  [  p  p  R  R  R  R  F  F  |  |  |  |  �  �  �  �  {  {  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     @ @        �  � U U i i S S S S � � � � � � � !� !� !� !� !� !� !� !� !� "� "� "� " " "� "� "� "�  �  & & & & & &! (! (3 (3 (! (! (! (F )F )X )X )F )F )F )! 'i +i +i +i +h +h +y -y -� -� -y -y -y -� .� .� .� .� .� .� .y ,� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1- 2- 2- 2- 2 2� 1� 0h + & { z <z <� <� <� <� <d <� ?� ?� ?� ?� ?� ?� ?� ?W :2 F2 F: F: FB FB F F� I� I� I� I� I� I� I� I D� P� P P P� P� Q� Q� Q� U� U� U� U� U= q= qI qI q q r r r r� r� v� v� v� v� v� v� v� v� v� v v v v v v v v v v v v v� v� vR {R {R {R {Q {h |h |h |h |g |~ �~ �~ �~ �} �� �� �� �	j �	j �	j �	j �	i �	� �	� �	� �	� �	� �	� �	� �	� �
t �
t �
t �
t �
s �
� �
� �
� �k �k � � �j �j �j �j �j �j �j �j �_ �_ �� �� �� �� �� �� �� �� �� �� �� � � � � �" �" �" �" � � � � � �A �A �A �A �L �L �L �L �A �A �A �w �w �w �w �w �w �w �w �o �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �b �b �t �t �b �b �b �b �Z �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� v� S� �� �� �       �   #     *� 
�   �       ��   �  �   �     g�� �� �.� ��0H� ��J� �YeS�g� �YeS���� ���ϸ ����� ���:� ��<��Y� ͷ����   �       g��         n    o