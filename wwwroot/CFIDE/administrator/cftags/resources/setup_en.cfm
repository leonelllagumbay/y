����  -� 
SourceFile 2/CFIDE/administrator/cftags/resources/setup_en.cfm cfsetup_en2ecfm1709955004  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   
ATTRIBUTES Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   CALLER   	   BSUCCESS   	    com.macromedia.SourceModTime  R^�� pageContext #Lcoldfusion/runtime/NeoPageContext; % &	  ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
 - + parent Ljavax/servlet/jsp/tagext/Tag; / 0	  1 3class$coldfusion$tagext$lang$ProcessingDirectiveTag Ljava/lang/Class; -coldfusion.tagext.lang.ProcessingDirectiveTag 5 forName %(Ljava/lang/String;)Ljava/lang/Class; 7 8 java/lang/Class :
 ; 9 3 4	  = _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; ? @
  A -coldfusion/tagext/lang/ProcessingDirectiveTag C _setCurrentLineNo (I)V E F
  G setSuppresswhitespace (Z)V I J
 D K 	hasEndTag M J coldfusion/tagext/GenericTag O
 P N 
doStartTag ()I R S
 D T $class$coldfusion$tagext$io$SilentTag coldfusion.tagext.io.SilentTag W V 4	  Y coldfusion/tagext/io/SilentTag [
 \ T 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; ^ _
  ` doAfterBody b S
 P c _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; e f
  g doEndTag i S #javax/servlet/jsp/tagext/TagSupport k
 l j doCatch (Ljava/lang/Throwable;)V n o
 P p 	doFinally r 
 P s 	__HTSWT_0 Lcoldfusion/util/FastHashtable; u v	  w java/lang/String y ID { _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; } ~
   __caseValue 4(Lcoldfusion/util/FastHashtable;Ljava/lang/Object;)I � �
  � Example Applications � write (Ljava/lang/String;)V � � java/io/Writer �
 � � back � next � ~Please select a language for the online help in the ColdFusion Administrator and for the example applications (if applicable). � Language � �Would you like to install the example applications? For security reasons, the example applications should not be installed on production servers. � 7<b>Yes</b>, I want to install the example applications. � =<b>No</b>, I do not want to install the example applications. � IExample applications cannot be installed on Windows without ODBC support. � Finish Setup � Ok � Finishing setup: � %Installing ODBC datasource support... �  Installing administrator help... � "Installing example applications... � Installing windows libraries... � Finishing setup wizard... � Setup complete. � ODBC � �Would you like to install support for ODBC data sources, such as Microsoft Access? If you select "Yes," ColdFusion MX installs an additional driver and set of services for connecting to ODBC. � 0<b>Yes</b>, I want to install the ODBC services. � 6<b>No</b>, I do not want to install the ODBC services. � *You must supply an administrator password. � 2The administrator password and confirm must match. � -If you enable RDS you must supply a password. � (The RDS password and confirm must match. � Security Settings � $ColdFusion MX administrator password � password � confirm � KThe Remote Development Services were not installed. Click next to continue. � �Please enter a password for the Remote Development Services (RDS). If you wish to disable RDS, please consult the installation guide. � 
Enable RDS � %You entered an invalid serial number. � Serial Number � Submit � Continue in Trial Mode � oWelcome to ColdFusion MX. This wizard will guide you through the steps necessary to complete your installation. � NIf you purchased a license for ColdFusion MX, please enter your serial number. � Serial number � MIf you did not purchase a license, you can use the Trial Edition for 30 days. � Error � 0Setup encountered errors while installing files. � $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag � � 4	  � coldfusion/tagext/io/OutputTag �
 � T '
Unable to set admin password.<br />
 � CFCATCH � MESSAGE � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � <br />
 � DETAIL � 
 � _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V � �
  �
 � c coldfusion/tagext/QueryLoop 
 j
 p
 � s %
Unable to set RDS password.<br />
 *
Unable to configure RDS service.<br />
 &
Unable to set serial number.<br />
	 false set (Ljava/lang/Object;)V coldfusion/runtime/Variable
 coldfusion/runtime/SwitchTable
 	 SUBMIT addStringCase 5(Ljava/lang/String;I)Lcoldfusion/runtime/SwitchTable;
 SETUP_ERRORS 	DOC_TITLE FINISH_DESC  SECURITY_DESC" TRIAL$ INSTALLING_EXAMPLES& INSTALL_ODBC( ADMIN_PW_ERROR* CONFIRM, SERIAL_ENTER. FINISH_TITLE0 ODBC_YES2 LANGUAGE4 NEXT6 OK8 ODBC_NO: ERROR_LABEL< EXAMPLES_NO> 
ODBC_TITLE@ INSTALL_EXAMPLESB SERIAL_INVALIDD ADMIN_PW_LABELF ADMIN_PW_MISMATCHH REGISTER_DLLJ EXAMPLES_YESL 
TRIAL_DESCN SECURITY_NORDSP PASSWORDR ADMIN_PW_REQUIREDT RDS_CONFIG_ERRORV 	ENABLERDSX SETUP_COMPLETEZ RDS_PW_ERROR\ SERIAL_DESC^ LANGUAGE_SELECT` LICENSE_ERRORb SERIAL_NUMBERd SECURITY_TITLEf CANT_INSTALL_EXAMPLESh 	ODBC_DESCj INSTALL_HELPl RDS_PW_MISMATCHn FINISH_SETUPp BACKr RDS_PW_REQUIREDt SERIAL_TITLEv
 D p
 D s metaData Ljava/lang/Object;z{	 | &coldfusion/runtime/AttributeCollection~ java/lang/Object� ([Ljava/lang/Object;)V �
� getMetadata ()Ljava/lang/Object; this Lcfsetup_en2ecfm1709955004; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage out Ljavax/servlet/jsp/JspWriter; value processingdirective5 /Lcoldfusion/tagext/lang/ProcessingDirectiveTag; mode5 I silent0  Lcoldfusion/tagext/io/SilentTag; mode0 t8 Ljava/lang/Throwable; t9 t10 t11 t12 t13 output1  Lcoldfusion/tagext/io/OutputTag; mode1 t16 t17 t18 t19 output2 mode2 t22 t23 t24 t25 output3 mode3 t28 t29 t30 t31 output4 mode4 t34 t35 t36 t37 t38 t39 t40 t41 LineNumberTable java/lang/Throwable� <clinit> 1                      3 4    V 4    u v    � 4   z{    �� �   "     �}�   �       ��      �   ]     +*+,� **+,� � **+,� � **+,� � !�   �        +��     +��    +��  �� �  L  *  d*� (� .L*� 2N*� >-� B� D:*� H� L� Q� UY6��*� Z� B� \:*� H� Q� ]Y6� /*+� aL� d���� � :� �:	*+� hL�	� m� :
� &��
�� � #:� q� � :� �:� t�� x**� � zY|S� �� ��   4       .   �   �   �   �   �   �     	      $  -  6  ?  H  Q  Z  c  l  u  ~  �  �  �  �  �  �  �  �  �  �  �  �  �  �           )  2  ;  D  M    �  z+�� ��q+�� ��h+�� ��_+�� ��V+�� ��M+�� ��D+�� ��;+�� ��2+�� ��)+�� �� +�� ��+�� ��+�� ��+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+¶ ��~+Ķ ��u+ƶ ��l+ȶ ��c+ʶ ��Z+̶ ��Q+ζ ��H+ж ��?+Ҷ ��6+Զ ��-+ֶ ��$+ض ��+ڶ ��+ܶ ��	+޶ �� +� ���*� �� B� �:*7� H� Q� �Y6� X+� �+**� � zY�SY�S� �� �� �+�� �+**� � zY�SY�S� �� �� �*+�� �� ������ :� &���� � #:�� � :� �:���>*� �� B� �:*<� H� Q� �Y6� Y+� �+**� � zY�SY�S� �� �� �+�� �+**� � zY�SY�S� �� �� �*+�� �� ������ :� &���� � #:�� � :� �:����*� �� B� �:*A� H� Q� �Y6� Y+� �+**� � zY�SY�S� �� �� �+�� �+**� � zY�SY�S� �� �� �*+�� �� ������ :� &�4�� � #:�� � :� �:��� �*� �� B� �: *F� H � Q � �Y6!� Y+
� �+**� � zY�SY�S� �� �� �+�� �+**� � zY�SY�S� �� �� �*+�� � � ���� �� :"� &� z"�� � #:# #�� � :$� $�:% ��%� *� !�� *+�� �� d��� m� :&� #&�� � #:''�x� � :(� (�:)�y�)� 0 \ q t� t y t� Q � �� � � �� Q � �� � � �� � � �� � � ��B�������B����������������kw�qtw��k��qt��w��������%1�+.1��%@�+.@�1=@�@E@�o�������o��������������� , �B� ��B��kB�q%B�+�B��6B�<?B� , �Q� ��Q��kQ�q%Q�+�Q��6Q�<?Q�BNQ�QVQ� �  � *  d��    d��   d�{   d / 0   d��   d��   d��   d��   d��   d�{ 	  d�{ 
  d��   d��   d�{   d��   d��   d�{   d��   d��   d�{   d��   d��   d�{   d��   d��   d�{   d��   d��   d�{   d��   d��   d�{   d��    d�� !  d�{ "  d�� #  d�� $  d�{ %  d�{ &  d�� '  d�� (  d�{ )�  � j 7  � 
 � 
 � 
 � 
� � � � � � � � � � �    " + 4 = F O X  a !j "s #| $� %� &� '� (� )� *� +� ,� -� .� /� 0� 1� 2 3 4 5 6T 9T 9T 9T 9S 9w :w :w :w :v :' 7' 7 > > > > >1 ?1 ?1 ?1 ?0 ?� <� <� C� C� C� C� C� D� D� D� D� D� A� A� H� H� H� H� H� I� I� I� I� IT FT F L L L L L L L � 
         �   #     *� 
�   �       ��   �  �  �    �6� <� >X� <� Z� <� �Y�#�*��!�#�%$�'�)�++�-�/&�1	�3�5�7�9
�;�=)�?�A�C�E!�G�I�K�M�O(�Q�S�U�W-�Y �[�],�_%�a�c.�e'�g�i�k�m�o�q�s�u�w"�� x�Y�����}�   �      ���         "    #