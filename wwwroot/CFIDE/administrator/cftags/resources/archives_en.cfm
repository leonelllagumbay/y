����  -� 
SourceFile 5/CFIDE/administrator/cftags/resources/archives_en.cfm cfarchives_en2ecfm1263911993  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   
ATTRIBUTES Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   BSUCCESS   	   com.macromedia.SourceModTime  R^�` pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	  # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
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
   Archive Wizard � write (Ljava/lang/String;)V � � java/io/Writer �
 � � Build CAR File Archive � Deploy Wizard � Archives and Deployment � �Sorry, but in order to use this application, you must enable session variables.
You may do so by enabling session variables on the "Memory Variables" page. � 3Packaging &amp; Deployment &gt; ColdFusion Archives � �
Enter the path or browse to the appropriate CAR file to deploy the files to this server and
update the relevant server settings.
 � Deploy an Existing Archive � Browse Server � Browse Server Directory � Deploy  � Deploy Archive � �
ColdFusion lets you define applications for organizing work,
archiving files, migrating and deploying sites. You can create and
store ColdFusion Archive definitions to archive, migrate, or redeploy
applications at a later date.
 � Create an archive �  A valid archive name is required � Create � Create an Archive � Archive Name � Current Archive Definition List � Actions � Edit Archive Definition � Build Archive � Delete Archive � Edit Archive Information � -Are you sure you want to delete this archive? � No Archives have been defined � Archive Information � Files and Directories � Dir/Files to Include � Dir/Files to Exclude � CFX Tags � Directory Mappings � Data Sources � Collections � Event Gateways � Event Gateway Types � Event Gateway Settings � Applets � Scheduled Tasks � Settings � Web Services � Rest Services � PDF Services � Pre-Restore To Do List � Post-Restore To Do List � Close Window � Assoc. Files/Dirs � Server Settings � CF Mappings � CF Collections � Java Applets � Archive To Do List � Archive Summary � Archive Applets � 
Select All � Deselect All � Registered Java Applets � Name � Code � Path � Category � Details %Archive ColdFusion Directory Mappings )Included Files and Directories in Archive Logical Path Directory Path	 Archive CFX Registered CFX Tags Class Path or Library Path Archive Data Sources DSN and Data Source Settings Driver Registered Gateway Instances Registered Gateway Types Type Gateway Settings Cancel Apply! Archive File Browser# 0Include/Exclude Associated Files and Directories% Add Path' Browse) Included Paths+ Remove path from archive- (No files have been added to this archive/ )Excluded Files and Directories in Archive1 Excluded Paths3 'Remove path from archive seclusion list5 -No files have been excluded from this archive7 Description9 �
Click Select All to create an archive definition that backs up all objects on your ColdFusion Server. Click Deselect All to create an archive definition that does not archive any objects.
; �<b>WARNING:</b> The Java settings (under Server Settings) contain system-specific paths that are used to start ColdFusion. If you deploy these settings to another machine and the paths are invalid, ColdFusion will fail to start.= Archive PDF Services? Registered PDF ServicesA 	Host NameC Archive REST ServicesE Registered REST ServicesG REST Service NameI 	REST PathK Archive SettingsM 'You changes have been saved as Archive:O Archive Schedule BuildQ Archive Scheduled TasksS Registered Scheduled TasksU DateW URLY General Server Settings[ �Examples: limit the number of simultaneously processed requests; timeout requests
after X seconds.  See the Settings section of the ColdFusion Administrator for more
details.] Caching_ yExamples: set template cache size; limit the maximum number of cached queries. See the Caching section
for more details.a Basic Securityc �Examples: enable and assign ColdFusion Administrator/Studio passwords; restrict use of certain tags. See the
Basic Security section for more details.e 	Variablesg YExamples: enable client and memory variables. See the Variables section for more details.i Java and JVMk �Examples: specify the JVM location; specify JVM arguments. For more information, see the online Help for the Java &amp; JVM page.m �<b>WARNING:</b> The Java settings contain system-specific paths that are used to start ColdFusion. If you deploy these settings to another machine and the paths are invalid, ColdFusion will fail to start.o Lockingq �Examples: specify whether simultaneous access to variables is allowed; configure variable scope lock
settings. See the Locking section for more details.s Loggingu �Examples: set the server administrator e-mail address; log the names of pages that take over a
specified length of time to return. See the Logging section for more details.w Maily wExamples: specify the mail server; log all e-mail messages sent by ColdFusion. See the Mail section
 for more details.{ 	Debugging} �Examples: display the names and values of all CGI, URL, form, and cookie variables; display
detailed processing time; See the Debugging section for more details. Charting� fExamples: How many charts to cache,  maximum number of charting threads, cache location, type of cache� Custom Tag Paths� &Examples: The custom tag path settings� Watcher Settings� jExamples: Causes ColdFusion to watch its configuration files and automatically reload them if they change.� Server Monitor Settings� !Examples: Server monitor Settings� System Probes� {Examples: System probes can monitor the health of a web application by checking the contents of a URL at a regular interval� Update Settings� RExamples: Update site URL, auto check for updates, update email notifications etc.� Web Sockets� LExamples: Update websocket properties like sockettime, port maxframesize etc� Web Service� Examples: Web Services Version� PDF Service� ?Examples: Enable using webkit implementation for PDF conversion� Remote Inspection Settings� ,Examples: Enable Remote Inspection settings � Pre-restore List� Post-restore List� Archive Solr Collection� Registered Solr Collections� Collection Directory� Archive Web Services� Registered Web Services� Web Service Name� WSDL URL� Back� Next� Close� Archive Location� Build Status� Build Status Log� Build Successful� �Reading the log file has timed out. \nThis doesn't mean there is an error. \nPlease check the archive log file to verify build process finished.� Archive File Location� Choose Archive File Location� �
Select or enter the path and file name (with a .car extension) to use for this archive.<br />
Note: If this file already exists, it will be overwritten.
� Deploy Location� Deploy Status� Deploy Status Log� Deploy Successful� 'Select Archive to Deploy on this Server� �
To restore an archive, specify the retrieval method 
(Local, HTTP, or FTP), the current location of the 
archive (.car) file, and the destination for the .car file. � Deploy Locations� Directory Path Translation� Deploy� Severity� Time� Message� ?
Archive file must be a valid archive (.car extension)<br />
� i
Invalid archive name.  Archive names can only contain letters, numbers, dots, underscores and dashes.
� FBuild completed with errors, \nPlease check logs for more information � ^
Invalid archive name. Please make sure that a file with a .car extension is defined.<br />
� GDeploy completed with errors, \nPlease check logs for more information � 
Malformed URL found.
� false� set (Ljava/lang/Object;)V�� coldfusion/runtime/Variable�
�� coldfusion/runtime/SwitchTable�
� 	 JAVA_EXAMPLES  addStringCase 5(Ljava/lang/String;I)Lcoldfusion/runtime/SwitchTable;
� 	VARIABLES EDIT_ARCHIVE_DEF 	DEBUGGING
 WEBSERVICENAME CLSBTNDW MONITORING_EXAMPLES EVENTGATEWAYS UPDATES ARCHIVENAMEREQUIRED MAIL_EXAMPLES L10N_ARCHSET BUILD_STATUS ADD_PATH RESTPATH  SCHEDULED_TASKS" WEBSOCKET_SETTINGS$ NXBTNDW& ARCH_NOARCH( L10N_SOLRARCHDATA* ARCHIVE_AVC, DETAILS. APPLICATION_NAME0 ARCHIVE_AND_DEPLOY2 
ARCHIVE_DS4 DESELECT_ALL6 REMOVE_PATH_FROM_ARCHIVE8 ARCHIVENAME: DESCRIPTION< DEPLOY> BROWSE_SERVER@ L10N_DEPLOYSTATB AR_DATD BUILDWIZARD_SUMMARY_PAGETITLEF CATEGORYH AR_SEVJ COLLECTION_DIRECTORYL DEBUGGING_EXAMPLESN -NO_FILES_HAVE_BEEN_EXCLUDED_FROM_THIS_ARCHIVEP L10N_ARCHIVENAMER WATCHERT !BUILDARCHIVE_PICKFILE_DESCRIPTIONV REGISTEREDWEBX ACTIONSZ L10N_DEPLOYARCHIVE\ TYPE^ DELETE_ARCHIVE` ARCHIVE_SETb RESTSERVICENAMEd PATHf AR_MESh REGISTEREDCFXj SERVER_SETTINGS_EXAMPLESl REGISTEREDEVENTGATEWAYSn WATCHER_EXAMPLESp ARCHIVE_PDFSERVICESr WEBSERVICESt EVENTGATEWAYSETTINGSv REMOTEINSPECTIONx ARCHIVE_ASTz DEPLOYSUCCESSFUL| PROBE_EXAMPLES~ PICKCARLOCATION� BUILDARCHIVE� ARCHIVE_CFX� CACHING� ARCHIVE_ASB� DIRFILES_TO_EXCLUDE� LOCKING� JAVA_JVM� ARCHIVE_SUMMARY� LOGGING� L10N_ARCHSSCHED� LOCKING_EXAMPLES� DEPLOY_ARCHIVE� 'REMOVE_PATH_FROM_ARCHIVE_SECLUSION_LIST� AR_TIM� ARCHIVE_INFORMATION� NAME� ARCHIVE_WIZARD� PICKLOCATIONINSTRUCTIONS� L10N_CRNTARCHIVES� NEXT� CLOSE� L10N_DEPLOYSUM� PROBE� MAIL� SETTINGS� CLASS_PATH_OR_LIBRARY_PATH� GATEWAYSETTINGS� ARCHIVE_INFO� CLOSE_WINDOW� ARCHIVE_ERROR_CREATE� VARIABLES_EXAMPLES� REGISTEREDEVENTGATEWAYSTYPES� WEBSERVICE_SETTINGS� EDIT_ARCHIVE_TIP� ARCHIVE_FILE_BROWSER_PAGENAME� L10N_ARCHEXCLUDE� L10N_DEPLFILETITLE� DATA_SOURCES� L10N_DEPLDIRPATH� DELETE_ARCHIVE_TIP� DESCRIPTION_PAGE_INFORMATION� ARCHIVE_APP� DEPLOYWITHERRORS� PDFSERVICE_SETTINGS� L10N_DEPLOYLOC� ARCHIVE_WEBSERVICES� L10N_ARCHPRE� DEPLOYEARCHIVE� ARCHIVE_ERROR_DEPLOY� PREVIOUS_CF_ARCHIVE_FILES� BUILDWIZARD_STATUS_PAGETITLE� JAVA_WARNING_GLOBAL� DEPLOY_WIZARD� WSDLURL� BACK� MUST_HAVE_SESSION_VARS� ARCHIVES_PAGEHEADER� JAVA_WARNING� CODE� 
YCHBSAARCH� ARCHIVE_ARSET� JAVA_APPLETS� CFX_TAGS� BROWSWSERVERTIP  BASIC_SECURITY BUTTON_CANCEL PRE_RESTORE_TO_DO_LIST 
MONITORING (NO_FILES_HAVE_BEED_ADDED_TO_THIS_ARCHIVE
 SERVER_SETTINGS INCLUDED_PATHS 
WEBSERVICE DATE ARCHIVE_EVENTGATEWAYS BUILDSUCCESSFUL BASIC_SECURITY_EXAMPLES CREATEARCHIVETIP DIRECTORY_MAPPINGS 
DEBUGGING1 CARFILENAME_ERROR  DRIVER" DIRECTORY_PATH$ L10N_DEPLFILE& BUILD_ARCHIVE_TIP( DIRFILES_TO_INCLUDE* 
WEBSOCKETS, ARCHIVE_HEADER. CHARTING_EXAMPLES0 RESTSERVICES2 #INCLUDE_EXCLUDE_ASSOC_FILES_FOLDERS4 ARCHIVE_URL_ERROR6 
SELECT_ALL8 L10N_ARCHSUM: BUILDREADLOGTIMEOUT< COLLECTIONS> UPDATES_EXAMPLES@ ARCHIVE_TDLISTB L10N_ARCHINCLUDED L10N_CREATEARCHIVEF 
PDFSERVICEH BUTTON_APPLYJ BUILDWITHERRORSL DEPLOYWIZARD_STATUS_PAGETITLEN PICK_ARCHIVE_FILEP BROWSWSERVERR BUILD_ARCHIVET CUSTOMTAGPATHSV POST_RESTORE_TO_DO_LISTX L10N_ARCHPOSTZ DELETE_ARCHIVE_CONFIRMATION\ BROWSE^ PAGENAME` CACHING_EXAMPLESb LOGICAL_PATHd EVENTGATEWAYTYPESf VERITY_COLLECTIONSh REGISTEREDPDFSERVICESj REMOTEINSPECTl L10N_ARCHJAVAAPPn CREATEARCHIVEp BUILDWIZARD_PICKFILE_PAGETITLEr ARCHIVE_TO_DO_LISTt LOGGING_EXAMPLESv EXCLUDED_PATHSx CF_MAPPINGSz NAME_AND_FILE_LOCATION| HOSTNAME~ DEPLOYEARCHIVETIP� APPLETS� FILES_AND_DIRECTORIES� REGISTEREDREST� L10N_ARCHDATA1Z1� BKBTNDW� CUSTOMTAGPATHS_EXAMPLES� PDFSERVICES� ARCHIVE_DIRMAP� ARCHIVE_RESTSERVICES�
 @ l
 @ o metaData Ljava/lang/Object;��	 � &coldfusion/runtime/AttributeCollection� java/lang/Object� ([Ljava/lang/Object;)V �
�� getMetadata ()Ljava/lang/Object; this Lcfarchives_en2ecfm1263911993; LocalVariableTable varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage out Ljavax/servlet/jsp/JspWriter; value processingdirective1 /Lcoldfusion/tagext/lang/ProcessingDirectiveTag; mode1 I silent0  Lcoldfusion/tagext/io/SilentTag; mode0 t8 Ljava/lang/Throwable; t9 t10 t11 t12 t13 t14 t15 t16 t17 LineNumberTable java/lang/Throwable� <clinit> 1                 / 0    R 0    q r   ��    ��  �   "     ���   �       ��       �   Q     *+,� **+,� � **+,� � �   �        ��     ��    ��  ��  �  �    �*� $� *L*� .N*� :-� >� @:*� D� H� M� QY6�*� V� >� X:*� D� M� YY6� /*+� ]L� `���� � :� �:	*+� dL�	� i� :
� &�K
�� � #:� m� � :� �:� p�� t**� � vYxS� |� ��   
�       �  2  ;  D  M  V  _  h  q  z  �  �  �  �  �  �  �  �  �  �  �  �  �  �    
      %  .  7  @  I  R  [  d  m  v    �  �  �  �  �  �  �  �  �  �  �  �  �  �        !  *  3  <  E  N  W  `  i  r  {  �  �  �  �  �  �  �  �  �  �  �  �  �        #  -  7  A  K  U  _  i  s  }  �  �  �  �  �  �  �  �  �  �  �  �  �  	      '  1  :  D  N  X  b  l  v  �  �  �  �  �  �  �  �  �  �  �  �  �           *  4  >  H  R  \  f  p  z  �  �  �  �  �  �  �  �  �  �  �  �  �  	  	  	  	#  	-  	7  	A  	K  	U  	_  	i  	s  	}  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  
  
  
  
$  
.  
8  
B  
L  
V  
`  
j  
t  
~  
�  
�  
�  
�  
�  
�+�� ���+�� ���+�� ���+�� ��~+�� ��u+�� ��l+�� ��c+�� ��Z+�� ��Q+�� ��H+�� ��?+�� ��6+�� ��-+�� ��$+�� ��+�� ��+�� ��	+�� �� +�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ��y+¶ ��p+Ķ ��g+ƶ ��^+ȶ ��U+ʶ ��L+̶ ��C+ζ ��:+ж ��1+Ҷ ��(+Զ ��+ֶ ��+ض ��+ڶ ��+ܶ ���+޶ ���+� ���+� ���+�� ���+� ���+� ���+� ���+� ���+� ���+� ���+� ���+� ���+�� ���+�� ��}+�� ��t+�� ��k+�� ��b+�� ��Y+� ��P+ � ��F+� ��<+� ��2+� ��(+� ��+
� ��+� ��
+� �� +� ���+� ���+� ���+� ���+̶ ���+� ���+� ���+� ���+� ���+ � ���+"� ���+$� ���+&� ��+(� ��u+*� ��k+,� ��a+.� ��W+0� ��M+2� ��C+4� ��9+6� ��/+8� ��%+:� ��+<� ��+>� ��+@� ���+B� ���+D� ���+F� ���+H� ���+J� ���+L� ���+N� ���+P� ���+R� ���+�� ���+T� ���+V� ���+X� ��|+Z� ��r+N� ��h+\� ��^+^� ��T+`� ��J+b� ��@+d� ��6+f� ��,+h� ��"+j� ��+l� ��+n� ��+p� ���+r� ���+t� ���+v� ���+x� ���+z� ���+|� ���+~� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ��x+�� ��n+�� ��d+�� ��Z+�� ��P+�� ��F+�� ��<+�� ��2+�� ��(+�� ��+�� ��+�� ��
+�� �� +�� ���+�� ���+�� ���+� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ��+�� ��u+�� ��k+�� ��a+¶ ��W+Ķ ��M+ƶ ��C+ȶ ��9+ʶ ��/+̶ ��%+ζ ��+ж ��+� ��+�� �� �+�� �� �+�� �� �+� �� �+Ҷ �� �+Զ �� �+ֶ �� �+ض �� �+�� �� �+ڶ �� �+ܶ �� �+Ҷ �� �+޶ �� �+� �� ~+� �� t+� �� j+X� �� `+� �� V+� �� L+� �� B+� �� 8+� �� .+� �� $+� �� +�� �� *� ���� � `��� i� :� #�� � #:��� � :� �:����  \ q t� t y t� Q � �� � � �� Q � �� � � �� � � �� � � �� , ��� �������� , ��� ���������������� �   �   ���    ���   ���   � + ,   ���   ���   ���   ���   ���   ��� 	  ��� 
  ���   ���   ���   ���   ���   ���   ��� �  b � 7  �  �  �  �    ' 0 9 !B #K (T *] ,f .o 0x 2� 9� ;� =� ?� A� C� E� G� I� K� M� O� Q� S� U W Y [# ], _5 a> cG eP gY ib kk mt o} q� s� u� w� y� {� }� � �� �� �� �� �� �� � � � � �( �1 �: �C �L �U �^ �h �r �| �� �� �� �� �� �� �� �� �� �� �� �� �� � � � �% �/ �9 �C �M �W �a �k �u � �� �� �� �� �� �� �� �� �� �� �� �� � � � � �(2<FP	Zdnx������!�#�&�(�+�-�0�2	5	7	9	";	,=	6?	@A	JC	TE	^G	hI	rK	|M	�O	�Q	�S	�U	�W	�Y	�[	�]	�_	�a	�c	�e	�g
i
k
m
%o
/q
9s
Cu
Mw
Wy
a{
k}
u
�
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
�����&�0�:�D�N�X�b�l�v��������������������� �           �   #     *� 
�   �       ��   �   �  �    �2� 8� :T� 8� V��Y��|�y�	� �� �� �� ��&� ��� ��s� ��W�!i�#*�% ��' ��)�+ ��- ��/C�1�3�5K�7<�9Z�;�=`�? ��Am�C ��E ��G ��IB�K ��M ��O ��Q_�S�U ��W ��Y ��[�]�_Q�a�cj�eh�g@�i ¶kI�mt�oO�q ��sc�u,�w(�y ��{n�} �� ��� �����H��u��l��!��~��{��9�� ���o���� ���^�� ���2��>���� ����� ��� ��� ��� ��� ���+��J��R����1�� Ķ�z��P�� �����U��\�� ���$�� �����a��:�� Ƕ� ��� ��� ��� ���
�� ö��� ���b���� ��� �������}��?��k��r��7��"�	�w�S�/�	 ��[�4�Y� ��p�N� ��x��#� ��! ƶ#M�%G�' ��)�+ �- ��/�1 ��3-�5V�7 ȶ9;�;A�= ��?%�A ��C ��EE�G�I ��KT�M ŶO ��Q ��S�U�W ��Y0�[ ��]�_X�a ��cv�eF�Zq�g'�i6�kd�m ��o=�q�s ��u8�w ��y]�{5�}3�e����)����g��L�� ��� ���.��D��f�� t��Y�������   �      ���             