����  -, 
SourceFile 8/CFIDE/administrator/cftags/resources/datasources_en.cfm cfdatasources_en2ecfm885599311  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   
ATTRIBUTES Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   CALLER   	   BSUCCESS   	    com.macromedia.SourceModTime  R^�o pageContext #Lcoldfusion/runtime/NeoPageContext; % &	  ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
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
  � ;Invalid extension of the file name. Valid extensions are :  � write (Ljava/lang/String;)V � � java/io/Writer �
 � � DB2 Universal Database � @Data &amp; Services &gt; Datasources &gt; DB2 Universal Database � CF Data Source Name � ColdFusion datasouce name � Database � <Enter the database name that corresponds to the data source. � Server � NEnter the IP address or host name of the server on which the database resides. � Port � :Enter the port that is used to access the database server. � 	User name � <Enter the user name if the database requires authentication. � Password � ZEnter the password corresponding to the User name if the database requires authentication. � Description � Hide Advanced Settings � Show Advanced Settings � Submit � Cancel � Connection String � kEnter name/value pairs for vendor-specific connection string arguments. The format is typically name=value. � Limit Connections � 7Select the checkbox to enable the max connection limit. � Restrict connections to � Maintain Connections � �Select the checkbox to enable server connection pooling for your data source. This is highly recommended to increase performance. � ,Maintain connections across client requests. � String Format � �By default, ColdFusion uses ASCII to format string characters. This optimizes performance for languages with Latin based alphabets. � CEnable Unicode for data sources configured for non-Latin characters � Max Pooled Statements � Timeout (min) � |Enter a time, in minutes, that the server allows a data source connection to remain inactive before closing that connection. � Interval (min) � aEnter a time, in minutes, that the server waits before closing an expired data source connection. � Query Timeout (seconds) � Log Activity � <Log database-related method calls to the specified log file. � Log database calls to � Browse Server � Default Driver � /Data &amp; Services &gt; Datasources &gt; Other � JDBC URL � 2Enter the JDBC Connection URL for this datasource. � Driver Class � Enter the JDBC Class. � Driver Name � Enter the JDBC Driver. � Apache Derby Client � =Data &amp; Services &gt; Datasources &gt; Apache Derby Client � Apache Derby Embedded � ?Data &amp; Services &gt; Datasources &gt; Apache Derby Embedded � CF datasource name � Database Folder � Create Database � 5Select the checkbox if the database has to be created � ColdFusion User name � ColdFusion Password � other %
data source updated successfully.
 Data Sources %Data &amp; Services &gt; Data Sources �
Add and manage your data source connections and Data Source Names (DSNs).<br />
You use a DSN to connect ColdFusion to a variety of data sources.
	 Add New Data Source Data Source Name Driver  Add  Connected Data Sources Actions Sort by data source name Sort by driver Status OK Edit Verify! Delete# 1Are you sure you want to delete this data source?% �This data source is currently the default client variable database. \n You must select a new default client store before deleting this data source.' Verify All Connections) Informix+ 2Data &amp; Services &gt; Datasources &gt; Informix- Informix Server/ CEnter the Informix server name that corresponds to the data source.1 0JNDI environment variables not in correct format3 &format: name=value followed by a comma5 	JNDI Name7 (Enter the JNDI name for this datasource.9 JNDI Environment Settings; nEnter name/value pairs for JNDI environment variables. The format is typically name=value followed by a comma.= JDBC to ODBC Bridge? ODBC DSNA D
Enter the ODBC data source name that the bridge will connect to.
C Microsoft AccessE �
The ColdFusion ODBC Server service is not running or has not been installed.
You may also use the "MS Access with Unicode" driver to connect to MS Access datasources.
G :Data &amp; Services &gt; Datasources &gt; Microsoft AccessI Database FileK System Database FileM Use Default User nameO Page TimeoutQ Max Buffer SizeS Default User NameU DEnter the default user name if the database requires authentication.W Default PasswordY AEnter the default password corresponding to the default username.[ Return TimeStamp as String] GData &amp; Services &gt; Datasources &gt; Microsoft Access with Unicode_ �
The standalone MySQL JDBC driver is no longer shipped with ColdFusion.<br />
Please download it, put it in cf_root/lib folder and restart ColdFusion.<br />
a MySQL 5c 1Data &amp; Services &gt; Datasources &gt; MySQL 5e Usernameg YEnter the password corresponding to the Username if the database requires authentication.i MySQL_DDk 2Data &amp; Services &gt; Datasources &gt; MySQL_DDm ColdFusion datasource nameo ODBC Socketq P
The ColdFusion ODBC Server service is not running or has not been installed.
s 5Data &amp; Services &gt; Datasources &gt; ODBC Socketu Trusted Connectionw Oracley 0Data &amp; Services &gt; Datasources &gt; Oracle{ SID Name} @Enter the System Identifier that corresponds to the data source. Oracle Linked Servers� LCheck this to enable Oracle linked servers. This is the recommended setting.� %Enable Oracle linked servers support.� 
PostgreSQL� 4Data &amp; Services &gt; Datasources &gt; PostgreSQL� Microsoft SQL Server� >Data &amp; Services &gt; Datasources &gt; Microsoft SQL Server� Select Method� ]Enable High ASCII characters and Unicode for data sources configured for non-Latin characters� ApplicationIntent� Sybase� 0Data &amp; Services &gt; Datasources &gt; Sybase� Application name prefix to use� AValidation query to use. If not specified JDBC APIs will be used.� Disable Connections� 6Check this box to disable connections to data sources.� Suspend all client connections.� Login Timeout (sec)� CLOB� -Check this box to enable long text retrieval.� "Enable long text retrieval (CLOB).� BLOB� 7Check this box to enable binary large object retrieval.� ,Enable binary large object retrieval (BLOB).� Long Text Buffer (chr)� Blob Buffer(bytes)� Disable Autogenerated Keys� 9Check this box to disable retrieving auto generated keys.� 'Disable retrieval of autogenerated keys� Allowed SQL� SELECT� CREATE� GRANT� INSERT� DROP� REVOKE� UPDATE� ALTER� Stored Procedures� DELETE� Validate Connection� Enable connection validation� Validation Query� Client Information� Client Hostname� Client Username� Application Name� Prefix� $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag�� 4	 � coldfusion/tagext/io/OutputTag�
� T #
Error editing/creating this dsn (� DSN� _String &(Ljava/lang/Object;)Ljava/lang/String;�� coldfusion/runtime/Cast�
�� EncodeForHTML &(Ljava/lang/String;)Ljava/lang/String;��
 � 	)<br />
� CFCATCH� MESSAGE� <br />
� DETAIL�
� c coldfusion/tagext/QueryLoop
 j
 p
� s _factor0 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object;
 	 �
Trying to create a data source with a name that is the same as an existing data source.<br />
Please enter in a unique data source name, or edit the existing data source.
 �
Trying to create a data source with a name that is invalid. Data source Names must match ColdFusion variable naming conventions
 (
You must select a valid driver type.
 %
Please enter in a valid dsn name.
 
Select a valid driver type:
 Not Specified Error -
A ODBC Datasource Name is required.<br />
 =
A page timeout value greater then zero is required.<br />
 _factor1
  +
Unable to update the NT registry.<br />
  6
Unable to update the ColdFusion ODBC Server.<br />
" _factor2$
 % G
A ODBC Datasource must be selected before submitting changes.<br />
' _factor3)
 * 0
Error accessing available odbc datasources. - , 
STACKTRACE. _factor40
 1 2
Connection verification failed for data source: 3 REQUEST5 
ESAPIUTILS7 _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;9:
 ; encodeForHTMLFilePath= java/lang/Object? _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;AB
 C _factor5E
 F falseH set (Ljava/lang/Object;)VJK coldfusion/runtime/VariableM
NL coldfusion/runtime/SwitchTableP
Q 	 	SID_TITLES addStringCase 5(Ljava/lang/String;I)Lcoldfusion/runtime/SwitchTable;UV
QW JNDIENVIROSETTINGS_TITLEY DRIVER NAME[ SENDSTRINGPARAMETERSASUNICODE] DATABASE_TITLE_ DRIVER_TITLEa MSACCESS_PAGEHEADERc ADD_NEW_DSNe "SENDSTRINGPARAMETERSASUNICODELABELg 
DS_STAT_OKi CONNECTIONSTRINGk ACCESS_SQLEXECUTIVE_UPDATEERRORm MYSQLPASSWORD_TITLEo LARGEOBJECTRETRIEVAL_BLOB_TITLEq SERVERs APPNAMEPREFIXHINTu DEFAULTPASSWORD_TITLEw SHOWADVANCEDSETTINGSy BUTTON_VERIFY{ VALIDATIONQUERYLABEL} BUTTON_DELETE MAXPOOLEDSTATEMENTS� APPLICATIONINTENT� DESCRIPTION� MYSQLDRIVER� BUTTON_VERIFYALL� DEFAULTUSERNAME_TITLE� ODBC_DSN_TIP� USETRUSTEDCONNECTION� ERROR_DRIVER_NOT_SPECIFIED� SQLSERVERDRVR� DRIVERCLASS� 
CFUSERNAME� USETRUSTEDCONNECTION_TITLE� BRIDGE� MSACCESSJETEDIT_ERROR� USESPYLOGLABEL� DEFAULTDRIVER� DRIVERTYPE_ERROR� ACTIONS� MSACCESSEDIT_ERROR� DB2_PAGEHEADER� SUPPORTLINKSLABEL� ODBC_NO_DSN_SELECTED_ERROR� ERRORACCESSINGODBCDATASOURCE� JNDINAME_TITLE� PORT� #SENDSTRINGPARAMETERSASUNICODE_TITLE� TIMEOUT_TITLE� MYSQLDD_DATASOURCENAME_TITLE� INTERVAL_TITLE� SUSPENDALLCONNECTIONS� RETURNTIMESTAMP� BROWSESERVER� DERBYDATASOURCENAME_TITLE� DATASOURCENAME� VALIDATECONNECTIONTEXT� WELCOME� SEQUELLINKDISABLEDODBC� 
SOCKETDRVR� 
SYBASEDRVR� PAGETIMEOUT� ODBC_ACCESS_SQLEXECUTIVE_ERROR� DISABLEAUTOGENKEYS� JAR_WARNING� DERBYEMBEDDED_PAGEHEADER� 
BLOBBUFFER� SUBMIT� INFORMIXSERVER� ODBC_DSN� ERRMSG� CLIENTHOSTNAME� MAXCONNECTIONS_ENABLE� LONGTEXTBUFFER� DATABASEFOLDER� JDBCURL_TITLE� MSSQL_PAGEHEADER� LOGINTIMEOUT� 	CONNECTED� VALIDATEQUERYHINT� PASSWORD� MYSQL_PAGEHEADER� MAXCONNECTIONS_LIMIT� ACCESS_REGISTRY_ERROR� PAGETIMEOUT_ERROR� CONNECTIONSTRING_TITLE SUPPORTLINKS VALIDATECONNECTIONLABEL MYSQLDDD_PAGEHEADER ENABLEMAXCONNECTIONS_TITLE	 
CLIENTINFO CLASS_TITLE MYSQLDDDRIVER 
EDIT_ERROR PAGEHEADER_DATASOURCES 
ORACLEDRVR DATASOURCENAME_TITLE HIDEADVANCEDSETTINGS USEDEFAULTUSERNAME ERROR_VERIFY SQLSERVEREDIT_ERROR CREATEDATABASE_TITLE! DISABLEAUTOGENKEYS_TITLE# DATABASEFILE% PASSWORD_TITLE' ODBCEDIT_ERROR) DEFAULTCLIENTSTORE_CANTDELETE+ DEFAULTPASSWORD- INFORMIXSERVER_TITLE/ OTHER_PAGEHEADER1 SUPPORTLINKS_TITLE3 DATABASE5 CREATEDATABASE7 USERNAME_TITLE9 LONGTEXTRETRIEVAL_CLOB; ENBALELARGEOBJECTRETRIEVAL_BLOB= 
CLIENTUSER? DERBYEMBEDDEDDRIVERA SENDSTRINGPARAMETERSASUNICODE1C ENABLELONGTEXTRETRIEVAL_CLOBE NO_DSN_SELECTED_ERRORG SYBASE_PAGEHEADERI INVALIDNAME_ERRORK !MAINTAINCONNECTIONSACROSSREQUESTSM POSTGRESQL_PAGEHEADERO UNIQUENAME_ERRORQ SIDS SORT_DSNU JDBCURLW APPLICATIONNAMEY DRIVER[ USESPYLOG_TITLE] DERBYEMBDATASOURCENAME_TITLE_ DS_STAT_ERRORa MSACCESSDRVRc INFORMIX_PAGEHEADERe STOREDPROCEDURESg MYSQLUSERNAMEi LARGEOBJECTRETRIEVAL_BLOBk MSACCESSJET_PAGEHEADERm USERNAMEo DISABLEAUTOGENKEYSSUPPORTq ACCESS_SQLEXECUTIVE_ERRORs SORT_DRIVERu DATASOURCE_UPDATEDSUCCESSFULLYw MAINTAINCONNECTIONSy JNDIENVIROSETTINGS{ 
BUTTON_ADD} ODBCSOCKET_PAGEHEADER MAXBUFFERSIZE� DERBYCLIENT_PAGEHEADER� DELETE_DATASOURCE_CONFIRMATION� POSTGRESQLDRIVER� DERBYCLIENTDRIVER� 	DSN_ERROR� APPLICATIONNAMEPREFIX� JNDINAME� DISABLECONNECTIONS_TITLE� ERRDTL� RETURNTIMESTAMP_TITLE� SERVER_TITLE� TIMEOUT� INFORMIXDRIVER� DISABLECONNECTIONS� LONGTEXTRETRIEVAL_CLOB_TITLE� DEFAULTUSERNAME� SYSTEMDATABASEFILE� BUTTON_EDIT� QUERYTIMEOUT� 
CFPASSWORD� STATUS� MAINTAINCONNECTIONS_TITLE� DB2� SELECTMETHOD� INTERVAL� PAGENAME_DATASOURCES� DRIVER_ERROR� 	USESPYLOG� 
OTHERMEOMY� SEQUELLINKDISABLED� NEED_VALID_FILE_EXTENSION� ORACLE_PAGEHEADER� 
PORT_TITLE� 
ALLOWEDSQL� CANCEL� 
� _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V��
 � _factor6�
 �
 D p
 D s _factor7�
 � metaData Ljava/lang/Object;��	 � &coldfusion/runtime/AttributeCollection� ([Ljava/lang/Object;)V �
�� getMetadata ()Ljava/lang/Object; this  Lcfdatasources_en2ecfm885599311; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; __factorParent out Ljavax/servlet/jsp/JspWriter; value silent0  Lcoldfusion/tagext/io/SilentTag; mode0 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 output3  Lcoldfusion/tagext/io/OutputTag; mode3 t14 t15 t16 t17 output4 mode4 t20 t21 t22 t23 output5 mode5 t26 t27 t28 t29 output7 mode7 t32 t33 t34 t35 output9 mode9 t38 t39 t40 t41 LineNumberTable java/lang/Throwable processingdirective12 /Lcoldfusion/tagext/lang/ProcessingDirectiveTag; mode12 output1 mode1 output2 mode2 runPage output10 mode10 output11 mode11 output6 mode6 <clinit> output8 mode8 1                      3 4    V 4    u v   � 4   ��    �� �   "     �ڰ   �       ��      �   ]     +*+,� **+,� � **+,� � **+,� � !�   �        +��     +��    +��     �   #     *� 
�   �       ��   � �  �  *  �*� Z+� B� \:*� H� Q� ]Y6� /*,� aM� d���� � :� �:*,� hM�� m� :� #�� � #:		� q� � :
� 
�:� t�� x**� � zY|S� �� ��  B       �    "  +  4  =  F  O  X  a  j  s  |  �  �  �  �  �  �  �  �  �  �  �  �  �  �          '  0  9  B  K  T  ]  f  o  x  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �        #  ,  6  @  J  T  ^  h  r  |  �  �  �  �  �  �  �  �  �  �  �  �  �        &  0  :  D  N  X  b  l  v  �  �  �  �  �  �  �  �  �  �  �  �  �  �        "  ,  6  @  J  T  ^  h  r  |  �  �  �  �  �  �  �  �  �  �  �  �  �        &  0  :  D  N  X  b  l  v  �  �  �  �  �  �  �  �  �  �  �  �  �  	  	  	  	   	*  	4  	>  	H  	R  	\  	f  	p  	z  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  
  
  
  
�  �  �  �  �  t  �  $  3,�� ��0,�� ��',�� ��,�� ��,�� ��,�� ��,�� ��
�,�� ��
�,�� ��
�,�� ��
�,�� ��
�,�� ��
�,�� ��
�,�� ��
�,�� ��
�,�� ��
�,�� ��
�,�� ��
�,�� ��
�,�� ��
�,�� ��
|,�� ��
s,�� ��
j,�� ��
a,�� ��
X,�� ��
O,�� ��
F,¶ ��
=,Ķ ��
4,ƶ ��
+,ȶ ��
",ʶ ��
,̶ ��
,ζ ��
,ж ��	�,Ҷ ��	�,Զ ��	�,ֶ ��	�,ض ��	�,ڶ ��	�,ܶ ��	�,޶ ��	�,� ��	�,� ��	�,� ��	�,� ��	�,� ��	�,� ��	�,� ��	�,� ��	w,� ��	n,�� ��	e,� ��	\,�� ��	S,�� ��	J,�� ��	A,�� ��	8,�� ��	/,�� ��	&, � ��	,� ��	,� ��	,� ���,� ���,
� ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���, � ��|,"� ��r,$� ��h,&� ��^,(� ��T,*� ��J,,� ��@,.� ��6,0� ��,,2� ��",4� ��,6� ��,8� ��,:� ���,<� ���,>� ���,@� ���,B� ���,D� ���,F� ���,H� ���,J� ���,L� ���,N� ���,P� �����,R� ��,T� ��u,V� ��k,X� ��a,Z� ��W,\� ��M,^� ��C,�� ��:,`� ��0,b� ��&,d� ��,f� ��,h� ��,j� ���,l� ���,n� ���,p� ���,r� ���,t� ���,v� ���,x� ���,z� ���,|� ���,~� ���,�� ���,�� ���,�� ��|,�� ��r,�� ��h,�� ��^,�� ��T,�� ��J,�� ��@,�� ��6,�� ��,,�� ��",�� ��,�� ��,�� ��,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ��x,�� ��n,�� ��d,�� ��Z,�� ��P,¶ ��F,Ķ ��<,ƶ ��2,ȶ ��(,ʶ ��,̶ ��,ζ ��
,ж �� ,Ҷ ���,Զ ���,ֶ ���,ض ���,ڶ ���,ܶ ���,޶ ���,� ���*+,�
� ���,� ���,� ���,� ���,� ��y,� ��o,� ��e,� ��[,� ��Q,� ��G*+,�� ��8*��+� B��:*�� H� Q��Y6� r,!� �,*�� H**� � zY�SY�S� ����� �,�� �,*�� H**� � zY�SY S� ����� �,�� ������� :� #�� � #:�� � :� �:���h*��+� B��:*�� H� Q��Y6� r,#� �,*�� H**� � zY�SY�S� ����� �,�� �,*�� H**� � zY�SY S� ����� �,�� ������� :� #�� � #:�� � :� �:����*��+� B��:*�� H� Q��Y6� r,#� �,*�� H**� � zY�SY�S� ����� �,�� �,*�� H**� � zY�SY S� ����� �,�� ������� :� #�� � #:�� � :� �:����*+,�&� ���,(� ���*��+� B��:*ʶ H� Q��Y6� r,#� �,*̶ H**� � zY�SY�S� ����� �,�� �,*Ͷ H**� � zY�SY S� ����� �,�� ������� : � # �� � #:!!�� � :"� "�:#��#� �*+,�+� �� �*��	+� B��:$*ֶ H$� Q$��Y6%� B,-� �,*׶ H**� � zY�SY�S� ����� �,�� �$����$�� :&� #&�� � #:'$'�� � :(� (�:)$��)� .*+,�2� �� *+,�G� �� *� !I�O� *,ʶ�*� & $ 9 < < A <  \ h b e h  \ w b e w h t w w | w
�Zf`cf
�Zu`cufruuzu�*6036�*E03E6BEEJEt� t� ^�����^����������>�����>����������� �  � *  ���    �� 0   ���   ���   ���   ���   ���   ���   ���   ��� 	  ��� 
  ���   ���   ���   ���   ���   ���   ���   � �   ��   ��   ��   ��   ��   ��   ��   ��   �	�   �
�   ��   ��   ��   ��    �� !  �� "  �� #  �� $  �� %  �� &  �� '  �� (  �� )  �&    �  �  �  � � � � � � �  � "� $  &	 ( * ,$ .- 06 2? 4H 6Q 8Z :c <l >u @~ B� D� F� H� J� L� N� P� R� T� V� X� Z� \� ^ ` b d  f) h2 j; lD nM pV r_ th vq xz z� |� ~� �� �� �� �� �� �� �� �� �� �� �� � � � �% �/ �9 �C �M �W �a �k �u � �� �� �� �� �� �� �� �� �� �� �� �� � � � � �) �3 �= �G �Q �[ �e �h �r �| �� �� �� �� �� �� �� ������	�%/9CMWa!k#u%'�)�+�-�/�1�3�5�7�9�;�=�?	A	C	E	G	)I	3K	=M	GO	QQ	[S	eU	oW	yY	�[	�]	�_	�a	�c	�e	�g	�i	�k	�m	�o	�q	�s
u
w
y
#{
-}
7
A�
P�
Z�
d�
n�
x�
��
��
��
��
��
��
��
��
��
��
��
��
��
�����������
��
������������������������������������������������������������������������������Y�Y�)�8�x�x�x�x�x�x�x�x�p�������������������B�B��X�X�X�X�X�X�X�X�P�"�"������������������� �  � �  O     �*� >+� B� D:*� H� L� Q� UY6� *,��� :� =�� d���� m� :� #�� � #:�Ҩ � :	� 	�:
�ө
*�    9 _ ? S _ Y \ _   9 n ? S n Y \ n _ k n n s n �   p    ���     �� 0    ���    ���    �    ��    ���    ���    ���    ��� 	   ��� 
         �    
   �*��+� B��:*�� H� Q��Y6� �,� �,*�� H**� � zY�S� ����� �,�� �,*�� H**� � zY�SY�S� ����� �,�� �,*�� H**� � zY�SY S� ����� �,�� ����j�� :� #�� � #:�� � :� �:	��	*�   � � � � �  � � � � � � � � � � � �   f 
   ���     �� 0    ���    ���    ��    ��    ���    ���    ���    ��� 	   r  5� 5� 5� 5� 5� 5� 5� 5� -� _� _� _� _� _� _� _� _� W� �� �� �� �� �� �� �� �� ��  �  �    
   �*��+� B��:*�� H� Q��Y6� �,� �,*�� H**� � zY�S� ����� �,�� �,*�� H**� � zY�SY�S� ����� �,�� �,*�� H**� � zY�SY S� ����� �,�� ����j�� :� #�� � #:�� � :� �:	��	*�   � � � � �  � � � � � � � � � � � �   f 
   ���     �� 0    ���    ���    � �    �!�    ���    ���    ���    ��� 	   r  5� 5� 5� 5� 5� 5� 5� 5� -� _� _� _� _� _� _� _� _� W� �� �� �� �� �� �� �� �� ��  � "� �   c     *� (� .L*� 2N*-+��� ��   �   *    ��     ��    ��     / 0         0 �  n  
  **��
+� B��:*ڶ H� Q��Y6� �,� �,*۶ H**� � zY�S� ����� �,�� �,*ܶ H**� � zY�SY�S� ����� �,�� �,*ݶ H**� � zY�SY S� ����� �,�� �,*޶ H**� � zY�SY/S� ����� �,�� ����:�� :� #�� � #:�� � :� �:	��	*�   �  � �   f 
  *��    *� 0   *��   *��   *#�   *$�   *��   *��   *��   *�� 	   � % 6� 6� 6� 6� 6� 6� 6� 6� .� `� `� `� `� `� `� `� `� X� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��  � E �  B  
  2*��+� B��:*� H� Q��Y6� �,4� �,*� H**� � zY�S� ����� �,�� �,*� H**6� zY8S�<>�@Y**� � zY�SY�S� �S�D�� �,�� �,*� H**6� zY8S�<>�@Y**� � zY�SY S� �S�D�� �,�� ����2�� :� #�� � #:�� � :� �:	��	*�  
 
$ �   f 
  2��    2� 0   2��   2��   2%�   2&�   2��   2��   2��   2�� 	   b  6� 6� 6� 6� 6� 6� 6� 6� .� {� {� `� `� `� `� X� �� �� �� �� �� �� ��  � $ �    
   �*��+� B��:*�� H� Q��Y6� �,� �,*�� H**� � zY�S� ����� �,�� �,*¶ H**� � zY�SY�S� ����� �,�� �,*ö H**� � zY�SY S� ����� �,�� ����j�� :� #�� � #:�� � :� �:	��	*�   � � � � �  � � � � � � � � � � � �   f 
   ���     �� 0    ���    ���    �'�    �(�    ���    ���    ���    ��� 	   r  6� 6� 6� 6� 6� 6� 6� 6� .� `� `� `� `� `� `� `� `� X� �� �� �� �� �� �� �� �� ��  � )  �  �    �6� <� >X� <� Z� <��QY�RT}�XZZ�X\/�X^�X`�Xb0�Xd`�XfA�Xh�XjJ�Xl�X� ��Xn ��Xpr�Xr ��Xt�Xv ��Xxj�Xz�X|L�X~ ��X�M�X��X� ��X� ��X��X�o�X�P�X�h�X�]�X�y�X� ��X� ��X�-�X�:�X�d�X�[�X� ��X�%�X�)�X� ��X�F�X� ��X��X�~�X� ��X� ��X�X�X�	�X��X�!�X�u�X�#�X� ��X�k�X�(�X�3�X��X� ��X�@�X�w�X�v�X� ��X�e�X� ��X� ��X�n�X�5�X� ��X��X�S�X�\�X�U�X� ��X� ��X��X� ��X�7�X�,�X� ��X� ��X�E�X� ��X��X�p�X�B�X��X� ��X  ��X�X ��X ��Xt�X� ��X
�X ��X.�Xs�X ��X?�Xz�X�X�Xc�X ¶X  ��X"9�X$ ��X&a�X(�X� ��X* ��X,O�X.i�X0T�X2*�X4�X6�X88�X:�X< ��X� ��X> ��X@ ��XB4�XD ��XF ��XH ��XJ ��XL ��XN�XP ��XR ��XT|�XVG�XX+�XZ ��X\C�X^&�X`6�Xb ��Xd^�XfR�Xh ��Xjq�Xl ��Xnm�Xp�Xr ��Xt ��XvH�Xx=�Xz�X� ��X|Y�X~D�X�x�X�f�X�2�X�N�X� ��X�1�X� ��X� ��X� ��X�W�X� ��X�V�X�l�X��X� �X�Q�X� ��X� ��X�g�X�b�X�K�X�$�X�;�X�I�X��X��X� ��X�"�X�>�X� ��X�'�X�<�X�_�X��X�{�X� ��X�
�X� ��X��X� x��Y�@�߳ڱ   �      ���   ) �    
   �*��+� B��:*ж H� Q��Y6� �,� �,*Ѷ H**� � zY�S� ����� �,�� �,*Ҷ H**� � zY�SY�S� ����� �,�� �,*Ӷ H**� � zY�SY S� ����� �,�� ����j�� :� #�� � #:�� � :� �:	��	*�   � � � � �  � � � � � � � � � � � �   f 
   ���     �� 0    ���    ���    �*�    �+�    ���    ���    ���    ��� 	   r  6� 6� 6� 6� 6� 6� 6� 6� .� `� `� `� `� `� `� `� `� X� �� �� �� �� �� �� �� �� ��  �       "    #