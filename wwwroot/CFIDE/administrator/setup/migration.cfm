����  -� 
SourceFile (/CFIDE/administrator/setup/migration.cfm cfmigration2ecfm1850464625  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   FORM Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   OUTPUT   	   THISSTEP   	    ADMINOBJ " " 	  $ 	DOC_TITLE & & 	  ( com.macromedia.SourceModTime  R^�� pageContext #Lcoldfusion/runtime/NeoPageContext; - .	  / getOut ()Ljavax/servlet/jsp/JspWriter; 1 2 javax/servlet/jsp/JspContext 4
 5 3 parent Ljavax/servlet/jsp/tagext/Tag; 7 8	  9 SKIP ; 	FORM.SKIP =  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z ? @
  A java/lang/String C MIGRATIONSTATUS E skipped G _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V I J
  K 
ISCOMPLETE M 1 O ADVANCE Q NEXTSTEP S migrationfinish U PREV W 	FORM.PREV Y setupmessage [ NEXT ] 	FORM.NEXT _ started a _setCurrentLineNo (I)V c d
  e 	component g CFIDE.adminapi.administrator i CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; k l
  m set (Ljava/lang/Object;)V o p coldfusion/runtime/Variable r
 s q (class$coldfusion$tagext$lang$ImportedTag Ljava/lang/Class; "coldfusion.tagext.lang.ImportedTag w forName %(Ljava/lang/String;)Ljava/lang/Class; y z java/lang/Class |
 } { u v	   _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � "coldfusion/tagext/lang/ImportedTag � l10n � 	../cftags � admin � setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V � �
 � � &coldfusion/runtime/AttributeCollection � java/lang/Object � id � doc_title_cfmigration � var � 	doc_title � ([Ljava/lang/Object;)V  �
 � � setAttributecollection (Ljava/util/Map;)V � �  coldfusion/tagext/lang/ModuleTag �
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � 
doStartTag ()I � �
 � � 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � ColdFusion Migration � write (Ljava/lang/String;)V � � java/io/Writer �
 � � doAfterBody � �
 � � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � doEndTag � � #javax/servlet/jsp/tagext/TagSupport �
 � � doCatch (Ljava/lang/Throwable;)V � �
 � � 	doFinally � 
 � � exporting_applets � export_applets � Exporting Applets � mig_skip � Skip � mig_back � Back � mig_continue � Next � mig_skip_warn � (Are you sure you want to skip migration? � &class$coldfusion$tagext$lang$CustomTag  coldfusion.tagext.lang.CustomTag � � v	  �  coldfusion/tagext/lang/CustomTag � wrapper � '(Ljava/lang/String;Ljava/lang/String;)V � �
 � � panel � 	migration � _arrayAssign &(Ljava/lang/Object;)Ljava/lang/Object; � �
  � title � _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � text �   $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag v	  coldfusion/tagext/io/OutputTag
	 � �
  		<table border="0" cellpadding="0" cellspacing="0">
  		<tr>
  			<td width="20">&nbsp;</td>
  			<td colspan="3">
			<font class="sentance">
  			 	mig_intro�
				ColdFusion will now migrate existing settings and resources, 
				including data sources and Custom tags. 
				NOTE: If you skip this step, applications that require 
				these resources will not run correctly until you have defined 
				them in the ColdFusion Administrator.
				<br /><br /> 
				If you require additional data before continuing, you can stop the 
				Migration Wizard at any time and make the changes. Once done copy 
				the config files (neo-*.xml) from &lt;oldColdFusionRoot&gt;/lib to 
				&lt;newColdFusionRoot&gt;/lib. When you are ready to continue, restart the 
				ColdFusion Administrator and the wizard will continue from where you stopped.				
				<br /><br /> 
			 X</font>
			</td>
  		</tr>
  		<tr><td>&nbsp;</td>
  		</tr>
  		</table>
  		
		 REQUEST PREVBTN true :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V I
  
		 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V
   SKIPBTN" NEXTBTN$ 

	&
	 � coldfusion/tagext/QueryLoop)
* �
* �
	 � 
. metaData Ljava/lang/Object;01	 2 getMetadata ()Ljava/lang/Object; this Lcfmigration2ecfm1850464625; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage out Ljavax/servlet/jsp/JspWriter; value module0 $Lcoldfusion/tagext/lang/ImportedTag; mode0 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 module1 mode1 t14 t15 t16 t17 t18 t19 module2 mode2 t22 t23 t24 t25 t26 t27 module3 mode3 t30 t31 t32 t33 t34 t35 module4 mode4 t38 t39 t40 t41 t42 t43 module5 mode5 t46 t47 t48 t49 t50 t51 module8 "Lcoldfusion/tagext/lang/CustomTag; mode8 output7  Lcoldfusion/tagext/io/OutputTag; mode7 module6 mode6 t58 t59 t60 t61 t62 t63 t64 t65 t66 t67 t68 t69 t70 t71 t72 t73 LineNumberTable java/lang/Throwable� <clinit> 1     	                 "     &     u v    � v    v   01    45 9   "     �3�   8       67      9   u     C*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )�   8        C67     C:;    C<=  >5 9    J  �*� 0� 6L*� :N**� <>� B� R**� � DYFSH� L**� !� DYNSP� L**� !� DYRSP� L**� !� DYTSV� L� �**� XZ� B� ?**� !� DYNSP� L**� !� DYRSP� L**� !� DYTS\� L� K**� ^`� B� <**� � DYFSb� L**� !� DYNSP� L**� !� DYRSP� L*� %*� f*hj� n� t*� �-� �� �:*� f���� �� �Y� �Y�SY�SY�SY�S� �� �� �� �Y6� 5*+� �L+�� �� ����� � :� �:*+� �L�� �� :� #�� � #:		� ˨ � :
� 
�:� Ω*� �-� �� �:*� f���� �� �Y� �Y�SY�SY�SY�S� �� �� �� �Y6� 5*+� �L+Զ �� ����� � :� �:*+� �L�� �� :� #�� � #:� ˨ � :� �:� Ω*� �-� �� �:*� f���� �� �Y� �Y�SY�SY�SY�S� �� �� �� �Y6� 5*+� �L+ض �� ����� � :� �:*+� �L�� �� :� #�� � #:� ˨ � :� �:� Ω*� �-� �� �:*� f���� �� �Y� �Y�SY�SY�SY�S� �� �� �� �Y6� 5*+� �L+ܶ �� ����� � :� �:*+� �L�� �� : � # �� � #:!!� ˨ � :"� "�:#� Ω#*� �-� �� �:$*� f$���� �$� �Y� �Y�SY�SY�SY�S� �� �$� �$� �Y6%� 5*$%+� �L+� �$� ����� � :&� &�:'*%+� �L�'$� �� :(� #(�� � #:)$)� ˨ � :*� *�:+$� Ω+*� �-� �� �:,*� f,���� �,� �Y� �Y�SY�SY�SY�S� �� �,� �,� �Y6-� 5*,-+� �L+� �,� ����� � :.� .�:/*-+� �L�/,� �� :0� #0�� � #:1,1� ˨ � :2� 2�:3,� Ω3*� �-� �� �:4*� f4�� �4� �Y� �Y�SY�� �SY�SY**� )� �� �SY SY� �S� �� �4� �4� �Y65��*45+� �L*�4� ��	:6*� f6� �6�
Y67�/+� �*� �6� �� �:8*$� f8���� �8� �Y� �Y�SYS� �� �8� �8� �Y69� 6*89+� �L+� �8� ����� � ::� :�:;*9+� �L�;8� �� :<� ,� ʨ �&<�� � #:=8=� ˨ � :>� >�:?8� Ω?+� �*� DYS�*+�!*� DY#S�*+�!*� DY%S�*+'�!6�(���6�+� :@� )� M� �@�� � #:A6A�,� � :B� B�:C6�-�C*+/�!4� ���b� � :D� D�:E*5+� �L�E4� �� :F� #F�� � #:G4G� ˨ � :H� H�:I4� ΩI� Nh�������]�������]���������������'BE�EJE�eq�knq�e��kn��q}��������	��$0�*-0��$?�*-?�0<?�?D?��������������������������������d������Y�������Y���������������#>A�AFA�am�gjm�a|�gj|�my|�|�|���������v�������v���������������!�v��jv�psv�!����j��ps��v������������j��p������������j��p������������j��p��������������� 8  � J  �67    �?@   �A1   � 7 8   �BC   �DE   �FG   �H1   �I1   �JG 	  �KG 
  �L1   �MC   �NE   �OG   �P1   �Q1   �RG   �SG   �T1   �UC   �VE   �WG   �X1   �Y1   �ZG   �[G   �\1   �]C   �^E   �_G   �`1   �a1    �bG !  �cG "  �d1 #  �eC $  �fE %  �gG &  �h1 '  �i1 (  �jG )  �kG *  �l1 +  �mC ,  �nE -  �oG .  �p1 /  �q1 0  �rG 1  �sG 2  �t1 3  �uv 4  �wE 5  �xy 6  �zE 7  �{C 8  �|E 9  �}G :  �~1 ;  �1 <  ��G =  ��G >  ��1 ?  ��1 @  ��G A  ��G B  ��1 C  ��G D  ��1 E  ��1 F  ��G G  ��G H  ��1 I�  � �                       *  *  *  *      =  =  =  =  /  /  P  P  P  P  B  B  c  c  c  c  U  U  l 	 l 	 l 	 l 	 p 	 p 	 r 	 r 	 k 	 k 	 � 
 � 
 � 
 � 
 z 
 z 
 �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  k 	  	 	        �  � D D N N      � � � � � � � � � � P @ @ J J  � � 	 	 � � � � � � � � � � � � � � � f $f $3 $
 A
 A
 A
 A� A� A& B& B& B& B B BB CB CB CB C4 C4 C �        9   #     *� 
�   8       67   �  9   F     (x� ~� �� ~� �� ~�� �Y� �� ��3�   8       (67         *    +