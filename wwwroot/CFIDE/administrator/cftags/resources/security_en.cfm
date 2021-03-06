����  - 
SourceFile 5/CFIDE/administrator/cftags/resources/security_en.cfm cfsecurity_en2ecfm2082283240  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   
ATTRIBUTES Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   CALLER   	   BSUCCESS   	    com.macromedia.SourceModTime  R�\� pageContext #Lcoldfusion/runtime/NeoPageContext; % &	  ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
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
  � ColdFusion Administrator � write (Ljava/lang/String;)V � � java/io/Writer �
 � � $Server has been updated successfully � 'Click the button on the right to update � ALERT! � &Important notice about last submission � 8Click arrow on left to return without submitting changes � Submit Changes � Debugging IP Address � "Security &gt; Allowed IP Addresses ��
Specify client IP addresses that should be allowed to invoke exposed services.
This can be individual IP addresses, IP address ranges of the form 10-30, or * wild cards.
Both IPv4 and IPv6 addresses are supported.
To include an IP address in the list, enter the address and click Add.
To delete an IP address from the list, select the address and click Remove Selected.
When no IP addresses are selected, no user can invoke exposed services
 � )Allowed IP Addresses for Exposed Services � 
IP Address � Add � 8View / Remove Selected IP Addresses for Exposed Services � Remove Selected ��
Specify the client IP addresses that can access ColdFusion Administrator and ColdFusion Internal Directories. This can be individual IP addresses, IP address ranges of the
form 10-30, or * wild cards. Both IPv4 and IPv6 addresses are supported. To include an IP address in the list, enter the
address and click Add. To delete an IP address from the list, select the address and click Remove Selected. When no IP
addresses are selected, all users are allowed access.
 � _Allowed IP Addresses for accessing ColdFusion Administrator and ColdFusion Internal Directories � 7View / Remove Selected IP Addresses for accessing admin ��
If you have configured an external web server, you can also restrict access to the ColdFusion Administrator and ColdFusion Internal Directories at the connector-level by modifying the iprestriction.properties file available under the connector folder. For instance, cf_root/config/wsconfig/<number>/iprestriction.properties.
<br>
<br>
<b>Note</b> : You will need to restart the external web server after modifying the iprestriction.properties file.
</br>
 � !Seed must be minimum 8 characters � !ColdFusion Administrator password � 
Security &gt; Administrator � (ColdFusion Administration Authentication ��
You should restrict access to the ColdFusion Administrator to trusted
users. By default the ColdFusion Administrator requires authentication to access
these pages. However, if you configure your web server to restrict access to
these pages, you can disable this authentication and
rely on your web server's security instead. (Consult your web server
documentation for details on securing pages.)
 � 4
Select the type of Administrator authentication:
 � $Use a single password only (default) � FSeparate user name and password authentication (allows multiple users) � *No authentication needed (not recommended) � �
To change the ColdFusion Administrator password for the root administrative user,
enter old password, new password and then confirm
 � Old Password � New Password � Confirm Password � (50-character limit.) � Password Seed � @
To specify a new seed value to encrypt data source passwords
 � New Seed � .(8-character minimum and 500-character limit.) � Concurrent Login Session � @<b>Allow concurrent login sessions for Administrator Console</b> � RDS Password � Z

<div id="rdspassworderrorpanel" name="rdspassworderrorpanel"></div>
Security &gt; RDS � <b>Enable RDS Service</b> � �
The ColdFusion RDS service allows you to connect to this server using the RDS password you define below.
This is intended for development use only. If this is a production machine, leave this option unchecked.
 � RDS authentication � �
You should restrict access to RDS to trusted
users. By default RDS requires authentication. However, you may disable this authentication and
rely on your web server's security instead.
 � *
Select the type of RDS authentication:
 � RDS Single Password � X
To change the single RDS password, enter old password, new password and then confirm
 � J
To change the single RDS password, enter new password and then confirm
 � Sandbox Security Permissions � :
Are you sure you want to delete this security sandbox?
 � Security Settings � Security &gt; Sandbox Security � "Enable ColdFusion Sandbox Security ��
ColdFusion's sandbox security uses the location of your ColdFusion pages to control access to ColdFusion resources. A sandbox is a designated area (files or directories) of your site to which you apply security restrictions. By default, a subdirectory (or child directory) inherits the sandbox settings of the directory one level above it (the parent directory). If you define sandbox settings for a subdirectory, you override the sandbox settings inherited from the parent directory.
<br />
<br />
<b>Note:</b> You can configure these settings prior to enabling them on the server. Also, you must restart the ColdFusion application server to enable this setting.
 �2
To use sandbox security in the multiserver and J2EE editions, the application server must be running a security manager (java.lang.SecurityManager) and you must define the JVM arguments, as describe in the Configuring and Administering ColdFusion manual and in the ColdFusion Administrator online Help.
 � �
To disable Sandbox Security, see the JRun section of the <a href="http://www.adobe.com/go/prod_releasenotes" target="Adobe website">release notes</a>.
 � �
To enable Sandbox Security, see the JRun section of the <a href="http://www.adobe.com/go/prod_releasenotes" target="Adobe website">release notes</a>.
 � �
To diable Sandbox Security, see the Sun ONE section of the <a href="http://www.adobe.com/go/prod_releasenotes" target="Adobe website">release notes</a>.
 � �
To enable Sandbox Security, see the Sun ONE section of the <a href="http://www.adobe.com/go/prod_releasenotes" target="Adobe website">release notes</a>.
 �
To disable Sandbox Security, see the Oracle section of the <a href="http://www.adobe.com/go/prod_releasenotes" target="Adobe website">release notes</a>.
 �
To enable Sandbox Security, see the Oracle section of the <a href="http://www.adobe.com/go/prod_releasenotes" target="Adobe website">release notes</a>.
 �
To disable Sandbox Security, see the BEA WebLogic section of the <a href="http://www.adobe.com/go/prod_releasenotes" target="Adobe website">release notes</a>.
 �
To enable Sandbox Security, see the BEA WebLogic section of the <a href="http://www.adobe.com/go/prod_releasenotes" target="Adobe website">release notes</a>.
	 Add Security Sandbox Browse Server %New sandbox, or pick one to copy from Defined Directory Permissions Actions 	Directory Root Security Context Edit Delete %( ColdFusion CFIDE system directory ) '( ColdFusion WEB-INF system directory ) No directory permissions exist.! >For these changes to take effect, you must restart ColdFusion.# 	Very Weak% Weak' Medium) Strong+ Very Strong- Unsafe Password/ 	Too Short1 Security Permissions3 default5 Web Application7 Secure Profile Settings9 Setting Name; Current Value= Secure Default Value? $Snapshot when secure profile enabledA Use UUID for cftokenC Enable WebSocket ServerE Start Flash Policy ServerG #Enable Robust Exception InformationI Enable CFSTATK Maxium size of post data (MB)M  Session Cookie Timeout (Minutes)O /Disable updating of ColdFusion internal cookiesQ 5Disable access to internal ColdFusion Java componentsS Site Error HandlerU Request Queue Timeout PageW Missing Template Error HandlerY Enable Global Script Protection[ Allowed IP Addresses] Enable Sandbox Security_ 
Enable RDSa RDS Authentication Enabledc RDS separate UserID Disablede Admin Authentication Enabledg Admin separate UserID Requiredi 9Allow concurrent login sessions for Administrator Consolek FDisable create, drop, alter, grant, revoke, stored procedures for DSNsm  Security &gt; Secure Profileo Enable Secure Profileq �
Secure Profile settings are only a recommendation. You should further configure the server as per your requirements. The settings affected by this are listed in table below.
s Secure Profile Settings Summaryu $
Retained if specified at install
w RDS and Administrator Accessy 	Sandboxes{ Exposed Services} User Manager 
User name:� 	Password:� Confirm Password:� Description:� Allow RDS Access� Allow Administrative Access� API Access Only� "Administrator Console & API Access� Allowed Roles:� Prohibited Roles:� Allowed Services:� Prohibited Services:� Allowed Data sources:� Prohibited Data sources:� Data Source Permissions� (Add / Edit Secured Files and Directories� Add User� Update User� Cancel Edit� Cancel� Authentication (Add Mode)� Authentication (Edit Mode)� Action� User� Roles� Access� CF Admin� RDS� 	Admin API� 5Unable to create user: this user name already exists.� ]Unable to create user: You are attempting to create a user with the same ID as the root user.� The selected user doesn't exist� Security &gt; User Manager� *Are you sure you want to delete this user?� 8Password should be greater than or equal to 5 characters� /User name should be between 5 and 20 characters� 2User name can contain only alphanumeric characters� *Password and Confirm Password do not match� (Minimum 5 characters)� User name cannot be empty� Password cannot be empty� NYou need to grant atleast one permission to files/directories added in sandbox� &lt;&lt;ALL DATASOURCES&gt;&gt;� Read� Write� Execute��
To select more than one data source, hold down the Control key and click the name of the data source.
This user cannot use data sources listed in the Disabled Data Sources box. <br />
<br />
<b>Note:</b> The ALL DATASOURCES option includes all data sources not otherwise specified as enabled or disabled
as well as all future data sources created in the Data Sources section of the ColdFusion administrator.� }
&nbsp;&nbsp;Enter files that you would like to <b>grant</b> access for templates operations under this directory.<br><br>
� File / Folder Path:� Permissions� Add Files / Folders� Edit Files / Folders� Secured Files and Directories� 	File Path� No mappings are active.��
A file permission consists of a pathname and a set of actions valid 
for that pathname. A pathname is the pathname of the file or 
directory granted the specified actions. A pathname that ends in "/*" 
indicates all the files and directories contained in that directory. 
A pathname that ends with "/-" indicates (recursively) all files and 
subdirectories contained in that directory. A pathname consisting of the 
special token &quot;&lt;&lt;ALL FILES&gt;&gt;&quot; matches any file.<br><br>
� Description� Administrative Access� API Only� Console & API� JAdd and manage users.  Users can be granted access to roles and sandboxes.� Yes� No� Add New User� 	 Add User Defined Users 'ColdFusion Administrative User password 
Security &gt; Change Password R
To change ColdFusion user password, enter a new password and confirm it below:
	 Data Sources CF Tags CF Functions 
Files/Dirs Server/Ports Others CF Function Permissions: Enabled Functions Disabled Functions Finish �
Select ColdFusion functions that you want to disable.
ColdFusion pages in this sandbox cannot use functions that are listed in the Disabled Functions box.
 CF Tag Permissions:! Enabled Tags# Disabled Tags% �
Select the ColdFusion tags that you want to disable.
ColdFusion pages in this sandbox cannot use tags that are listed in the Disabled Tags box.
' #
&lt;&lt;ALL DATASOURCES&gt;&gt;
) Data Source Permissions:+ Enabled Data sources- Disabled Data sources/
Select the data sources that can be used by ColdFusion pages in this directory.
To select more than one data source, hold down the Control key and click the name of the data source.
ColdFusion pages in the directory cannot use data sources listed in the Disabled Data Sources box. <br />
<br />
<b>Please note:</b> The ALL DATASOURCES option includes all data sources not otherwise specified as enabled or disabled
as well as all future data sources created in the Data Sources section of the ColdFusion administrator.1 )Add / Edit Secured Files and Directories:3 Add Files / Paths5 Edit Files / Paths7 7
Are you sure that you want to delete the File Path?
9 k
Enter files that you would like to <b>grant</b> access for 
templates operations under this directory.
;�
A file permission consists of a pathname and a set of actions valid 
for that pathname. A pathname is the pathname of the file or 
directory granted the specified actions. A pathname that ends in "/*" 
indicates all the files and directories contained in that directory. 
A pathname that ends with "/-" indicates (recursively) all files and 
subdirectories contained in that directory. A pathname consisting of the 
special token &quot;&lt;&lt;ALL FILES&gt;&gt;&quot; matches any file.
= Server/IP and Port Permissions:? 0
Are you sure you want to delete this server?
A Server/IP AddressC Single portE This port and higherG This port and lowerI Port range (xxxx-xxxx)K Add IP AddressM Edit IP AddressO Enabled IP/PortsQ IP:PortS ;All ip:ports are open. There are currently no restrictions.U �
These settings restrict the IP addresses and ports that ColdFusion can access with the tags that call third-party resources;
for example, the cfmail, cfpop, cfldap, and cfhttp tags.
W *
&lt;&lt;ALL RuntimePermissions&gt;&gt;
Y Other Permissions:[ Enabled Runtime Permissions] Disabled Runtime Permissions_�
To disable the Runtime Permissions for a ColdFusion page in this directory, select the Runtime Permission from the Enable Runtime Permissions box and move it to the Disabled Runtime Permissions box.
To disable more than one Runtime Permissions for a ColdFusion page, hold down the Control key and click the name of the Runtime Permissions. ColdFusion pages in the directory cannot use Runtime Permissions that are listed in the Disabled Runtime Permissions box.
 <br />
<br />
<b>Please note:</b> By default, all Runtime Permissions are enabled. However, you can choose to enable or disable the permissions listed in the Enabled Runtime Permissions box. a ColdFusion Administrator Loginc 
ColdFusione User Name Requiredg 	User namei Password Requiredk Passwordm 9Please enable Javascript to use ColdFusion Administrator.o %User name required. Please try again.q 0Invalid User name or Password. Please try again.s #Invalid Password. Please try again.u Loginw �&copy; 1997 - 2016 Adobe Systems Incorporated and its licensors. All Rights Reserved. Adobe, the Adobe logo, and ColdFusion are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or other countries.y Component Browser Login{ Component Browser} &Enter your RDS or Admin password below $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag�� 4	 � coldfusion/tagext/io/OutputTag�
� T 
The IP you attempted to add (� FORM� IPTOBEADDED� 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; }�
 � _String &(Ljava/lang/Object;)Ljava/lang/String;�� coldfusion/runtime/Cast�
�� EncodeForHTML &(Ljava/lang/String;)Ljava/lang/String;��
 � �) is not valid.
IPs are four sets of numbers from 0 to 255 separated by periods (e.g., 127.0.0.1) in IPv4 addressing format
or eight sets of hexadecimal numbers from 0 to FFFF seperated by colon (e.g., 0:0:0:0:0:0:0:1) in IPv6 addressing format.
�
� c coldfusion/tagext/QueryLoop�
� j
� p
� s ) is not valid.
IPs are four sets of numbers from 0 to 255 separated by periods (e.g., 127.0.0.1) in IPv4 addressing format
or eight sets of hexadecimal numbers from 0 to FFFF seperated by colon (e.g., 0:0:0:0:0:0:0:1) in IPv6 addressing format. <br />
� CFCATCH� MESSAGE� 	 <br />
� DETAIL� 
� _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V��
 � _factor0 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object;��
 � ADMIN_IPTOBEADDED�) for admin access block is not valid.
IPs are four sets of numbers from 0 to 255 separated by periods (e.g., 127.0.0.1) in IPv4 addressing format
or eight sets of hexadecimal numbers from 0 to FFFF seperated by colon (e.g., 0:0:0:0:0:0:0:1) in IPv6 addressing format.
� _factor1��
 � b
An error occurred attempting to remove the requested IP(s).
from the Debugging Service.<br />
� q
An error occurred attempting to retrieve a list of restricted IP addresses
from the Debugging Service.<br />
� <br />
� Old password is incorrect� \Your password could not be changed because the new and confirmation passwords did not match.� ?Password could not be changed as the old password is incorrect.� Password can not be blank.� n
There was an error while updating passwords with new seed.<br />
Please check logs for more details.</br>
� u
There was an error while updating concurrent login sessions flag.<br />
Please check logs for more details.</br>
� <
Unable to set Administrator authentication switch.<br />
� :
Unable to set Administrator authentication type.<br />
� Root Administrator Password� QPassword could not be changed as the new and confirmation passwords do not match.� Password can not be empty.� Old password is incorrect.� '
Unable to set admin password.<br />
� G
Invalid Directory, please check your directory and try again.<br />
� J
Virtual File System directories are not allowed to be sandboxed.<br />
� +
Unable to apply security updates:<br />
� $
Unable to toggle security.<br />
� w
There was an error while disabling secure profile and its settings.<br />
Please check logs for more details.</br>
� v
There was an error while enabling secure profile and its settings.<br />
Please check logs for more details.</br>
� �Administrative Authentication is currently only enabled for the admin user.  To enable access to the Console or Admin API by other users, go to Security > Administrator to enable Separate User name and Password Authentication� �RDS Authentication is currently only enabled for the admin user.  To enable access to RDS by other users, go to Security > RDS to enable Separate User name and Password Authentication� 
Please enter a user name.
� XYour password could not be changed because the new and confirmation passwords are blank.� -
Unable to add selected data source:<br />
� 1
Unable to remove selected data sources:<br />
� �
Invalid path or path without permisions error.<br />
Please make sure the file or directory exists and some level of permision is enabled.
This update could not be completed.
� 9
Bad Domain/IP/Port format, please try another format.
� false� set (Ljava/lang/Object;)V�� coldfusion/runtime/Variable 
� coldfusion/runtime/SwitchTable
 	 BUTTON_BROWSE addStringCase 5(Ljava/lang/String;I)Lcoldfusion/runtime/SwitchTable;	

 
WEBINF_DIR CFFUNCTIONPERMISSIONS DEFAULT_PAGENAME STEP_FILES_TIP1 STEP_FILES_TIP SECUREPROFILE_SITE_WIDE ALLRUNTIMEPERMISSIONS ADDFILE_FOLDER SECUREPROFILE_POSTSIZELIMIT WELCOME RDS_PASSWORD_EXPLANATION  ENABLE_SWITCH_SECURITY" 	CANCELADD$ L10N_CFILESDIR& CLICK_NORMAL( STATMESS* SECUREPROFILEPAGENAME, ERRORHEADER. STEP_DS0 RDSAUTH_ERROR2 MAP_ERROR_UPDATE_DS4 ADDIP6 ADDUSER8 WRITE: L10N_ENDATA<  SECUREPROFILE_ITEM_DEFAULT_VALUE> PASSWORD_EMPTY@ ERROR_TOGGLE_SETADMINPASSWORDB CFADMIN_USERNAMESD ADMIN_ALLOW_IP_ADD_BUTTONF ERROR_SET_SEEDH SECUREPROFILE_RDS_ENABLEDJ GRIDHEADERACCESSL SUBMIT_CHANGESN PASSWORD_WEAKP JRUN_TURN_ON_SECURITYR USERNAME_EMPTYT L10N_DISDATAV CFRDS_SINGLEPASSWORDX INVALID_PASSWORD_JSZ SECUREPROFILE_CFSTAT\ ERR_SEEDLENGTH^ ERR_USERNAMELENGTH` MAP_ERROR_UPDATEb CHARHELPSTRINGd IP_ERROR_REMOVEf #SECUREPROFILE_ITEM_CURRENT_VALUE_SPh ERROR_ENABLE_SECURE_PROFILEj ERROR_VIRTUALDIRECTORYl L10N_DISTAGSn IP_WELCOMETEXTp ALLOWEDROLESLABELr EXECUTEt EDITFILE_FOLDERv USERNAMEx PASSWORDz IPPORTS| 
NO_IPPORTS~ SECUREPROFILE_FLASHFALLBACK� PAGEHEADER_USERMANAGER� ERROR_INVALIDFILEPERMISSIONS� RDSN_OLDPASSWORD� DEFAULT� PAGEHEADER_ALLOWIPADDRESS� RDS_SUPERPASSWORD_EXPLANATION� CFCBROWSER_LOGIN� $SECUREPROFILE_ADMIN_SECURITY_ENABLED� CFRDS_USERNAMES� SUNONE_TURN_OFF_SECURITY� 	PAGEDESC1� ALLDATASOURCESLABEL� ENTERRDSORADMINPASSWORDLOGIN� L10N_CFFUNCTIONS� SECUREPROFILE_ITEM_NAME� BUTTON_BROWSE_USER� ADMINUSER_PASSWORD_EXPLANATION� RDSNEWPASSWORD� #SECUREPROFILE_ADMIN_USERID_REQUIRED� 	STEP_DS_1� CONFIRMPASSWORD� EDITUSERBTN� IP_ERROR_GET� CFADMIN_PASSWORDLENGTH� DEFINED_DIRS� LOGICAL_FILEPATH_FOLDER� 	STEP_TAGS� ADDEDITUSERFILEDIR� PASSWORD_VERY_WEAK� CFADMINUSER_NEWPASSWORD� CFADMIN_CHANGESEED� PASSWORD_STRONG� NULL_USER_ID� RDSPAGENAME� CFADMINCONSOLEAPIACCESSLABEL� COPYRIGHT_CONT1� BROWSE_BUTTON� /SECUREPROFILE_RDS_SECURITY_USESINGLERDSPASSWORD� 
STEP_FILES� CFADMINUSER_NEWPASSWORDCONFIRM� 	PAGENAME2� 	PAGENAME1� JRUN_TURN_OFF_SECURITY� PASSWORD_BUTTON� DIRPAT� J2EE_ENABLESBS� GRIDHEADERSANDBOXES� PAGEHEADER_SANDBOX� PAGEHEADER_ADMINPASSWORD�  SECUREPROFILE_ALLOWEDADMINIPLIST� COMPONENTBROWSER� IP_ERROR_ADD1� DELETE_SANDBOX_CONFIRMATION� COLDFUSIONVER� CFADMIN_SINGLEPASSWORD� PASSWORD_OLDPASSWORD_ERROR1� ERR_CANTCREATEROOT� ERROR_TOGGLE� PROHIBITEDDATASOURCESLABEL� PROHIBITEDSERVICESLABEL� IMPORTANT_NOTICE� IP_ADMIN_CONNECTOR� ALLOWCONCLOGINLABEL� NEWSEED  ERROR_DISABLE_SECURE_PROFILE USERMNGRPAGENAME1 ADD_NEW_USER VIEWDELETEIP CFADMIN_PASSWORDLENGTH_1
 ALLOWEDSERVICESLABEL 'SECUREPROFILE_ALLOWCONCURRENTADMINLOGIN L10N_DISDATA_RUNTIME #SECUREPROFILE_STARTWEBSOCKETSERVICE 
ADDUSERBTN ENABLERDS_DESC APIACCESSONLYLABEL WELCOME_SECUREPROFILE *SECUREPROFILE_INTERNALCOOKIESDISABLEUPDATE PASSWORD_TOO_SHORT LOGICAL_FILEPATH  ADMINUSERPASSWORDPAGENAME" RDSN_NEWPASSWORDCONFIRM$ DELETE_FILEPATH_CONFIRMATION& 
IP_ADDRESS( ADDEDITSECUREDFILEDIR* PASSWORD_UNSAFE,  SECUREPROFILE_ITEM_CURRENT_VALUE.  SECURE_PROFILE_IP_RETAIN_INSTALL0 CANCELEDITBTN2 PAGEHEADER_RDSPASSWORD4 ADMIN_ALLOW_IP_ADDRESS6 FINISH8 NEW_SANDBOX: CFADMIN_LOGIN< MAP_ERROR_BADIP> REQUIRED_USERID@ FILEB CFADMIN_USERNAME_EXPLANATIOND PASSWORD_CONFIRM_ERRORF 
L10NENTAGSH ENABLED_IPPORTJ L10N_SECDSOURCEL ADMINPASSWORDPAGENAMEN IP_ERROR_INVALIDP CONCURRENTLOGINHEADERR CFADMIN_CHANGEPASSWORDT DESCRIPTIONLABELV RDS_PASSX LABEL_PASSWORDZ FILE_ACTIVE\ REQUIRED_PASSWORD^ MAP_ERROR_REMOVE_DS` 
SEEDHEADERb PASSWORD_EMPTY_ERROR_RDSd VIEWREMOVEIPNEWf USERDATASOURCEPERMISSIONh MAP_ERROR_ADD_DSj CFADMIN_OLDPASSWORDl ERR_USERNAMENONCHARSn GRIDHEADERUSERp L10N_ENDATA_RUNTIMEr L10N_ENFUNCt L10N_SECIP_PORTHEIGHv ADMINACCESSLABELx #SECUREPROFILE_DISABLESERVICEFACTORYz DELETECONFIRMATION| WEBLOGIC_TURN_OFF_SECURITY~ SECUREPROFILE_SCRIPTPROTECT� ORACLE_TURN_OFF_SECURITY� EDITFILE� SECUREPROFILE_SERVERINFO� SANDBOX_APPLY� YESLABEL� CFADMIN_SECURITYDISABLED� PERMISSIONS� ERR_USERNAMEALREADYEXISTS� PROHIBITEDROLESLABEL� USERNAME_ERROR� NOLABEL� L10N_DISFUNC� LABEL_USERID� RDSACCESSLABEL� RDS_SUPERPASSWORD_EXPLANATION2� SECUREPROFILE_MISSING_TEMPLATE� SECUREPROFILE_ROBUST_ENABLED� PAGENAME_SECURITYPERMISSIONS� 	CONNECTED� SECUREPROFILE_DRIVERDEFAULTS� ENABLE_SWITCH_SECUREPROFILE� "SECUREPROFILE_SBS_SECURITY_ENABLED� ORACLE_TURN_ON_SECURITY� CFADMIN_PASSWORD_EXPLANATION� DISABLERDSLABEL� ADMIN_ALLOWEDIPS� CFRDS_USERNAME_EXPLANATION� CFADMINAPIACCESSLABEL� OTHERSPERMISSIONS� PASSWORD_CONFIRM_ERROR1� EDIT� CFRDS_SECURITYDISABLED� IPPORT� DELETE�  ERROR_TOGGLE_SINGLEADMINPASSWORD� ALERT� STEP_FUNCTIONS� EDITUSER� 	DIRECTORY� L10N_ADDSANDBOX� PAGEHEADER_SECUREPROFILE� STEP_FILES1� ERR_USERDOESNTEXIST� ALLOWEDDATASOURCESLABEL� ADMINAUTH_ERROR� CFADMIN_PASSWORD� SERVERIPPORTPERMISSIONS� ADMINAPIACCESSLABEL� SECUREPROFILE_QUEUE_TIMEOUT� ERR_PASSWORDMISMATCH� CLICK_RETURN� CFTAGPERMISSIONS� INVALID_PASSWORD� MAP_NOMAPPINGS� EDITIP� IP_PAGENAME� ERR_PASSWORDLENGTH� PASSWORD_EMPTY_ERROR� SELECTIP� DELETE_SERVER_CONFIRMATION� ALLDATASOURCES� "SECUREPROFILE_SESSIONCOOKIETIMEOUT� CFADMIN_NEWPASSWORD� "SECUREPROFILE_RDS_SECURITY_ENABLED  OTHERS CFRDS_PASSWORD ACTIONS !PASSWORD_OLDPASSWORD_ERROR1_SHORT GRIDHEADERROLES
 IP_ERROR_ADD 	SUBTITLE3 	SUBTITLE2 	SUBTITLE1 L10N_SECIP_PORTLOW NO_DIR_PERM 
ADD_BUTTON IP_ERROR_INVALID1 SUNONE_TURN_ON_SECURITY READ 	CFIDE_DIR  CFADMIN_SEEDLENGTH" REMOVE_BUTTON$ WEBAPP& GRIDHEADERDESCRIPTION( CFADMIN_NEWPASSWORDCONFIRM* CFADMINACCESSLABEL, L10N_SECIP_SPORT. PASSWORD_MEDIUM0 STEP_DS_RUNTIME2 ERR_NO_SANDBOX_PERMISSION4 ALLOWRDSACCESSLABEL6 IP_PORT_EXPLANATION18 SECUREPROFILE_UUIDTOKEN: ERROR_ALLOWCONCLOGIN< USERMANAGERPAGENAME> ERROR_TOGGLE_SEC@ DATASOURCEPERMISSIONSB ALLOWADMINACCESSLABELD IPF WEBLOGIC_TURN_ON_SECURITYH PAGEHEADER_ADMINUSERPASSWORDJ PASSWORD_VERY_STRONGL ADDFILEN IP_ADMIN_WELCOMETEXTP ADMINCONSOLEANDAPILABELR ROOTSECURITYCNTXT L10N_CFTAGSV GRIDHEADERACTIONX ERROR_INVALIDDIRECTORYZ PASSWORD_OLDPASSWORD_ERROR\ PASSWORD_BLANK_ERROR^ 
BUTTON_ADD` L10N_SECIP_PORTRANGEb INVALID_USERID_OR_PASSWORDd 
f _factor2h�
 i
 D p
 D s _factor3m�
 n metaData Ljava/lang/Object;pq	 r &coldfusion/runtime/AttributeCollectiont java/lang/Objectv ([Ljava/lang/Object;)V x
uy getMetadata ()Ljava/lang/Object; this Lcfsecurity_en2ecfm2082283240; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; __factorParent out Ljavax/servlet/jsp/JspWriter; value output2  Lcoldfusion/tagext/io/OutputTag; mode2 I t6 t7 Ljava/lang/Throwable; t8 t9 LineNumberTable java/lang/Throwable� output4 mode4 runPage silent0  Lcoldfusion/tagext/io/SilentTag; mode0 t10 t11 output1 mode1 t14 t15 t16 t17 output3 mode3 t20 t21 t22 t23 output5 mode5 t26 t27 t28 t29 output6 mode6 t32 t33 t34 t35 output7 mode7 t38 t39 t40 t41 output8 mode8 t44 t45 t46 t47 output9 mode9 t50 t51 t52 t53 output10 mode10 t56 t57 t58 t59 output11 mode11 t62 t63 t64 t65 output12 mode12 t68 t69 t70 t71 output13 mode13 t74 t75 t76 t77 output14 mode14 t80 t81 t82 t83 output15 mode15 t86 t87 t88 t89 output16 mode16 t92 t93 t94 t95 output17 mode17 t98 t99 t100 t101 output18 mode18 t104 t105 t106 t107 <clinit> processingdirective19 /Lcoldfusion/tagext/lang/ProcessingDirectiveTag; mode19 1                      3 4    V 4    u v   � 4   pq   	 {| �   "     �s�          }~      �   ]     +*+,� **+,� � **+,� � **+,� � !�           +}~     +��    +��  �� �    
   �*��+� B��:*�� H� Q��Y6� �,�� �,*�� H*�� zY�S������� �,�� �,*�� H**� � zY�SY�S� ������ �,�� �,*�� H**� � zY�SY�S� ������ �*,�������j��� :� #�� � #:��� � :� �:	���	*�   � �� � � ��  � �� � � �� � � �� � � ��    f 
   �}~     �� 0    ���    ��q    ���    ���    ��q    ���    ���    ��q 	�   r  5� 5� 5� 5� 5� 5� 5� 5� -� ^� ^� ^� ^� ^� ^� ^� ^� V� �� �� �� �� �� �� �� �� ��  � �� �    
   �*��+� B��:*ɶ H� Q��Y6� �,�� �,*ʶ H*�� zY�S������� �,�� �,*Ͷ H**� � zY�SY�S� ������ �,�� �,*ζ H**� � zY�SY�S� ������ �*,�������j��� :� #�� � #:��� � :� �:	���	*�   � �� � � ��  � �� � � �� � � �� � � ��    f 
   �}~     �� 0    ���    ��q    ���    ���    ��q    ���    ���    ��q 	�   r  5� 5� 5� 5� 5� 5� 5� 5� -� ^� ^� ^� ^� ^� ^� ^� ^� V� �� �� �� �� �� �� �� �� ��  � �| �   c     *� (� .L*� 2N*-+�o� ��      *    }~     ��    �q     / 0 �           �   #     *� 
�          }~   h� �  .  l  *� Z+� B� \:*� H� Q� ]Y6� /*,� aM� d���� � :� �:*,� hM�� m� :� #�� � #:		� q� � :
� 
�:� t�� x**� � zY|S� �� ��  c      -  �  �  �  �  �  �  �          (  1  :  C  L  U  ^  g  p  y  �  �  �  �  �  �  �  �  �  �  �  �  �  �     	      $  -  6  ?  H  Q  Z  c  l  u  ~  �  �  �  �  �  �  �  �  �  �  �  �  �  �        !  +  5  ?  I  S  ]  g  q  {  �  �  �  �  �  �  �  �  �  �  �  �  �        %  /  9  C  M  W  a  k  u    �  �  �  �  �  �  �  �  �  �  �  �  	  	  	  	  	)  	3  	=  	G  	Q  	[  	e  	o  	y  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  
  
  
  
#  
-  
7  
A  
K  
U  
_  
i  
s  
}  
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
�  	      '  1  ;  E  O  Y  c  m  w  �  �  �  �  �  �  �  �  �  �  �  �  �        !  +  5  ?  I  S  ]  g  q  {  �  �  �  �  �  �  �  �  �  �  �  �  �        "  ,  6  @  J  T  ^  h  r  |  �  �  �  �  �  �  �  �  �  �  �  �  �        &  0  :  D  N  X  b  l  v  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  9  H    �  �  �  	    �  �  �  [  e  o  y  �  U  _  i  ;    �  �  �  �  �  �  �  }  �  �,�� ���,�� ���,�� ���,�� ���,�� ���,�� ��x,�� ��o,�� ��f,�� ��],�� ��T,�� ��K,�� ��B,�� ��9,�� ��0,�� ��',�� ��,�� ��,�� ��,�� ��,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,¶ ���,Ķ ���,ƶ ���,ȶ ���,ʶ ��|,̶ ��s,ζ ��j,ж ��a,Ҷ ��X,Զ ��O,ֶ ��F,ض ��=,ڶ ��4,ܶ ��+,޶ ��",� ��,� ��,� ��,� ���,�� ���,�� ���,¶ ���,� ���,� ���,� ���,ƶ ���,ȶ ���,ʶ ���,� ���,� ���,� ���,�� ���,�� ���,�� ��w,�� ��n,�� ��e,�� ��\, � ��R,� ��H,� ��>,� ��4,� ��*,
� �� ,� ��,� ��,� ��,� ���,� ���,� ���,� ���,� ���,� ���,� ���, � ���,"� ���,$� ���,&� ���,(� ���,*� ���,,� ��v,.� ��l,0� ��b,2� ��X,4� ��N,� ��D,6� ��:,8� ��0,:� ��&,<� ��,>� ��,@� ��,B� ���,D� ���,F� ���,H� ���,J� ���,L� ���,N� ���,P� ���,R� ���,T� ���,V� ���,X� ���,Z� ���,\� ��|,^� ��r,`� ��h,b� ��^,d� ��T,f� ��J,h� ��@,j� ��6,l� ��,,n� ��",p� ��,r� ��,t� ��,v� ���,x� ���,z� ���,|� ���,~� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ��x,�� ��n,�� ��d,�� ��Z,�� ��P,�� ��F,�� ��<,�� ��2,�� ��(,�� ��,�� ��,�� ��
,�� �� ,�� ���,�� ���,�� ���,�� ���,|� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ���,�� ��~,¶ ��t,Ķ ��j,ƶ ��`,ȶ ��V,ʶ ��L,̶ ��B,ζ ��8,ж ��.,Ҷ ��$,Զ ��,ֶ ��,ض ��,ڶ ���,ܶ ���,޶ ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���,�� ��z,� ��p,�� ��f,�� ��\,�� ��R,�� ��H,�� ��>,�� ��4, � ��*,� �� ,� ��,� ��,� ��,
� ���,ȶ ���,ʶ ���,̶ ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���,� ���,� ��y, � ��o,"� ��e,$� ��[,&� ��Q,(� ��G,*� ��=,,� ��3,.� ��),0� ��,2� ��,4� ��,� ��,� ���,6� ���,8� ���,:� ���,<� ���,>� ���,@� ���,B� ���,D� ���,F� ���,H� ���,J� ���,L� ��,N� ��u,P� ��k,R� ��a,T� ��W,V� ��M,X� ��C,Z� ��9,\� ��/,^� ��%,`� ��,b� ��,d� ��,f� ���,h� ���,j� ���,l� ���,n� ���,p� ���,r� ���,t� ���,v� ���,x� ���,z� ���,|� ���,~� ���,�� ��{*��+� B��:*�� H� Q��Y6� ;,�� �,*�� H*�� zY�S������� �,�� ��������� :� #�� � #:��� � :� �:�����*+,��� ���*��+� B��:*ö H� Q��Y6� ;,�� �,*Ķ H*�� zY�S������� �,�� ��������� :� #�� � #:��� � :� �:����:*+,��� ��+*��+� B��:*Ѷ H� Q��Y6� s,�� �,*Զ H**� � zY�SY�S� ������ �,�� �,*ն H**� � zY�SY�S� ������ �*,����������� :� #�� � #:��� � :� �:����Z*��+� B��:*ض H� Q��Y6� s,¶ �,*۶ H**� � zY�SY�S� ������ �,Ķ �,*ܶ H**� � zY�SY�S� ������ �*,����������� : � # �� � #:!!��� � :"� "�:#���#�
�,ƶ ��
~,ȶ ��
t,ʶ ��
j,̶ ��
`*��+� B��:$*� H$� Q$��Y6%� s,ζ �,*� H**� � zY�SY�S� ������ �,Ķ �,*� H**� � zY�SY�S� ������ �*,���$�����$��� :&� #&�� � #:'$'��� � :(� (�:)$���)�	�*��+� B��:**� H*� Q*��Y6+� s,ж �,*� H**� � zY�SY�S� ������ �,Ķ �,*� H**� � zY�SY�S� ������ �*,���*�����*��� :,� #,�� � #:-*-��� � :.� .�:/*���/��*��	+� B��:0*�� H0� Q0��Y61� s,Ҷ �,*�� H**� � zY�SY�S� ������ �,Ķ �,*�� H**� � zY�SY�S� ������ �*,���0�����0��� :2� #2�� � #:303��� � :4� 4�:50���5��*��
+� B��:6*�� H6� Q6��Y67� s,Զ �,*�� H**� � zY�SY�S� ������ �,Ķ �,*�� H**� � zY�SY�S� ������ �*,���6�����6��� :8� #8�� � #:969��� � ::� :�:;6���;�,ֶ ��,ض ��,ڶ ���,ܶ ���*��+� B��:<*	� H<� Q<��Y6=� s,޶ �,*� H**� � zY�SY�S� ������ �,Ķ �,*� H**� � zY�SY�S� ������ �*,���<�����<��� :>� #>�� � #:?<?��� � :@� @�:A<���A�,� ��,� ��
*��+� B��:B*� HB� QB��Y6C� s,� �,*� H**� � zY�SY�S� ������ �,Ķ �,*� H**� � zY�SY�S� ������ �*,���B�����B��� :D� #D�� � #:EBE��� � :F� F�:GB���G�8*��+� B��:H*� HH� QH��Y6I� s,� �,*� H**� � zY�SY�S� ������ �,Ķ �,* � H**� � zY�SY�S� ������ �*,���H�����H��� :J� #J�� � #:KHK��� � :L� L�:MH���M�f*��+� B��:N*#� HN� QN��Y6O� s,� �,*&� H**� � zY�SY�S� ������ �,Ķ �,*'� H**� � zY�SY�S� ������ �*,���N�����N��� :P� #P�� � #:QNQ��� � :R� R�:SN���S��*��+� B��:T**� HT� QT��Y6U� s,� �,*-� H**� � zY�SY�S� ������ �,Ķ �,*.� H**� � zY�SY�S� ������ �*,���T�����T��� :V� #V�� � #:WTW��� � :X� X�:YT���Y��,� ���,� ���,� ���,� ���*��+� B��:Z*;� HZ� QZ��Y6[� s,�� �,*=� H**� � zY�SY�S� ������ �,Ķ �,*>� H**� � zY�SY�S� ������ �*,���Z�����Z��� :\� #\�� � #:]Z]��� � :^� ^�:_Z���_��*��+� B��:`*A� H`� Q`��Y6a� s,�� �,*C� H**� � zY�SY�S� ������ �,Ķ �,*D� H**� � zY�SY�S� ������ �*,���`�����`��� :b� #b�� � #:c`c��� � :d� d�:e`���e� �,�� �� �,�� �� �*��+� B��:f*Q� Hf� Qf��Y6g� s,�� �,*S� H**� � zY�SY�S� ������ �,Ķ �,*T� H**� � zY�SY�S� ������ �*,���f�����f��� :h� #h�� � #:ifi��� � :j� j�:kf���k� *� !��� *,g��*� h $ 9 <� < A <�  \ h� b e h�  \ w� b e w� h t w� w | w���
���
��!�Z�������Z��������������������������������������[g�adg��[v�adv�gsv�v{v��Ua�[^a��Up�[^p�amp�pup��'3�-03��'B�-0B�3?B�BGB�r����r������D�������D���������������>�������>���������������$�������$����������������}�������}���������������O[�UX[��Oj�UXj�[gj�joj��!-�'*-��!<�'*<�-9<�<A<��'�!$'��6�!$6�'36�6;6�f�������f��������L�������L���������������   : l  }~    � 0   ��   �q   ��   ��   ��   �q   �q   �� 	  �� 
  �q   ��   ��   �q   ��   ��   �q   ��   ��   �q   ��   ��   �q   ��   ��   �q   ��   ��   �q   ��   ��   �q    �� !  �� "  �q #  �� $  �� %  �q &  �� '  �� (  �q )  �� *  �� +  �q ,  �� -  �� .  �q /  �� 0  �� 1  �q 2  �� 3  �� 4  �q 5  �� 6  �� 7  �q 8  �� 9  �� :  �q ;  �� <  �� =  �q >  �� ?  �� @  �q A  �� B  �� C  �q D  �� E  �� F  �q G  �� H  �� I  �q J  �� K  �� L  �q M  �� N  �� O  �q P  �� Q  �� R  �q S  �� T  �� U  �q V  �� W  �� X  �q Y  �� Z  �� [  �q \  �� ]  �� ^  �q _  �� `  �� a  �q b  �� c  �� d  �q e  �� f  �� g  �q h  �� i  �� j  �q k�  	fY    �  �  �  � d m v  � �  � "� $� &� (� 1� 3� 5� 7� 9� ;� B� D F H J! R* T3 V< YE [N dW h` ji lr n{ s� u� w� y� {� }� �� �� �� �� �� �� �� �� � � � � �& �/ �8 �A �J �S �\ �e �n �w �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � � �$ �. �8 �B LV`jt
~���������� �"�$	 &	
(	*	,	(.	20	<2	F4	P6	Z8	d:	n<	x>	�@	�B	�D	�F	�H	�J	�L	�N	�P	�R	�T	�V	�X
Z
^
`
"d
,f
6h
@j
Jl
Tn
^p
hr
rt
|v
�x
�z
�|
�~
��
��
��
��
��
��
��
��
�����&�0�:�D�N�X�b�l�v������������������������������ �*�4�>�H�R�\�f�p�z������������������������
#,5?IS]gq {"�$�&�(�-�/�1�3�8�<�>�@�B�JLNP%R/T9XC]MgWiamkouqs�u�w�y�{�}�����������������)�3�=�G�Q�[�e�o�y���������������������������0�t�t�t�t�t�t�t�t�l�?�?������������L�L�L�L�L�L�L�L�D�������������������������������������������������������������������������������������������������������������������������������������������������������V�V�^�^�^�^�^�^�^�^�V�������������������(�(��XXXXXXXXP���������"	"	��>>>>>>>>6nnnnnnnnf@ @ @ @ @ @ @ @ 8 ���&�&�&�&�&�&�&�&�&''''''''
'�#�#�-�-�-�-�-�-�-�-�-�.�.�.�.�.�.�.�.�.~*~*P1Z3d5n9�=�=�=�=�=�=�=�=�=�>�>�>�>�>�>�>�>�>x;x;�C�C�C�C�C�C�C�CxC�D�D�D�D�D�D�D�D�DJAJAG&MfSfSfSfSfSfSfSfS^S�T�T�T�T�T�T�T�T�T0Q0QXXXXXXX �  �  �  
h    
J6� <� >X� <� Z�� <���Y� �R� ն� �� �n� �� ��j�>�!.�#=�% ��' Ҷ)�+�-`�/�1 �3&�5-�7 �9 ��; ��= �?d�A ��C�E�G�I�Kt�M ��O�QV�SA�U ��W �Y0�[�]i�_�a ��c!�e ��g�ic�k$�m �o ܶq	�s ��u ��w ��y ��{ ��} Ӷ ���g�� ���+��6��^����4��	��w��1��B�� ö� ����� Ѷ�a�� ��� ˶�7��x�� ��� ��� �����"��K�� ��� ݶ� ���U�� ̶�$��X����)�� ¶���I��v�� �� Ͷ�;��9��@����M��?�� ���<����r��
����:�� ������� ����� ��� �������(�%�#� �� ƶ	� ζ ��y� ��f� ��,� ��}�l�[�! �# ɶ%8�' �)�+ �-Z�/b�1�3 ��5*�7�9 ض;J�= ��?,�A ��C ��E�G�I ۶K ��M ϶O�Q�S'�U�W ��Y3�[�] ��_�a*�c#�e�g�i ��k)�m�o ��q ��s ��u ֶw �y ��{m�} ��F��q��D�� ��~��T�� Ķ��� ��� ��� ���'�� Ŷ� ׶� �� ���5��p��h��\�� ȶ�z��|��s��E����+����/�� ��� �����O��2�� ���P������ ٶ� ���]��H��{�� ��� ��� ���%���� �� ���o�� ����� ڶ��� ��� ���� �����
�� �� ޶�k�� �u� Զ-�L�	� ��� �� �� �� �S���C� ��!Q�#&�%�'_�) ��+!�- ��/ �1W�3 ��5 ��7 ��9 ��;e�=�? ��A"�C ߶E ��G ��IG�K ʶMY�O �Q�S ��UN�W жY ��[�]�_(�a Ƕc �e�� x�uY�w�z�s�         
J}~   m� �  O     �*� >+� B� D:*� H� L� Q� UY6� *,�j� :� =�� d���� m� :� #�� � #:�k� � :	� 	�:
�l�
*�    9 _� ? S _� Y \ _�   9 n� ? S n� Y \ n� _ k n� n s n�    p    �}~     �� 0    ���    ��q    ���    � �    ��q    ��q    ���    ��� 	   ��q 
�              "    #