����  -  
SourceFile 4/CFIDE/administrator/cftags/resources/reports_en.cfm cfreports_en2ecfm1148195838  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   
ATTRIBUTES Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   BSUCCESS   	   com.macromedia.SourceModTime  R^�� pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	  # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	  - 3class$coldfusion$tagext$lang$ProcessingDirectiveTag Ljava/lang/Class; -coldfusion.tagext.lang.ProcessingDirectiveTag 1 forName %(Ljava/lang/String;)Ljava/lang/Class; 3 4 java/lang/Class 6
 7 5 / 0	  9 _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; ; <
  = -coldfusion/tagext/lang/ProcessingDirectiveTag ? _setCurrentLineNo (I)V A B
  C setSuppresswhitespace (Z)V E F
 @ G 	hasEndTag I F coldfusion/tagext/GenericTag K
 L J 
doStartTag ()I N O
 @ P $class$coldfusion$tagext$io$SilentTag coldfusion.tagext.io.SilentTag S R 0	  U coldfusion/tagext/io/SilentTag W
 X P 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; Z [
  \ doAfterBody ^ O
 L _ _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; a b
  c doEndTag e O #javax/servlet/jsp/tagext/TagSupport g
 h f doCatch (Ljava/lang/Throwable;)V j k
 L l 	doFinally n 
 L o 	__HTSWT_0 Lcoldfusion/util/FastHashtable; q r	  s java/lang/String u ID w _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; y z
  { __caseValue 4(Lcoldfusion/util/FastHashtable;Ljava/lang/Object;)I } ~
   M
When clicked generates a PDF with the ServerSettings in a new Window.
     � write (Ljava/lang/String;)V � � java/io/Writer �
 � � Save As PDF � Settings Summary � Report generated on � �
This report shows the status of all ColdFusion configuration settings.
To display the area of the ColdFusion Administrator where you can edit the group settings,
click any of the groups in the report.
 � 	Rendering � %Server Settings &gt; Settings Summary � System Information � Server Details � Server Product � Version � Edition � Serial Number � Operating System � 
OS Version � Update Level � Adobe Driver Version � JVM Details � Java Version � Java Vendor � Java Vendor URL � 	Java Home � Java File Encoding � Java Default Locale � File Separator � Path Separator � Line Separator � 	User Name � 	User Home � User Dir � Java VM Specification Version � Java VM Specification Vendor � Java VM Specification Name � Java VM Version � Java VM Vendor � Java VM Name � Java Specification Version � Java Specification Vendor � Java Specification Name � Java Class Version � CF Server Java Class Path � Java Class Path � Java Ext Dirs � Printer Details � Default Printer � Printers � Server Information � General Settings � Timeout requests � Enable Per App Settings � Request Time Limit � seconds � Use UUID for CFToken � Enable Whitespace Management � Disable Service Factory � Protect serialized JSON � Protect Serialized JSON Prefix � Missing Template Handler � Enable HTTP status codes � Enable Global Script Protection � ORMSearch Index Directory � "Default CFForm ScriptSrc Directory Google Map Key  )Allowed file extensions for CFInclude tag Maximum size of post data MB	 Request Throttle Threshold Request Throttle Memory Request Tuning Simultaneous request limit Flash Remoting request limit Web Service request limit CFC request limit CFThread Pool Size  Maximum number of report threads Request Queue Timeout Request Queue Timeout Page &Maximum number of running JRun threads! %Maximum number of queued JRun threads# Caching% Template cache size' 	templates) Enable trusted cache+ Cached query limit- Save Class Files/ Cache web server paths1 Client Variable Settings3 Default client variable store5 Purge Interval7 hours9 minutes; Client Stores= Type? DescriptionA Purge data after time limitC 
Time limitE daysG Disable global updatesI Memory VariablesK J2EE SessionsM Application VariablesO Enable Application VariablesQ Default TimeoutS Maximum TimeoutU Session VariablesW Enable session variablesY ColdFusion Mappings[ Mail Connection Settings] Default Server Port_ Connection Timeouta Spool Intervalc Mail Delivery Threadse "Maintain Connection to Mail Serverg Spool Messages Toi Max Messages Spooled to Memoryk Default CFMail Charsetm Use SSL Connectiono Use TLSq Default Mail Servers Backup Mail Serversu Serverw Porty Username{ Password} Mail Logging Settings Log Severity� *Log all E-mail messages sent by ColdFusion� Charting� 
Cache Type� images� !Maximum number of images in cache� "Maximum number of charting threads� Disk cache location� Java and JVM� Java virtual machine path� Initial memory size� Maximum memory size� 
Class path� JVM arguments� Data &amp; Services� Database Data Sources� CF data source name� Driver� JDBC URL� Login timeout� Long text buffer size� Timeout� Maintain connections� Interval� Restricted SQL operations� Disable connections� Web Services� PDF Service Manager Properties� 5Enable using webkit implementation for PDF conversion� List of PDF Service Managers� 	Host Name� Weight� Https Enabled� Service Manager Enabled� Remote Service Manager� Debugging &amp; Logging� Debugging Settings� Enable debugging� #Enable Robust Exception Information� Display format� Execution times� Execution time format� "Execution time highlight threshold� Database activity� Exception information� Tracing information� Timer Information� 	Variables� Application� CGI� Client� Cookie� Form� Request� Session� URL� Debugging IP Addresses� !Debugging IP Address Restrictions� Line Debugger Settings� Allow Line Debugging� Debugger Port� #Max Simultaneous Debugging Sessions� Logging Settings� Log directory� Maximum file size Maximum number of archives 'Use operating system logging facilities Log slow pages Slow page time limit	 Log CORBA calls Log scheduled tasks Schedule Tasks &amp; Probes Scheduled Tasks 
Start Date End Date 
Start Time End Time Proxy Server 
Proxy Port Save output to file Publish path! Publish filename# Resolve URLs% System Probes' Probe Settings) Notification Email Recipients+ Notification Sent From- Probe.cfm URL/ Probe.cfm Username1 Enabled3 Request Timeout5 Send Email Notifications7 Execute the Program9 
Extensions; Java Applets= Code? MethodA CodebaseC ArchiveE HeightG WidthI Vertical SpaceK Horizontal SpaceM 	AlignmentO Not supported messageQ Applet ParametersS CFX TagsU Tag nameW Server libraryY Keep library loaded[ 	Procedure] 
Class name_ Custom Tag Pathsa CORBAc Selected connectore noneg 
Connectorsi ORB class namek 	Classpathm ORB property fileo Event Gatewaysq Settingss Enable Event Gatewayu Thread Pool Sizew Max Queue Sizey Gateway Types{ Class} Kill On Timeout Security� CF Admin Authentication� 6Enable authentication for the ColdFusion Administrator� ?Allow access to ColdFusion Administrator with a Single password� RDS Authentication� $Enable authentication for RDS access� -Allow access through RDS with Single password� Secure Profile� Security Sandboxes� Enable ColdFusion Security� Enabled Data Sources� Disabled Tags� Disabled Functions� File/Directory Permissions� All files/directories� Sever/Port Permissions� All servers/ports� Site-wide Error Handler� false� set (Ljava/lang/Object;)V�� coldfusion/runtime/Variable�
�� coldfusion/runtime/SwitchTable�
� 	 PUBLISHFILENAME� addStringCase 5(Ljava/lang/String;I)Lcoldfusion/runtime/SwitchTable;��
�� 	VARIABLES� ENDTIME� REQUESTTIMEOUT� J2EESESSIONS� EVENTGATEWAYS� EXECUTIONTIMEHIGHLIGHTTHRESHOLD� USERDIR� CLIENT� REPORTTHREADS� TIMEOUTREQUESTS� CFPDFSERVICEHTTPS� 
SESSIONVAR� USECFADMINPASSWORD� ENDDATE� ENABLECFSECURITY� THREADPOOLSIZE� JVMPATH� JAVADEFAULTLOCALE� APPLETPARAMS� PDFGSERVICELIST� CLIENTSTORES� 	TEMPLATES� ENABLED� USEOSLOGGING� SITEWIDEERROR� SERVER� PATHSEPARATOR� FORM� ARCHIVE� SCHEDULEDTASKS� DESCRIPTION� 
MAXTIMEOUT� SECUREPROFILEENABLED� SERVICEFACTORY� 
CONNECTORS� SETTINGS_SUMMARY� COMPILEEXTFORINCLUDEKEY� 	CFDSNNAME  JAVACLASSVERSION SLOWPAGETIMELIMIT DEBUGIPADDRRESTRICTION ENABLETRUSTEDCACHE 	CACHETYPE
 ADOBEDRIVERVERSION JVMARGS NONE IMAGES JVMNAME DISABLEGLOBALUPDATES DISPLAYFORMAT DAYS EXECUTIONTIMES KILLONTIMEOUT CFFORMSCRIPTSRCDIR  SPOOLMESSAGESTO" TYPE$ ALLSERVERSPORTS& POSTSIZELIMIT( SEVERLIBRARY* EXCEPTIONINFO, TAGNAME. USESSL0 PORT2 
CLASSPATH14 WEBSERVICES6 MAXNUMBEROFCHARTTHREADS8 PRINTERS: USETLS< UPDLEVEL> FILESEPARATOR@ 
JAVAVENDORB NOTSUPPORTEDMESSAGED CACHINGF PASSWORDSECURITYH 	PURGEDATAJ USERHOMEL CACHEWEBSERVERPATHN SECURITYP LINESEPARATORR SERVER_SETTINGS_TIPT CFSERVERJAVACLASSPATHV METHODX ENABLESESSIONVARZ SECUREJSONPREFIX\ 
JAVAEXTDIR^ 
SERVERINFO` 
CFMAPPINGSb LOGGINGSETTINGSd JAVAVENDORURLf FLASHREMOTINGLIMITh DEFAULTTIMEOUTj CFPDFSERVICEPORTl VSPACEn RDSPASSWORDSECURITYp OSr LOGCORBACALLSt LONGTEXTBUFFERv CFPDFSERVICEWEIGHTx SCHEDULEDTASKSANDPROBESz MISSINGTEMPLATE| 	USERNAME1~ LOGINTIMEOUT� GOOGLEMAPKEY� 	TIMELIMIT� TEMPLATECACHESIZE� MAXJRUN� 	PROCEDURE� CFTHREADLIMIT� PASSWORD� 	CLASSPATH� LOGSLOWPAGES� ORBPROPFILE� 
SAVEOUTPUT� SERIALNUMBER� 	MAXQUEUED� LIMITS� LINEDEBUGGERENABLED� ENABLEROBUSTEXCEPTIONINFO� 	TIMERINFO� SETTINGS� REQUEST� RESTRICTEDSQLOPERATIONS� DISABLEDFUNCTIONS� ENABLEDEBUGGING� INITMEMORYSIZE� NOTIFICATIONEMAILRECIPIENTS� JVMSPECVERSION� 
JVMVERSION� SIMULTANIOUSREQUESTLIMIT� PERAPPSETTINGS� MAXIMAGESINCACHE� QUEUETIMEOUTPAGE� CACHEDQUERYLIMIT� CONNECTIONTIMEOUT� JVMSPECVENDOR� LOGSEVERITY� THROTTLETHRESHOLD� CLASS� ENABLEUSEWEBKIT� MAXQUEUESIZE� 
JAVAANDJVM� MEMORYVARIABLES� CFPDFSERVICEENABLED� JAVAHOME� DEFAULTMAILSERVER� PROBESETTINGS� SERVERPORTPERMISSIONS� SERVERPRODUCT� REPORT_GENERATED� REQUESTTIMELIMIT� 	CLASSNAME� DEBUGGINGIPADDR� SETTINGS_DESCRIPTION� JAVASPECNAME� LINEDEBUGGERSETTINGS� CODE� MAXNUMBOFACTIVITIES� TRACINGINFO� MESSAGESSPOOLEDTOMEMORY� 
SYSTEMINFO� L10N_PRINTERDETAILS� 	JVMVENDOR� SYSTEMPROBES� CFPDFSERVICEHOSTNAME� 
JVMDETAILS� PROXYSERVER  	OSVERSION DEFAULTPRINTER DISKCACHELOCATION APPLICATION JDBCURRL
 SPOOLINTERVAL THROTTLEMEMORY JAVAAPPLETS CHARTING DEFAULTCLIENTVARIABLESTORE WIDTH GETPDF ENABLEAPPVARIABLES HOURS DRIVER ALLFILEDIRECTORIES  JAVASPECVENDOR" SECONDS$ 	ALIGNMENT& DEFAULTSERVERPORT( USERDSPASSWORD* PAGEHEADER_SETTINGSUMMARY, CLIENTVARSETTINGS. PUBLISHPATH0 ENABLEDDATASOURCES2 SESSION4 DATASERVICES6 WEBSERVICELIMIT8 ENABLEHTTPSTATUSCODES: EXECUTIONTIMEFORMAT< JAVAVERSION> MAILCONNECTIONSETTINGS@ USERNAMEB PROBEUSERNAMED LOGSCHEDULEDTASKF 	PROXYPORTH GATEWAYTYPESJ GENERALSETTINGSL HEIGHTN MAINTAINCONNECTIONSP JAVAFILEENCODINGR PDFGSERVICET JAVASPECVERSIONV CODEBASEX SERVERDETAILSZ ORMSEARCHINDEXDIRECTORY\ BACKUPMAILSERVER^ USESINGLECFADMINPASSWORD` 
DBACTIVITYb ENABLEGLOBALSCRIPTPROTECTIONd JVMSPECNAMEf EDITIONh EXCUSETHEPROGRAMj LINEDEBUGGERPORTl HSPACEn SECURITYSANDBOXp PROBEURLr ORBCLASSNAMEt DEFAULTMAILCHARSETv CUSTOMTAGPATHSx JAVACLASSPATHz 
SECUREJSON| 	RENDERING~ CLIENTVARIABLEPUGEINTERVAL� DISABLECONNECTIONS� DBDATASOURCES� FILEDIRPERMISSIONS� QUEUETIMEOUT� SENDEMAILNOTIFICATIONS� NOTIFICATIONSENTFROM� CFXTAGS� COOKIE� DEBUGGINGSETTINGS� WHITESPACEMNGMT� CFCLIMIT� MAILDELIVERYTHREADS� 	STARTTIME� DEBUGGINGANDLOGGING� ENABLEEVENTGATEWAY� LOGDIR� TIMEOUT2� INTERVAL� 	STARTDATE� MAXDEBUGGINGSESSIONS� USESINGLERDSPASSWORD� KEEPLIBRARYLOADED� VERSION� SELECTEDCONNECTOR� CFPDFSERVICEREMOTE� MAILLOGGINGSETTINGS� USEUUIDFORCFTOKEN� MAXMEMORYSIZE� DISABLEDTAGS� MINUTES� MAINTAINCONNECTIONSTOMAILSERVER� APPVARIABLES� MAXFILESIZE� 
RESOLVEURL� SAVECLASSFILES� LOGEMAILMESSAGES� 
EXTENSIONS� _factor0 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object;��
 �
 @ l
 @ o _factor1��
 � metaData Ljava/lang/Object;��	 � &coldfusion/runtime/AttributeCollection� java/lang/Object� ([Ljava/lang/Object;)V �
�� getMetadata ()Ljava/lang/Object; this Lcfreports_en2ecfm1148195838; LocalVariableTable varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; __factorParent out Ljavax/servlet/jsp/JspWriter; value silent0  Lcoldfusion/tagext/io/SilentTag; mode0 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 LineNumberTable java/lang/Throwable� processingdirective1 /Lcoldfusion/tagext/lang/ProcessingDirectiveTag; mode1 runPage <clinit> 1                 / 0    R 0    q r   ��    �� ?   "     �ذ   �       ��      ?   Q     *+,� **+,� � **+,� � �   �        ��     ��    ��  �� ?  �    _*� V+� >� X:*� D� M� YY6� /*,� ]M� `���� � :� �:*,� dM�� i� :� #�� � #:		� m� � :
� 
�:� p�� t**� � vYxS� |� ��  �        M  V  _  h  q  z  �  �  �  �  �  �  �  �  �  �  �  �  �  �    
      %  .  7  @  I  R  [  d  m  v    �  �  �  �  �  �  �  �  �  �  �  �  �  �        !  *  3  <  E  N  W  `  i  s  }  �  �  �  �  �  �  �  �  �  �  �  �  �  	      '  1  ;  E  O  Y  c  m  w  �  �  �  �  �  �  �  �  �  �  �  �  �        !  +  5  ?  I  S  ]  g  q  {  �  �  �  �  �  �  �  �  �  �  �  �  �  	  	  	  	%  	/  	9  	C  	M  	W  	a  	k  	u  	  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  
  
  
  
  
)  
3  
=  
G  
Q  
[  
e  
o  
y  
�  
�  
�  
�  
�  
�  
�  
�  
�  
�  
�  
�  
�        #  -  7  A  K  U  _  i  s  }  �  �  �  �  �  �  �  �  �  �  �  �  �  	      '  1  ;  E  O  Y  c  m  w  �  �  �  �  �  �  �  �  �  �  �  �  �        !  +  5  ?  I  S  ]  g  q  {  �  �  �  �  �  �  �  �  �  �  �  �  �        %  /  9  C  M  W  a  k  u    �  �  �  �,�� ��
k,�� ��
b,�� ��
Y,�� ��
P,�� ��
G,�� ��
>,�� ��
5,�� ��
,,�� ��
#,�� ��
,�� ��
,�� ��
,�� ��	�,�� ��	�,�� ��	�,�� ��	�,�� ��	�,�� ��	�,�� ��	�,�� ��	�,�� ��	�,�� ��	�,�� ��	�,�� ��	�,�� ��	�,�� ��	�,�� ��	�,�� ��	x,�� ��	o,¶ ��	f,Ķ ��	],ƶ ��	T,ȶ ��	K,ʶ ��	B,̶ ��	9,ζ ��	0,ж ��	',Ҷ ��	,Զ ��	,ֶ ��	,ض ��	,ڶ ���,ܶ ���,޶ ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���,�� ���,�� ��|,�� ��s,�� ��j,�� ��a,�� ��X, � ��N,� ��D,� ��:,� ��0,� ��&,
� ��,� ��,� ��,� ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���, � ���,"� ���,$� ���,&� ���,(� ���,*� ��|,,� ��r,.� ��h,0� ��^,2� ��T,4� ��J,6� ��@,8� ��6,:� ��,,<� ��",>� ��,@� ��,B� ��,D� ���,F� ���,H� ���,J� ���,L� ���,N� ���,P� ���,R� ���,T� ���,V� ���,X� ���,Z� ���,\� ���,^� ��x,`� ��n,b� ��d,d� ��Z,f� ��P,h� ��F,j� ��<,l� ��2,n� ��(,p� ��,r� ��,t� ��
,v� �� ,x� ���,z� ���,|� ���,~� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ��~,�� ��t,�� ��j,�� ��`,�� ��V,�� ��L,�� ��B,�� ��8,�� ��.,�� ��$,�� ��,�� ��,�� ��,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,z� ���,�� ���,¶ ��z,Ķ ��p,ƶ ��f,ȶ ��\,ʶ ��R,̶ ��H,ζ ��>,ж ��4,Ҷ ��*,Զ �� ,ֶ ��,ض ��,ڶ ��,ܶ ���,޶ ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���,�� ���,�� ��v,�� ��l,�� ��b,�� ��X,�� ��N, � ��D,� ��:,� ��0,� ��&,� ��,
� ��,� ��,� ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���, � ���,"� ���,$� ���,&� ���,(� ��|,*� ��r,,� ��h,.� ��^,0� ��T,2� ��J,4� ��@,6� ��6,8� ��,,:� ��",<� ��,>� ��,@� ��,B� ���,D� ���,F� ���,H� ���,J� ���,L� ���,N� ���,P� ���,R� ���,T� ���,V� ���,X� ���,Z� ���,\� ��x,^� ��n,`� ��d,b� ��Z,d� ��P,f� ��F,h� ��<,j� ��2,l� ��(,n� ��,p� ��,r� ��
,t� �� ,v� �� �,x� �� �,z� �� �,|� �� �,~� �� �,�� �� �,�� �� �,�� �� �,�� �� �,�� �� �,�� �� �,�� �� �,�� �� ~,�� �� t,�� �� j,�� �� `,�� �� V,�� �� L,�� �� B,�� �� 8,�� �� .,�� �� $,�� �� ,�� �� *� ���� *�  $ 9 <� < A <�  \ h� b e h�  \ w� b e w� h t w� w | w� �   z   _��    _� ,   _��   _��   _��   _��   _��   _��   _��   _�� 	  _�� 
  _�� �  v    �  �  �  � � � �     &" (+ *4 ,= .F 0O 2X 4a 6j 8s :| <� >� @� B� D� F� H� J� L� N� P� R� T� V� X Z \ ^ `' b0 d9 fB hK jT l] nf po rx t� v� x� z� |� ~� �� �� �� �� �� �� �� �� �� � � � �& �0 �: �D �N �X �b �l �v �� �� �� �� �� �� �� �� �� �� �� �� �� � � � �  �* �4 �> �H �R �\ �f �p �z �� �� �� �� �� �� �� �� �� �� �� �� �� �	 �	 �	 �	$ 	.	8	B	L	V
	`	j	t	~	�	�	�	�	�	�	� 	�"	�$	�&	�(	�*
 ,

.
0
2
(4
26
<8
F:
P<
Z>
d@
nB
xD
�F
�H
�J
�L
�N
�P
�R
�T
�V
�X
�Z
�\
�^`bd"f,h6j@lJnTp^rhtrv|x�z�|�~�����������������������&�0�:�D�N�X�b�l�v������������������������������ �*�4�>�H�R�\�f�p�z������������������������������$ .8BLV
`jt~������� �"�$�&�(�* ,
.02(426<8F:T=T=T=T=P=P=P= �  �� ?  N     �*� :+� >� @:*� D� H� M� QY6� *,��� :� =�� `���� i� :� #�� � #:�Ш � :	� 	�:
�ѩ
*�   8 ^� > R ^� X [ ^�  8 m� > R m� X [ m� ^ j m� m r m� �   p    ���     �� ,    ���    ���    ���    ���    ���    ���    ���    ��� 	   ��� 
�        �� ?   c     *� $� *L*� .N*-+��� ��   �   *    ��     ��    ��     + , �           ?   #     *� 
�   �       ��   �  ?  	Q    	32� 8� :T� 8� V��Y��� ϶�� ���� ʶ�� ض��c��� ���� ������� ����J���0��� ����h��� ��� ȶ����� ���� ������� ��� ����[���Q��� ׶�� �������x������ ���� ��� ƶ��]���g������6��� ������?�� ���'�� ¶� ���	R�� ����� ��� �� ���#��a�� ���`�� ��� ���!=��#q��%\��'��)@��+ ��- ���/ ��1t��3y��5 ���7 ���9 ���;-��=u��?��A��C��E ��GO��I ���K^��M��OU��Q ���S��U��W(��Y ޶�[i��]8��_*��a.��cj��e ���g��iF��kf��m ���o ��q��s��u ö�w ���y ���{ Ŷ�}9����� ����>���_���P���M��� ���I���{��� ���� ���� ���� Ͷ�����N���D��� ���� ���� ���� ���� ���� ����
��� ���� ���� Ӷ�����!���E���1��� ����L���S���m������}���B��� ���� ���� ���� ����b��� �������v��� Ҷ�����	������2��
A��� ���� �������&��� ���� ݶ�� ���� ����r������+���"��� Ѷ�� ������ ˶���,�� ���	 ��� ���n��C�� ܶ���W�� ����e��Y�� ���!��#%��%3��' ��)l��+��-��/V��1 ζ�3��5 ���7 ���9G��;:��= ���?��Ak��Cz��E ֶ�G Ķ�I ̶�K ���M/��O ��Q ���S��U ���W$��Y ߶�[��]<��_w��a��c ���e;��g ��i��k ڶ�m ���o ��q��s ն�u ��ws��y ��{)��}7�����X��� ���� �������K��� ٶ�� Զ�� ��� ���� ���� ����5���H���o��� ɶ�� ���� ���� ���� ���� ���� Ƕ�� ������� ���� ���
��� ��� ����|���4��d ��� ����	���Z���p���d��� ���� ж��T���~��� ۶�� t��Y�ܷ߳ر   �      	3��             