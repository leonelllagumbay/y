����  -L 
SourceFile ,/CFIDE/administrator/setup/_informixinfo.cfm cf_informixinfo2ecfm1118406744  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   ITEM Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   com.macromedia.SourceModTime  R^�� pageContext #Lcoldfusion/runtime/NeoPageContext;  	   getOut ()Ljavax/servlet/jsp/JspWriter; ! " javax/servlet/jsp/JspContext $
 % # parent Ljavax/servlet/jsp/tagext/Tag; ' (	  ) USERNAME + ITEM.USERNAME -   / checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V 1 2
  3 PASSWORD 5 ITEM.PASSWORD 7 $class$coldfusion$tagext$io$OutputTag Ljava/lang/Class; coldfusion.tagext.io.OutputTag ; forName %(Ljava/lang/String;)Ljava/lang/Class; = > java/lang/Class @
 A ? 9 :	  C _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; E F
  G coldfusion/tagext/io/OutputTag I _setCurrentLineNo (I)V K L
  M 	hasEndTag (Z)V O P coldfusion/tagext/GenericTag R
 S Q 
doStartTag ()I U V
 J W 
	<p class="sentance">
		 Y write (Ljava/lang/String;)V [ \ java/io/Writer ^
 _ ] (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag b a :	  d "coldfusion/tagext/lang/ImportedTag f l10n h 	../cftags j admin l setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V n o
 g p &coldfusion/runtime/AttributeCollection r java/lang/Object t id v mig_informixNeedMoreInfo x ([Ljava/lang/Object;)V  z
 s { setAttributecollection (Ljava/util/Map;)V } ~  coldfusion/tagext/lang/ModuleTag �
 � 
 � W 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � C
			ColdFusion only supports Informix version 9 data sources. 
		 � doAfterBody � V
 � � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � doEndTag � V #javax/servlet/jsp/tagext/TagSupport �
 � � doCatch (Ljava/lang/Throwable;)V � �
 � � 	doFinally � 
 � � 	
	</p>
 � windows � SERVER � java/lang/String � OS � NAME � _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � 
FindNoCase '(Ljava/lang/String;Ljava/lang/String;)I � �
  � _boolean (D)Z � �
 � � mig_informixNeedMoreInfoWin � 
			For other versions of Informix, ColdFusion will register 
			the data source using the ODBC socket driver on Windows.
		 � 

	</p>	
 � mig_informixNeedMoreInfoUnix � �
			ColdFusion will not migrate an Informix 7 data source. 
			In order to use an Informix 7 data source, 
			you must obtain a third-party JDBC driver that supports Informix 7. 
		 � mig_informixdbinstructions � 
			Please indicate the version of this Informix data source. 
			Click Don't Migrate to skip migrating this data source.
		 � �
	</p>

<input type="hidden" name="class" value="macromedia.jdbc.MacromediaDriver">
<input type="hidden" name="driver" value="Informix">
<input type="hidden" name="epassword" value="" autocomplete="off">
<input type="hidden" name="dsn" value=" � D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  ��">
<input type="hidden" name="originaldsn" value="">
<table border="0" cellpadding="0" cellspacing="0" bgcolor="999999" width="100%">
<tr valign="top" class="color-border">
	<td>
		<table border="0" cellspacing="1" cellpadding="2" width="100%">
		<tr bgcolor="ddddd5" class="color-title">
			<th>
				<font class="label">&nbsp;&nbsp;<b class="form-title">
					Informix :&nbsp;  �k </b></font>
			</th>
		</tr>
		<tr bgcolor="ddddd5" class="color-header">
			<td>
				<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td width="100"  height="5"></td>
					<td></td>
					<td></td>
					<td width="50" ></td>
					<td></td>
				</tr>
				<tr>					
					<td valign="top">
						<p class="label" style="font-weight:  � Trim &(Ljava/lang/String;)Ljava/lang/String; � �
  � Len (Ljava/lang/Object;)I � �
  � "normal" � "bold" � IIf 9(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object; � �
  � /"><nobr>&nbsp; <label for="dbversion">
							 � 	dbversion � Informix Version ��
						</label></nobr></p>
					</td>
					<td>&nbsp;&nbsp;</td>
					<td>
						<p class="label">
						<input type="Radio" name="dbversion" value="9" class="label" id="dbversion"> Informix 9<br>
						<input type="Radio" name="dbversion" value="73" class="label" id="dbversion"> Informix 73 / Other<br>
						</p>
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
 � REQUEST � PREVBTN � true � _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � 
 � _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V � �
  � NEXTBTN � DONTMIGRATEBTN �
 J � coldfusion/tagext/QueryLoop �
  �
  �
 J � metaData Ljava/lang/Object;	  getMetadata ()Ljava/lang/Object; this  Lcf_informixinfo2ecfm1118406744; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage out Ljavax/servlet/jsp/JspWriter; value output7  Lcoldfusion/tagext/io/OutputTag; mode7 I module2 $Lcoldfusion/tagext/lang/ImportedTag; mode2 t8 Ljava/lang/Throwable; t9 t10 t11 t12 t13 module3 mode3 t16 t17 t18 t19 t20 t21 module4 mode4 t24 t25 t26 t27 t28 t29 module5 mode5 t32 t33 t34 t35 t36 t37 module6 mode6 t40 t41 t42 t43 t44 t45 t46 t47 t48 t49 LineNumberTable java/lang/ThrowableI <clinit> 1            9 :    a :       	    "     ��          
         E     *+,� **+,� � �           
           	   
�  2  Y*�  � &L*� *N**� ,.0� 4**� 680� 4*� D-� H� J:*� N� T� XY6��+Z� `*� e� H� g:*� Nikm� q� sY� uYwSYyS� |� �� T� �Y6� 5*+� �L+�� `� ����� � :� �:	*+� �L�	� �� :
� &�m
�� � #:� �� � :� �:� ��+�� `*� N�*�� �Y�SY�S� �� �� ��� �� �+Z� `*� e� H� g:*� Nikm� q� sY� uYwSY�S� |� �� T� �Y6� 5*+� �L+�� `� ����� � :� �:*+� �L�� �� :� &��� � #:� �� � :� �:� ��+�� `� �+Z� `*� e� H� g:*� Nikm� q� sY� uYwSY�S� |� �� T� �Y6� 5*+� �L+Ķ `� ����� � :� �:*+� �L�� �� :� &���� � #:� �� � :� �:� ��+�� `+Z� `*� e� H� g:*� Nikm� q� sY� uYwSY�S� |� �� T� �Y6� 5*+� �L+ȶ `� ����� � : �  �:!*+� �L�!� �� :"� &��"�� � #:##� �� � :$� $�:%� ��%+ʶ `+**� � �Y�S� ͸ �� `+϶ `+**� � �Y�S� ͸ �� `+Ѷ `+*=� N**=� N*=� N**� � �Y,S� ͸ �� ո ه� ��ݶ � �� `+� `*� e� H� g:&*>� N&ikm� q&� sY� uYwSY�S� |� �&� T&� �Y6'� 5*&'+� �L+� `&� ����� � :(� (�:)*'+� �L�)&� �� :*� &� �*�� � #:+&+� �� � :,� ,�:-&� ��-+� `*�� �Y�S� �*+�� �*�� �Y�S� �*+�� �*�� �Y�S� �*+�� �� ���2�� :.� #.�� � #://�� � :0� 0�:1��1� 8 � � �J � � �J � � �J � � �J � � �J � � �J � � �J � �J���J���J���J���J���J���J���J���JVqtJtytJK��J���JK��J���J���J���J69J9>9J\hJbehJ\wJbewJhtwJw|wJ\wzJzzJQ��J���JQ��J���J���J���J C �7J ��7J��7J�\7Jb�7J�+7J147J C �FJ ��FJ��FJ�\FJb�FJ�+FJ14FJ7CFJFKFJ   � 2  Y
    Y   Y   Y ' (   Y   Y   Y   Y   Y   Y 	  Y  
  Y!   Y"   Y#   Y$   Y%   Y&   Y'   Y(   Y)   Y*   Y+   Y,   Y-   Y.   Y/   Y0   Y1   Y2   Y3   Y4   Y5   Y6    Y7 !  Y8 "  Y9 #  Y: $  Y; %  Y< &  Y= '  Y> (  Y? )  Y@ *  YA +  YB ,  YC -  YD .  YE /  YF 0  YG 1H  � e                                           "  "  $  $        �  �  T         t t B < < 
     � � %� %� %� %� %� .� .� .� .� .� =� =� =� =� =� =� =� =� =� =� =� =� =� =� =� =� =� =� =B >B > >� c� c� c� c� c� c� d� d� d� d� d� d e e e e� e� e )           #     *� 
�          
   K     =     <� B� Dc� B� e� sY� u� |��          
             