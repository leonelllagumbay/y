����  -� 
SourceFile +/CFIDE/administrator/setup/_oledbaccess.cfm cf_oledbaccess2ecfm784623804  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   ITEM Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   USERNAME_TITLE   	   USETRUSTEDCONNECTION_TITLE   	    PASSWORD_TITLE " " 	  $ DATASOURCENAME_TITLE & & 	  ( com.macromedia.SourceModTime  R^�� pageContext #Lcoldfusion/runtime/NeoPageContext; - .	  / getOut ()Ljavax/servlet/jsp/JspWriter; 1 2 javax/servlet/jsp/JspContext 4
 5 3 parent Ljavax/servlet/jsp/tagext/Tag; 7 8	  9 PORT ; 	ITEM.PORT =  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z ? @
  A _Object (Z)Ljava/lang/Object; C D coldfusion/runtime/Cast F
 G E _boolean (Ljava/lang/Object;)Z I J
 G K _setCurrentLineNo (I)V M N
  O java/lang/String Q _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; S T
  U _String &(Ljava/lang/Object;)Ljava/lang/String; W X
 G Y Val (Ljava/lang/String;)D [ \
  ] (D)Ljava/lang/Object; C _
 G ` _compare (Ljava/lang/Object;D)D b c
  d 1433 f _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V h i
  j DATABASEFILE l ITEM.DATABASEFILE n PROVIDERDSN p USETRUSTEDCONNECTION r ITEM.USETRUSTEDCONNECTION t 0 v checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V x y
  z $class$coldfusion$tagext$io$OutputTag Ljava/lang/Class; coldfusion.tagext.io.OutputTag ~ forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � | }	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/io/OutputTag � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � 
doStartTag ()I � �
 � � 
	<p class="sentance">
		 � write (Ljava/lang/String;)V � � java/io/Writer �
 � � (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag � � }	  � "coldfusion/tagext/lang/ImportedTag � l10n � 
../cftags/ � admin � setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V � �
 � � &coldfusion/runtime/AttributeCollection � java/lang/Object � id � mig_oleMSAccessNeedMoreInfo � ([Ljava/lang/Object;)V  �
 � � setAttributecollection (Ljava/util/Map;)V � �  coldfusion/tagext/lang/ModuleTag �
 � �
 � � 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � �
			ColdFusion does not support OLE data sources, but this Microsoft Access
			data source can be migrated as a JDBC data source. Please note that
			some OLE specific syntax may not work properly.
		 � doAfterBody � �
 � � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � doEndTag � � #javax/servlet/jsp/tagext/TagSupport �
 � � doCatch (Ljava/lang/Throwable;)V � �
 � � 	doFinally � 
 � � "
	</p>
	<p class="sentance">
		 � mig_oldDbSQLInstruction � X
			Click Next to continue. Click Don't Migrate to skip migrating this data source.
		 � �
	</p>

<input type="hidden" name="class" value="macromedia.jdbc.MacromediaDriver">
<input type="hidden" name="driver" value="MSAccessJet">
<input type="hidden" name="epassword" value="">
<input type="hidden" name="dsn" value=" � NAME ��">
<input type="hidden" name="originaldsn" value="">
<table border="0" cellpadding="0" cellspacing="0" bgcolor="999999" width="100%">
<tr valign="top" class="color-border">
	<td>
		<table border="0" cellspacing="1" cellpadding="2" width="100%">
		<tr bgcolor="ddddd5" class="color-title">
			<th>
				<font class="label">&nbsp;&nbsp;<b class="form-title">
					MS Access :&nbsp;  �� </b></font>
			</th>
		</tr>
		<tr bgcolor="ddddd5" class="color-header">
			<td>
				<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td width="130"  height="5"></td>
					<td></td>
					<td></td>
					<td width="50" ></td>
					<td></td>
				</tr>
				<tr>
					<td valign="top" align="right">
						<font class="label"><nobr>&nbsp;<label for="name">
							 � datasourcename � CF Data Source Name � r
						</label></nobr></font>
					</td>
					<td>&nbsp;&nbsp;</td>
					<td valign="top" colspan="3">
						 � datasourcename_title � var � ColdFusion datasouce name � >
						<input type="text" maxlength="550" name="name" value=" � O"
							id="name" size="15" style="width:15em" class="label"
							 title=" � _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � ;">

						<input type="hidden" name="originaldsn" value=" � �">
					</td>
				</tr>
				<tr>
					<td align="right">
						<font class="label"><nobr>&nbsp; <label for="databaseFile">
							  DatabaseFile Database File �
						</label></nobr></font>
					</td>
					<td>&nbsp;&nbsp;</td>
					<td colspan="2">
						<input type="text" maxlength="550" name="databaseFile" id="databaseFile" value=" �"
							size="20" style="width:20em" class="label"
							title="">
					</td>
				</tr>
				<tr>
					<td align="right">
						<p class="label"><nobr>&nbsp; <label for="UseTrustedConnection">
							 UseDefaultUsername
 Use Default Username b
						</label></nobr></p>
					</td>
					<td>&nbsp;&nbsp;</td>
					<td colspan="2">
						 UseTrustedConnection_title H
						<input type="checkbox" name="UseTrustedConnection" value="true"  checked *
							id="UseTrustedConnection" title=" w">

				</tr>
				<tr>
					<td align="right">
						<p class="label"><nobr>&nbsp; <label for="username">
							 
CFusername ColdFusion Username V
						</label></nobr></p>
					</td>
					<td>&nbsp;&nbsp;</td>
					<td>
						 username_title  <Enter the user name if the database requires authentication." B
						<input type="text" maxlength="550" name="username" value="$ USERNAME& R"
							style="width:12em" class="label" size="12" id="username"
							title="( �">
					</td>
				</tr>
				<tr>
					<td align="right">
						<font class="label"><nobr>&nbsp; <label for="password">
							* 
CFpassword, ColdFusion Password. a
						</label> &nbsp;</nobr></font>
					</td>
					<td></td>
					<td valign="top">
						0 password_title2 ZEnter the password corresponding to the user name if the database requires authentication.4 6
						<input type="password" name="password" value="6 PASSWORD8 R"
							style="width:12em" class="label" size="12" id="password"
							title=": �" autocomplete="off">
					</td>
				</tr>
				<tr>
					<td height="5"></td>
				</tr>
				<tr valign="top">
					<td align="right">
						<font class="label"><nobr>&nbsp; <label for="description">
							< description> Description@ �
						</label></nobr></font>
					</td>
					<td>&nbsp;&nbsp;</td>
					<td colspan="3" >
						<textarea name="description" id="description"
							rows="3" cols="25" style="width:15em" class="label">B DESCRIPTIOND �</textarea>
					</td>
				</tr>
				<tr>
					<td height="10"></td>
				</tr>
				</table>
			</td>
		</tr>
	
	</table>
		</td>
	</tr>
	</table>
F REQUESTH PREVBTNJ trueL :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V hN
 O 
Q _whitespace %(Ljava/io/Writer;Ljava/lang/String;)VST
 U NEXTBTNW DONTMIGRATEBTNY
 � � coldfusion/tagext/QueryLoop\
] �
] �
 � � metaData Ljava/lang/Object;ab	 c getMetadata ()Ljava/lang/Object; this Lcf_oledbaccess2ecfm784623804; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage out Ljavax/servlet/jsp/JspWriter; value output13  Lcoldfusion/tagext/io/OutputTag; mode13 I module1 $Lcoldfusion/tagext/lang/ImportedTag; mode1 t8 Ljava/lang/Throwable; t9 t10 t11 t12 t13 module2 mode2 t16 t17 t18 t19 t20 t21 module3 mode3 t24 t25 t26 t27 t28 t29 module4 mode4 t32 t33 t34 t35 t36 t37 module5 mode5 t40 t41 t42 t43 t44 t45 module6 mode6 t48 t49 t50 t51 t52 t53 module7 mode7 t56 t57 t58 t59 t60 t61 module8 mode8 t64 t65 t66 t67 t68 t69 module9 mode9 t72 t73 t74 t75 t76 t77 module10 mode10 t80 t81 t82 t83 t84 t85 module11 mode11 t88 t89 t90 t91 t92 t93 module12 mode12 t96 t97 t98 t99 t100 t101 t102 t103 t104 t105 LineNumberTable java/lang/Throwable� <clinit> 1                      "     &     | }    � }   ab    ef j   "     �d�   i       gh      j   u     C*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )�   i        Cgh     Ckl    Cmn  of j  e 	 j  *� 0� 6L*� :N**� <>� B�� HY� L� 0W*� P**� � RY<S� V� Z� ^� a� e�~�� H� L� **� � RY<Sg� k**� mo� B�� %**� � RYmS**� � RYqS� V� k**� suw� {*� �-� �� �:*� P� �� �Y6�+�� �*� �� �� �:*� P���� �� �Y� �Y�SY�S� �� �� �� �Y6� 5*+� �L+ȶ �� ˚��� � :� �:	*+� �L�	� �� :
� &�
�
�� � #:� ب � :� �:� ۩+ݶ �*� �� �� �:*� P���� �� �Y� �Y�SY�S� �� �� �� �Y6� 5*+� �L+� �� ˚��� � :� �:*+� �L�� �� :� &�	��� � #:� ب � :� �:� ۩+� �+**� � RY�S� V� Z� �+� �+**� � RY�S� V� Z� �+� �*� �� �� �:*6� P���� �� �Y� �Y�SY�S� �� �� �� �Y6� 5*+� �L+�� �� ˚��� � :� �:*+� �L�� �� :� &���� � #:� ب � :� �:� ۩+� �*� �� �� �:*;� P���� �� �Y� �Y�SY�SY�SY�S� �� �� �� �Y6� 5*+� �L+�� �� ˚��� � : �  �:!*+� �L�!� �� :"� &�&"�� � #:##� ب � :$� $�:%� ۩%+�� �+**� � RY�S� V� Z� �+�� �+**� )� �� Z� �+�� �+**� � RY�S� V� Z� �+� �*� �� �� �:&*F� P&���� �&� �Y� �Y�SYS� �� �&� �&� �Y6'� 6*&'+� �L+� �&� ˚��� � :(� (�:)*'+� �L�)&� �� :*� &�*�� � #:+&+� ب � :,� ,�:-&� ۩-+� �+**� � RYmS� V� Z� �+	� �*� �� �� �:.*S� P.���� �.� �Y� �Y�SYS� �� �.� �.� �Y6/� 6*./+� �L+� �.� ˚��� � :0� 0�:1*/+� �L�1.� �� :2� &�12�� � #:3.3� ب � :4� 4�:5.� ۩5+� �*� �� �� �:6*X� P6���� �6� �Y� �Y�SYSY�SYS� �� �6� �6� �Y67� /*67+� �L6� ˚��� � :8� 8�:9*7+� �L�96� �� ::� &�j:�� � #:;6;� ب � :<� <�:=6� ۩=+� �**� � RYsS� V� L� 
+� �+� �+**� !� �� Z� �+� �*� �� �� �:>*`� P>���� �>� �Y� �Y�SYS� �� �>� �>� �Y6?� 6*>?+� �L+� �>� ˚��� � :@� @�:A*?+� �L�A>� �� :B� &�lB�� � #:C>C� ب � :D� D�:E>� ۩E+� �*� �	� �� �:F*e� PF���� �F� �Y� �Y�SY!SY�SY!S� �� �F� �F� �Y6G� 6*FG+� �L+#� �F� ˚��� � :H� H�:I*G+� �L�IF� �� :J� &��J�� � #:KFK� ب � :L� L�:MF� ۩M+%� �+**� � RY'S� V� Z� �+)� �+**� � �� Z� �++� �*� �
� �� �:N*n� PN���� �N� �Y� �Y�SY-S� �� �N� �N� �Y6O� 6*NO+� �L+/� �N� ˚��� � :P� P�:Q*O+� �L�QN� �� :R� &��R�� � #:SNS� ب � :T� T�:UN� ۩U+1� �*� �� �� �:V*s� PV���� �V� �Y� �Y�SY3SY�SY3S� �� �V� �V� �Y6W� 6*VW+� �L+5� �V� ˚��� � :X� X�:Y*W+� �L�YV� �� :Z� &��Z�� � #:[V[� ب � :\� \�:]V� ۩]+7� �+**� � RY9S� V� Z� �+;� �+**� %� �� Z� �+=� �*� �� �� �:^*� P^���� �^� �Y� �Y�SY?S� �� �^� �^� �Y6_� 6*^_+� �L+A� �^� ˚��� � :`� `�:a*_+� �L�a^� �� :b� &� �b�� � #:c^c� ب � :d� d�:e^� ۩e+C� �+**� � RYES� V� Z� �+G� �*I� RYKSM�P*+R�V*I� RYXSM�P*+R�V*I� RYZSM�P*+R�V�[����^� :f� #f�� � #:gg�_� � :h� h�:i�`�i� ~$?B�BGB�eq�knq�e��kn��q}�����������$0�*-0��$?�*-?�0<?�?D?���������+�%(+��:�%(:�+7:�:?:������������������������ ����������������������������������������������������i~������^�������^���������������`|���U�������U���������������.JM�MRM�#p|�vy|�#p��vy��|�������	'	C	F�	F	K	F�		i	u�	o	r	u�		i	��	o	r	��	u	�	��	�	�	��	�

�


�	�
7
C�
=
@
C�	�
7
R�
=
@
R�
C
O
R�
R
W
R�
�
��
�0<�69<�
�0K�69K�<HK�KPK� �e��k$��*��%�������������������p��v	i��	o
7��
=0��6������� �e�k$�*�%��������������p�v	i�	o
7�
=0�6�������� i  & j  gh    pq   rb    7 8   st   uv   wx   yv   z{   |b 	  }b 
  ~{   {   �b   �x   �v   �{   �b   �b   �{   �{   �b   �x   �v   �{   �b   �b   �{   �{   �b   �x   �v   �{    �b !  �b "  �{ #  �{ $  �b %  �x &  �v '  �{ (  �b )  �b *  �{ +  �{ ,  �b -  �x .  �v /  �{ 0  �b 1  �b 2  �{ 3  �{ 4  �b 5  �x 6  �v 7  �{ 8  �b 9  �b :  �{ ;  �{ <  �b =  �x >  �v ?  �{ @  �b A  �b B  �{ C  �{ D  �b E  �x F  �v G  �{ H  �b I  �b J  �{ K  �{ L  �b M  �x N  �v O  �{ P  �b Q  �b R  �{ S  �{ T  �b U  �x V  �v W  �{ X  �b Y  �b Z  �{ [  �{ \  �b ]  �x ^  �v _  �{ `  �b a  �b b  �{ c  �{ d  �b e  �b f  �{ g  �{ h  �b i�   �                                   +  +  +  +  +  +  E  E  +  +  +  +      f  f  f  f  X  X    l  l  l  l  p  p  r  r  k  k  k  k  k  k  �  �  �  �  |  |  k  �  �  �  �  �  �  �  �  � 	 � 	 �  �  � 
 
  � � � � W W W W V u &u &u &u &t &� 6� 6� 6� ;� ;� ;� ;Q ; < < < < <9 >9 >9 >9 >8 >N @N @N @N @M @� F� Fl F/ K/ K/ K/ K. K� S� SM SC XC XN XN X X� Y� Y� Y� Z� Z� Z� Z� ZE `E ` ` e e e e� e� f� f� f� f� f� h� h� h� h� h	 n	 n� n	� s	� s	� s	� s	� s
k t
k t
k t
k t
j t
� v
� v
� v
� v
� v
� 
� 
� d �d �d �d �c �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � �        j   #     *� 
�   i       gh   �  j   =     � �� ��� �� �� �Y� �� ��d�   i       gh         *    +