����  - � 
SourceFile */CFIDE/administrator/security/useredit.cfm 6cfuseredit2ecfm1061805296$funcCONSTRUCTFILEPERMISSIONS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   FILEPERMSSTR  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - getVariable  (I)Lcoldfusion/runtime/Variable; / 0 %coldfusion/runtime/ArgumentCollection 2
 3 1   5 set (Ljava/lang/Object;)V 7 8 coldfusion/runtime/Variable :
 ; 9 _isNull (Ljava/lang/Object;Z)Z = >
   ? _Object (Z)Ljava/lang/Object; A B coldfusion/runtime/Cast D
 E C _boolean (Ljava/lang/Object;)Z G H
 E I _setCurrentLineNo (I)V K L
   M PERMISSIONSOBJ O _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; Q R
   S ArrayLen (Ljava/lang/Object;)I U V coldfusion/runtime/CFPage X
 Y W (I)Ljava/lang/Object; A [
 E \ _compare (Ljava/lang/Object;D)D ^ _
   ` I b 1 d _set '(Ljava/lang/String;Ljava/lang/Object;)V f g
   h 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; Q j
   k _String &(Ljava/lang/Object;)Ljava/lang/String; m n
 E o $$$$ q concat &(Ljava/lang/String;)Ljava/lang/String; s t java/lang/String v
 w u OBJ y _arrayGetAt 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; { |
   } TEMPFILE  _get � R
   � get � java/lang/Object � FILENAME � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
   � <,> � 	&lt;,&gt; � ReplaceList J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 Y � ==== � ACTION � '(Ljava/lang/String;I)Ljava/lang/Object; Q �
   � _double (Ljava/lang/Object;)D � �
 E � '(Ljava/lang/Object;Ljava/lang/Object;)D ^ �
   � constructfilepermissions � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � 
Parameters � REQUIRED � false � NAME � permissionsobj � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this 8Lcfuseredit2ecfm1061805296$funcCONSTRUCTFILEPERMISSIONS; LocalVariableTable Code getName ()Ljava/lang/String; getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 1       � �     � �  �   "     � ��    �        � �    � �  �   !     ��    �        � �    � �  �   (     
� wYPS�    �       
 � �    � �  �  U 	   �+� � :+� ,� :	+� :
-� $� *:-� .:� 4:
6� <-� @�� FY� J� $W-)� N-P� T� Z� ]� a�t|� F� J�-ce� i� �-c� T� a�� 
-
� l� pr� x� <-z-P-c� T� ~� i-�-2� N--z� ��� �Y�S� �� i-�-3� N-�� T� p��� �� i
-
� l� p-�� T� p� x� <
-
� l� p�� x� <
-
� l� p-6� N--z� ��� �Y�S� �� p� x� <-c � �� �X-c� T-+� N-P� T� Z� ]� ��t|����-
� l��    �   z   � � �    � � �   � � �   � � �   � � �   � � �   � � �   � + ,   �  �   �  � 	  �  � 
  � O �  �  6 �  & 2& 4( 6( 6( 6( 6( 4( ;) ;) ;) ;) ;) ;) ;) ;) V) V) V) V) b) b) V) V) V) V) ;) ;) x+ x+ x+ x+ u+ �- �- �- �- �/ �/ �/ �/ �/ �/ �/ �/ �/ �/ �/ �- �1 �1 �1 �1 �1 �1 �1 �2 �2 �2 �2 �2 �2 �2 �2 �2 �3 �3 �3 �3 �3 �3 �3 �3 �3 �3 �3 �3 �3 �4 �4 �4 �4 �4 �4 �4 �4 �4 �4 �4 �4 �455555555555"6"6"6"63636A6A626262626"6"6"6"6 6P+P+P+P+P+P+P+]+]+j+j+j+j+]+]+ u+ ;)�9�9�9�9�9     �   #     *� 
�    �        � �    �   �   e     G� �Y� �Y�SY�SY�SY� �Y� �Y� �Y�SY�SY�SY�S� �SS� �� ��    �       G � �        ����  - � 
SourceFile */CFIDE/administrator/security/useredit.cfm 0cfuseredit2ecfm1061805296$funcCFADMIN_GETALLDSNS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   DSNNAMES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - _setCurrentLineNo (I)V / 0
   1 ArrayNew (I)Ljava/util/List; 3 4 coldfusion/runtime/CFPage 6
 7 5 set (Ljava/lang/Object;)V 9 : coldfusion/runtime/Variable <
 = ; REQUEST ? java/lang/String A SQLEXECUTIVE C NAMES E _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; G H
   I _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; K L
   M _List $(Ljava/lang/Object;)Ljava/util/List; O P coldfusion/runtime/Cast R
 S Q 
textnocase U asc W 	ArraySort 7(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z Y Z
 7 [ cfadmin_getAllDsns ] metaData Ljava/lang/Object; _ `	  a &coldfusion/runtime/AttributeCollection c java/lang/Object e name g 
Parameters i ([Ljava/lang/Object;)V  k
 d l getMetadata ()Ljava/lang/Object; this 2Lcfuseredit2ecfm1061805296$funcCFADMIN_GETALLDSNS; LocalVariableTable Code getName ()Ljava/lang/String; getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 1       _ `     n o  s   "     � b�    r        p q    t u  s   !     ^�    r        p q    v w  s   #     � B�    r        p q    x y  s  }     w+� � :+� ,� :	+� :
-� $� *:-� .:
-R� 2-� 8� >
-@� BYDSYFS� J� >-W� 2-
� N� TVX� \W-
� N��    r   p    w p q     w z {    w | `    w } ~    w  �    w � �    w � `    w + ,    w  �    w  � 	   w  � 
 �   ~   P ,P ,R 6R 6R 5R 5R 5R 5R ,R ?U ?U ?U ?U =U ]W ]W ]W ]W fW fW hW hW ]W ]W ]W nX nX nX nX nX     s   #     *� 
�    r        p q    �   s   C     %� dY� fYhSY^SYjSY� fS� m� b�    r       % p q        ����  -
 
SourceFile */CFIDE/administrator/security/useredit.cfm cfuseredit2ecfm1061805296  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   ALLROLESMAP Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   GRANTEDFILEPERMISSIONS   	   NEWFILEREAD   	    FILEOBJ " " 	  $ 
DATASOURCE & & 	  ( EXECUTE_VAR * * 	  , USERNAME . . 	  0 TOKEN 2 2 	  4 ADDFILE 6 6 	  8 	AUTHUSERS : : 	  < ALLOWRDSACCESSLABEL > > 	  @ 
EDITEDUSER B B 	  D EDIT F F 	  H 	PASSWORD2 J J 	  L PASSWORD_EMPTY N N 	  P 	PASSWORD1 R R 	  T NEWFILE V V 	  X DATAS Z Z 	  \ CFADMIN_GETALLDSNS ^ ^ 	  ` ERR_USERNAMELENGTH b b 	  d SORTEDDSNARRAY f f 	  h DESCRIPTIONLABEL j j 	  l USERALLOWADMINAPI n n 	  p NEWFILEEXECUTE r r 	  t ACTS v v 	  x USERALLOWADMINAPICHECK z z 	  | 	CANCELADD ~ ~ 	  � I � � 	  � GRANTEDROLES � � 	  � VFSFILEFACTORY � � 	  � ERR_CANTCREATEROOT � � 	  � URL � � 	  � ROLE � � 	  � DELETE � � 	  � 	USERALLOW � � 	  � USERNAME_EMPTY � � 	  � ERR_PASSWORDLENGTH � � 	  � DESCRIPTION � � 	  � ERR_USERNAMENONCHARS � � 	  � APIACCESSONLYLABEL � � 	  � 
DELETE_VAR � � 	  � NEWFILEDELETE � � 	  � 
ADDUSERBTN � � 	  � ALLDATASOURCESMAP � � 	  � PAGEHEADER_USERMANAGER � � 	  � ADMINACTION � � 	  � ALLROLES � � 	  � PROHIBITEDDATASOURCESLABEL � � 	  � GRANTEDDATASOURCES � � 	  � PROHIBITEDSERVICESLABEL � � 	  � ALLOWEDSERVICESLABEL � � 	  � ADMINAUTH_ERROR � � 	  � REQUEST � � 	  � ALLOWEDROLESLABEL � � 	  � BROWSE_BUTTON_USER � � 	  � BERRORSEXIST � � 	  � FNAMES � � 	  � ERR_USERNAMEALREADYEXISTS � � 	  � MODE � � 	   ERR_PASSWORDMISMATCH 	  FILEPERMISSIONSSTR 	  ALLOWEDDATASOURCESLABEL

 	  TEMPFILE 	  TEMPLIST 	  GRANTEDROLESSELECTLIST 	  ADDEDITUSERFILEDIR 	  ALLSERVICESMAP 	   SERVICE"" 	 $ CURRENTUSER&& 	 ( SORTEDDSNNAMES** 	 , NEWUSER.. 	 0 ADMINCONSOLEANDAPILABEL22 	 4 ADDUSER66 	 8 EDITFILE:: 	 < USERDATASOURCEPERMISSION>> 	 @ UNAMEBB 	 D SORTEDROLENAMESFF 	 H PASSWORDJJ 	 L FILEPERMNN 	 P 
FILESTRUCTRR 	 T CONSTRUCTFILEPERMISSIONSVV 	 X ALLOWADMINACCESSLABELZZ 	 \ USERALLOWADMINISTRATIVE^^ 	 ` PROHIBITEDROLESSELECTLISTbb 	 d 
FILESPERMSff 	 h 	SUBTITLE2jj 	 l 	SUBTITLE3nn 	 p PWORDrr 	 t CHECKCSRFTOKENvv 	 x 	SUBTITLE1zz 	 | ROLENAME~~ 	 � ALLDATASOURCES�� 	 � GRANTEDSERVICES�� 	 � EDITUSERBTN�� 	 � FILEACTIONSARRAY�� 	 � READ_VAR�� 	 � GETCSRFTOKEN�� 	 � 	WRITE_VAR�� 	 � PROHIBITEDROLESLABEL�� 	 � CANCELEDITBTN�� 	 � CONFIRMPASSWORD�� 	 � FORM�� 	 � EDITUSER�� 	 � CHARHELPSTRING�� 	 � ERR_USERDOESNTEXIST�� 	 � AERRORMESSAGES�� 	 � RDSAUTH_ERROR�� 	 � NEWFILEWRITE�� 	 � 
TEMPACTION�� 	 � USERALLOWRDS�� 	 � USERALLOWADMIN�� 	 � com.macromedia.SourceModTime  R^�j pageContext #Lcoldfusion/runtime/NeoPageContext;��	 � getOut ()Ljavax/servlet/jsp/JspWriter;�� javax/servlet/jsp/JspContext�
�� parent Ljavax/servlet/jsp/tagext/Tag;��	 � _setCurrentLineNo (I)V��
 � java/lang/String� SECURITY� _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;��
 � isAdminSecurityEnabled� java/lang/Object� _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;��
 � _boolean (Ljava/lang/Object;)Z�� coldfusion/runtime/Cast�
�� isAdminUserIdRequired� isRootAdminUser� NOTROOTADMIN true _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V
  'class$coldfusion$tagext$lang$IncludeTag Ljava/lang/Class; !coldfusion.tagext.lang.IncludeTag forName %(Ljava/lang/String;)Ljava/lang/Class; java/lang/Class
	
	  _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag;
  !coldfusion/tagext/lang/IncludeTag 	cfinclude template GetContextRoot ()Ljava/lang/String; 
 ! "/CFIDE/administrator/forbidden.cfm# concat &(Ljava/lang/String;)Ljava/lang/String;%&
�' _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;)*
 + setTemplate (Ljava/lang/String;)V-.
/ 	hasEndTag (Z)V12 coldfusion/tagext/GenericTag4
53 _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z78
 9 %class$coldfusion$tagext$lang$AbortTag coldfusion.tagext.lang.AbortTag<;
	 > coldfusion/tagext/lang/AbortTag@ �
<script src="../../../cf_scripts/scripts/ajax/jquery/jquery.js" type="text/javascript"></script>
<script src="../sha1.js" type="text/javascript"></script>
B writeD. java/io/WriterF
GE pstrength.cfmI �
<script language="Javascript" src="../scripts/util.js"></script>


<script type="text/javascript">
$(function() {
$('.password').pstrength();
});
</script>

K LOCALEM REQUEST.LOCALEO enQ checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)VST
 U 
LOCALEFILEW java/lang/StringBufferY resources/security_[ .
Z] _resolveAndAutoscalarize_�
 ` _String &(Ljava/lang/Object;)Ljava/lang/String;bc
�d append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;fg
Zh .cfmj toStringl 
�m (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTagpo
	 r "coldfusion/tagext/lang/ImportedTagt l10nv 
../cftags/x adminz setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V|}
u~ &coldfusion/runtime/AttributeCollection� id� adminAuth_error� var� ([Ljava/lang/Object;)V �
�� setAttributecollection (Ljava/util/Map;)V��  coldfusion/tagext/lang/ModuleTag�
�� 
doStartTag ()I��
�� 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;��
 � �Administrative Authentication is currently only enabled for the admin user.  To enable access to the Console or Admin API by other users, go to Security > Administrator to enable Separate User name and Password Authentication� doAfterBody��
�� _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;��
 � doEndTag�� #javax/servlet/jsp/tagext/TagSupport�
�� doCatch (Ljava/lang/Throwable;)V��
�� 	doFinally� 
�� rdsAuth_error� �RDS Authentication is currently only enabled for the admin user.  To enable access to RDS by other users, go to Security > RDS to enable Separate User name and Password Authentication� 	subtitle1� RDS and Administrator Access� 	subtitle2� 	Sandboxes� 	subtitle3� Exposed Services� userManagerPagename� pagename� User Manager� username� 
User name:� Password� 	Password:� ConfirmPassword� Confirm Password:� DescriptionLabel� Description:� AllowRDSAccessLabel� Allow RDS Access� AllowAdminAccessLabel� Allow Administrative Access� APIAccessOnlyLabel� API Access Only� AdminConsoleAndAPILabel� "Administrator Console & API Access� AllowedRolesLabel� Allowed Roles:� ProhibitedRolesLabel� Prohibited Roles:� AllowedServicesLabel� Allowed Services:� ProhibitedServicesLabel� Prohibited Services:� AllowedDataSourcesLabel� Allowed Data sources:� ProhibitedDataSourcesLabel� Prohibited Data sources:� UserDataSourcePermission� Data Source Permissions� AddEditUserFileDir  (Add / Edit Secured Files and Directories 
addUserBtn Add User editUserBtn Update User
 cancelEditBtn Cancel Edit 	cancelAdd Cancel addUser Authentication (Add Mode) editUser Authentication (Edit Mode) edit Edit Delete  delete" GridHeaderAction$ Action& GridHeaderUser( User* GridHeaderSandBoxes, GridHeaderRoles. Roles0 GridHeaderAccess2 Access4 CFAdminAccessLabel6 CF Admin8 RDSAccessLabel: RDS< AdminAPIAccessLabel> 	Admin API@ err_usernameAlreadyExistsB 5Unable to create user: this user name already exists.D err_cantcreaterootF ]Unable to create user: You are attempting to create a user with the same ID as the root user.H err_userDoesntExistJ The selected user doesn't existL pageHeader_usermanagerN Security &gt; User ManagerP deleteConfirmationR *Are you sure you want to delete this user?T 	_factor31 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object;VW
 X err_passwordlengthZ 8Password should be greater than or equal to 5 characters\ err_usernamelength^ /User name should be between 5 and 20 characters` err_usernamenoncharsb 2User name can contain only alphanumeric charactersd err_passwordmismatchf *Password and Confirm Password do not matchh charHelpStringj (Minimum 5 characters)l username_emptyn User name cannot be emptyp password_emptyr Password cannot be emptyt password_oldpassword_error1v password_oldpassword_errorx ?Password could not be changed as the old password is incorrect.z err_no_sandbox_permission| NYou need to grant atleast one permission to files/directories added in sandbox~ allDatasourcesLabel� &lt;&lt;ALL DATASOURCES&gt;&gt;� read� read_var� Read�D 	write_var� Write� execute� execute_var� Execute� 
delete_var�%

<script language="javascript">
	//global var to keep file permissions for this call
	var globalfilepermissionsstr = "";
	if(document.getElementById("filepermissionsstr") != null && (document.getElementById("filepermissionsstr").value).length > 0)
	{		
		globalfilepermissionsstr = document.getElementById("filepermissionsstr").value;
	}
	var interfileentrydelim = "$$$$";
	var fileactionsdelim = "====";
	// variable to keep original name in case of edit
	var originalfilenamestr ="";
	
	
	
	function init()
	{
		//Initialize the List Boxes to the correct state when the page loads.
		enableListBoxes();
		showRadioButtons();
		enableSandBoxes();
	}

	function showRadioButtons()
	{
		var allowAdministrative = document.getElementById("userallowadministrative");
		var userallowapionly = document.getElementById("userallowapionly");
		var userallowapiandconsole = document.getElementById("userallowapiandconsole");
		if (allowAdministrative.checked)
		{
			userallowapionly.disabled=false;
			userallowapiandconsole.disabled=false;
			if (!userallowapionly.checked && !userallowapiandconsole.checked) userallowapiandconsole.checked = true;
		}
		else
		{
			userallowapionly.disabled=true;
			userallowapiandconsole.disabled=true;
		}

	}
	function checkAdminAuth()
	{
		� $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag��
	 � coldfusion/tagext/io/OutputTag�
�� alert('� _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object;��
 � ');�
�� coldfusion/tagext/QueryLoop�
��
��
�� 
		� _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V��
 � (

	}
	function checkRDSAuth()
	{
		� getUseSingleRdsPassword��

	}
	function enableListBoxes()
	{
		var allowAdministrative = document.getElementById("userallowadministrative");
		var grantedRolesList = document.getElementById("grantedRolesSelectList");
		var prohibitedRolesList = document.getElementById("prohibitedRolesSelectList");

		if (allowAdministrative.checked)
		{
			grantedRolesList.disabled= false;
			prohibitedRolesList.disabled = false;
		}
		else
		{
			grantedRolesList.disabled = true;
			prohibitedRolesList.disabled = true;
		}
	}
	
	function enableSandBoxes()
	{
		var allowrds = document.getElementById("userallowrds");
		var grantedDatasourcesList = document.getElementById("grantedDatasourcesSelectList");
		var prohibitedDatasourcesList = document.getElementById("prohibitedDatasourcesSelectList");

		if (allowrds.checked)
		{
			grantedDatasourcesList.disabled= false;
			prohibitedDatasourcesList.disabled = false;
			setenabledisable(document.getElementById("filestable"),false);
			setenabledisable(document.getElementById("addNewFileBtn"),false);
			setenabledisable(document.getElementById("filepermissionstable"),false);
		}
		else
		{
			grantedDatasourcesList.disabled = true;
			prohibitedDatasourcesList.disabled = true;
			setenabledisable(document.getElementById("filestable"),true);
			setenabledisable(document.getElementById("addNewFileBtn"),true);
			setenabledisable(document.getElementById("filepermissionstable"),true);
		}
	}
	
	function setenabledisable(elem,flag) 
	{
		try 
		{
			elem.disabled = flag;
		}
		catch(E)
		{}
		if (elem.childNodes && elem.childNodes.length > 0) 
		{
			for (var x = 0; x < elem.childNodes.length; x++) 
			{
				setenabledisable(elem.childNodes[x],flag);
			}
		}
	}

	function validateFormControls()
	{
		var unameValue = document.getElementById("uname").value;
		var password1Field = document.getElementById("password1").value;
		var password2Field = document.getElementById("password2").value;

		if (unameValue.length == 0)
		{
			� A
			return false;
		}

		if (unameValue.length < 5)
		{
			� J
			return false;
		}

		if (unameValue.match(/\W/) != null)
		{
			� F
			return false;
		}

		if (password1Field.length == 0)
		{
			�,
			return false;
		}
		transformPasswordFields();
		
		return true;
	}
	
	    
    function transformPasswordFields()
	{
	    var pwdFields = [document.useredit.password1, document.useredit.password2];
	    for(var i=0; i < pwdFields.length; i++)
	    {
	    	if(pwdFields[i].value == � "� STATICPASSWORD��)
	    		continue;
	        var value = pwdFields[i].value.replace(/^\s+|\s+$/gm,'');
	        var length = value.length;
	        if(length > 0)
	            pwdFields[i].value = hex_sha1(value);
	    }
	}

	function MoveItemsAcrossLists(sourceList, destinationList)
	{
		var sourceListOpts = sourceList.options;
		var sourceListOptsLen = sourceList.options.length;
		var destinationListOpts = destinationList.options;
		var destinationListOptsLen = destinationList.options.length;

		var i=0;
		while (i<sourceListOptsLen)
		{
			if (sourceListOpts[i].selected)
			{
				destinationListOpts[destinationListOptsLen++] = new Option(sourceListOpts[i].text, sourceListOpts[i].value);
				sourceListOpts[i] = null;
				sourceListOptsLen--;
			}
			else
				i++;
		}
    }
	
	/**
	 * we need special handling for All datasources case, hence a separate method
	 */
	function MoveItemsAcrossListsForDS(sourceList, destinationList)
	{
		var sourceListOpts = sourceList.options;
		var sourceListOptsLen = sourceList.options.length;
		var destinationListOpts = destinationList.options;
		var destinationListOptsLen = destinationList.options.length;

		var i=0;
		while (i<sourceListOptsLen)
		{
			if (sourceListOpts[i].selected)
			{
				if (sourceListOpts[i].value == "*") {
					//empty the destination list fist and move things to source list
					while(destinationListOptsLen > 0)
					{
						sourceListOpts[sourceListOptsLen++] = new Option(destinationListOpts[0].text, destinationListOpts[0].value);
						destinationListOpts[0] = null;
						destinationListOptsLen--;
					}
					
					// now copy everything from source list to destination list
					while(sourceListOptsLen > 0){
						destinationListOpts[destinationListOptsLen++] = new Option(sourceListOpts[0].text, sourceListOpts[0].value);
						sourceListOpts[0] = null;
						sourceListOptsLen--;
					}
					return;
				}
				else {
					destinationListOpts[destinationListOptsLen++] = new Option(sourceListOpts[i].text, sourceListOpts[i].value);
					sourceListOpts[i] = null;
					sourceListOptsLen--;
				}
			}
			else
				i++;
		}
    }

	function adjustRoles ()
	{
		//Adjust the grantedRoles list (hidden form variable)
		var i=0;
		var grantedRolesJS = document.getElementById("grantedRoles");
		var grantedRolesList = document.getElementById("grantedRolesSelectList").options;
		var grantedRolesListLen = document.getElementById("grantedRolesSelectList").options.length;

		grantedRolesJS.value = "";
		for (i=0; i<grantedRolesListLen; i++)
		{
			if (grantedRolesJS.value == "")
			{
				grantedRolesJS.value = grantedRolesList[i].value;
			}
			else
			{
				grantedRolesJS.value = grantedRolesJS.value + "," + grantedRolesList[i].value;
			}
		}

		//Adjust the Datasources list (hidden form variable)
		var i=0;
		var grantedDatasourcesJS = document.getElementById("grantedDatasources");
		var revokeDatasourcesList = document.getElementById("grantedDatasourcesSelectList").options;
		var revokeDatasourcesListLen = document.getElementById("grantedDatasourcesSelectList").options.length;

		grantedDatasourcesJS.value = "";
		for (i=0; i<revokeDatasourcesListLen; i++)
		{
			if (grantedDatasourcesJS.value == "")
			{
				grantedDatasourcesJS.value = revokeDatasourcesList[i].value;
			}
			else
			{
				grantedDatasourcesJS.value = grantedDatasourcesJS.value + "," + revokeDatasourcesList[i].value;
			}
		}

		//Adjust the grantedServices list (hidden form variable)
		var i=0;
		var grantedServicesJS = document.getElementById("grantedServices");
		var grantedServicesList = document.getElementById("grantedServicesSelectList").options;
		var grantedServicesListLen = document.getElementById("grantedServicesSelectList").options.length;

		grantedServicesJS.value = "";
		for (i=0; i<grantedServicesListLen; i++)
		{
			if (grantedServicesJS.value == "")
			{
				grantedServicesJS.value = grantedServicesList[i].value;
			}
			else
			{
				grantedServicesJS.value = grantedServicesJS.value + "," + grantedServicesList[i].value;
			}
		}
	}
	
	/**
	 * reset the form after add/edit.
	 */
	function resetfilepermissions()
	{		
		document.getElementById("logic").value = "";
		document.getElementById("fr").checked = true;
		document.getElementById("fw").checked = true;
		document.getElementById("fe").checked = true;
		document.getElementById("fd").checked = true;
		document.getElementById("addNewFileBtn").value = "Add Files / Paths";
		document.getElementById("addNewFileBtn").title = "Add Files / Paths";
		document.getElementById("addNewFileBtn").onclick = setfilepermissions;
		originalfilenamestr = "";
	}	
		
	/**
	 * return true if the file virtual file, i.e. starts with "ram:"
	 */
	function isramfile(filename)
	{
		if(filename != null && filename.length >= 4)
		{
			var urlscheme = filename.toLowerCase();		
			if(urlscheme.indexOf("ram:",0) == 0 || urlscheme.indexOf("s3:",0) == 0)
			{
				return true;
			}
		}
		return false;
	}

	/**
	 * fetch values of file permissions from form.
	 */
	function getfilepermissionsformvalues()
	{	
		var filestr = "";
		if(document.getElementById("logic") != null && (document.getElementById("logic").value).length > 0)
		{
			filestr = new String(document.getElementById("logic").value).replace(/\\/g,"/") ;
			
			// if it is a virtual file, don't set and show alert.
			if(isramfile(filestr))
			{
				alert("User cannot be given permission on Virtual files.");
				filestr ="";
			}else
			{							
				filestr = filestr + fileactionsdelim;
				filestr = filestr.replace(/</g, "&lt;");
				filestr = filestr.replace(/>/g, "&gt;");
			
				//construct actions string
				var actionstr = "";
				if(document.getElementById("fr").checked)
				{
					actionstr = actionstr + "read" + ",";
				}
				if(document.getElementById("fw").checked)
				{
					actionstr = actionstr + "write" + ",";
				}
				if(document.getElementById("fe").checked)
				{
					actionstr = actionstr + "execute" + ",";
				}
				if(document.getElementById("fd").checked)
				{
					actionstr = actionstr + "delete" + ",";
				}
				// now remove the trailing "," if any"
				if(actionstr.lastIndexOf(",") == (actionstr.length -1 ))
				{
					actionstr = actionstr.substring(0,(actionstr.length -1 ));
				}
				
				//finally add actions to this 
				filestr = filestr + actionstr;
			}
			
		}	
		return filestr;
	}
	
	/**
	 * update the hidden variable for permissions.
	 */
	function updateformelementforfilepermissions()
	{
		document.getElementById("filepermissionsstr").value = globalfilepermissionsstr;
	}
	
	/**
	 * each file permission row data, to be updated dynamically
	 */
	function getdefaultrowdata()
	{
		var tablerowdata = "<td nowrap height=\"20\" class=\"cell3BlueSides\">"
									+ "<table>"
										+"<tr>"
										+"<td>"											
											+"<a href=\"javascript:loadeditformfile('TO_REPLACE_FNAME','TO_REPLACE_ACTS');\">"
											+"<img src=\"../images/iedit.gif\" height=\"16\" width=\"16\" border=\"0\" alt=\"#edit#\"></a>"
										+"</td>"
										+"<td>"
											+"<a href=\"javascript:deletefilepermissions('TO_REPLACE_FNAME','TO_REPLACE_ACTS');\">"
											+"<img src=\"../images/idelete.gif\" height=\"16\" width=\"16\" alt=\"#delete#\" border=\"0\"></a>"
										+"</td>"
										+"</tr>"
									+"</table>"
								+"</td>"
								+"<td nowrap class=\"cellRightAndBottomBlueSide\">"
									+"<font class=\"label\">&nbsp; <a href=\"javascript:loadeditformfile('TO_REPLACE_FNAME','TO_REPLACE_ACTS')\">TO_REPLACE_FNAME</a> &nbsp; &nbsp;</font>"
								+"</td>"
								+"<td nowrap class=\"cellRightAndBottomBlueSide\"><font class=\"label\">"
								+"&nbsp; TO_REPLACE_ACTS &nbsp;</font></td>";
		return tablerowdata;
	}
	
	/**
	 * row data when there are no file entries
	 */
	function getnomappingrowdata()
	{
		var tablerowdata = "<td colspan=\"3\" height=\"50\" align=\"center\"><font class=\"sentance\">No mappings are active.</font></td��>";
		return tablerowdata;
	}

	/**
	 * code to dynamically update data in table
	 */
	function updatetableforfilepermissions()
	{
		var parenttable = document.getElementById("filepermissionstable");
		var rowcount = parenttable.rows.length;
		
		if(rowcount > 2)
		{
			for(i = 2; i < rowcount; i++)
			{
				parenttable.deleteRow(2);
			}
		}
		
		//get updated value
		if(document.getElementById("filepermissionsstr") != null && (document.getElementById("filepermissionsstr").value).length > 0)
		{		
			globalfilepermissionsstr = document.getElementById("filepermissionsstr").value;
		}
		if(globalfilepermissionsstr.length == 0)
		{
			var row = parenttable.insertRow(2);
			var temprowdata = getnomappingrowdata();
			row.innerHTML = temprowdata;
		}else
		{
			var persarray = globalfilepermissionsstr.split(interfileentrydelim);
			var insertrowindex = 0;
			for(i=0;i< persarray.length; i++)
			{
				if(persarray[i].length > 0)
				{
					var row = parenttable.insertRow(2+insertrowindex);
					var temprowdata = getdefaultrowdata();
					var datas = persarray[i].split(fileactionsdelim);
					var fname = datas[0];
					fname = fname.replace(/</g, "&lt;");
					fname = fname.replace(/>/g, "&gt;");
					
					var acts = datas[1];
				
					var actsarr = acts.split(",");
					for (j = 0; j < actsarr.length; j++) 
					{
						actsarr[j] = changeToCamelCase(actsarr[j]);
					}
					
					acts = actsarr.join(",");
					
					temprowdata = temprowdata.replace(/TO_REPLACE_FNAME/g,fname);				
					temprowdata = temprowdata.replace(/TO_REPLACE_ACTS/g,acts);
					row.innerHTML = temprowdata;
					insertrowindex++;	
				}
			}
		}	
	}
	
	/**
	 * utility method to convert to camel case
	 */
	function changeToCamelCase(acts) 
	{
		return acts.charAt(0).toUpperCase() + acts.substr(1);
	}
	
	/**
	 * create delimited string for given file name and action
	 */
	function constructfilepermissionstr(filename, actions)
	{
		var tempfilename = filename;
		tempfilename = 	tempfilename.replace(/\\/g,"/");
		tempfilename = tempfilename.replace(/</g, "&lt;");
		tempfilename = tempfilename.replace(/>/g, "&gt;");
		return tempfilename + fileactionsdelim + new String(actions).toLowerCase();
	}
	
	/**
	 * handle delete file permission event
	 */
	function deletefilepermissions(filename,actions)
	{
		if(document.getElementById("filepermissionsstr") != null && (document.getElementById("filepermissionsstr").value).length > 0)
		{		
			globalfilepermissionsstr = document.getElementById("filepermissionsstr").value;
		}
		
		globalfilepermissionsstr = globalfilepermissionsstr.replace(/</g, "&lt;");
		globalfilepermissionsstr = globalfilepermissionsstr.replace(/>/g, "&gt;");
		
		if (globalfilepermissionsstr.length > 0) 
		{
			var filetodeletestr = constructfilepermissionstr(filename, actions);
			var tempfilearray = [];			
			var persarray = globalfilepermissionsstr.split(interfileentrydelim);
			var j = 0;
			for(i=0;i< persarray.length; i++)
			{
				// if not the string to copy, then copy to temp
				if(persarray[i] != filetodeletestr)
				{
					tempfilearray[j++] = persarray[i];
				}
			}
			//construct the string back
			globalfilepermissionsstr = tempfilearray.join(interfileentrydelim);
		}
		
		//set this back to form hidden element
		updateformelementforfilepermissions();

		//update the table for showing added elements
		updatetableforfilepermissions();
		
		//reset file permissions
		resetfilepermissions();
	}
	
	/**
	 * populate form for edit
	 */
	function loadeditformfile(filename,actions)
	{
		originalfilenamestr = filename;
		document.getElementById("logic").value = filename;
		document.getElementById("fr").checked = true;
		document.getElementById("fw").checked = true;
		document.getElementById("fe").checked = true;
		document.getElementById("fd").checked = true;
		if(actions.search(/read/i) == -1)
		{
			document.getElementById("fr").checked = false;
		}
		if(actions.search(/write/i) == -1)
		{
			document.getElementById("fw").checked = false;
		}
		if(actions.search(/execute/i) == -1)
		{
			document.getElementById("fe").checked = false;
		}
		if(actions.search(/delete/i) == -1)
		{
			document.getElementById("fd").checked = false;
		}
		document.getElementById("addNewFileBtn").value = "Edit Files / Paths";
		document.getElementById("addNewFileBtn").title = "Edit Files / Paths";
		document.getElementById("addNewFileBtn").onclick = setfilepermissions;
	}

	/**
	 * add/edit file permissions.
	 */
	function setfilepermissions()
	{	
		var newfileperstr = getfilepermissionsformvalues();
		var split = newfileperstr.split("====");
		if(split.length == 2 && split[1].length == 0)
		{
                   window.alert("You need to grant atleast one permission to files/directories added in sandbox");
		   return;
		}
		
		if(newfileperstr.length > 0)
		{
			//get old name, in case name edit is happening.
			if(originalfilenamestr != null && originalfilenamestr.length > 0 )
			{
				originalfilenamestr = originalfilenamestr.replace(/\\/g,"/")
				originalfilenamestr = originalfilenamestr.replace(/</g, "&lt;");
				originalfilenamestr = originalfilenamestr.replace(/>/g, "&gt;");
				originalfilenamestr = originalfilenamestr + fileactionsdelim;
			}
			
			if(document.getElementById("filepermissionsstr") != null && (document.getElementById("filepermissionsstr").value).length > 0)
			{		
				globalfilepermissionsstr = document.getElementById("filepermissionsstr").value;
			}
			
			globalfilepermissionsstr = globalfilepermissionsstr.replace(/</g, "&lt;");
			globalfilepermissionsstr = globalfilepermissionsstr.replace(/>/g, "&gt;");
			
			if(globalfilepermissionsstr.length == 0)
			{
				//get values from form fields and update in global var
				globalfilepermissionsstr = globalfilepermissionsstr + newfileperstr;
			}else 
			{
				//var newfname = newfileperstr.substring(0,(newfileperstr.indexOf("====") + 4 ));
				var updated = false;
				var persarray = globalfilepermissionsstr.split(interfileentrydelim);
				
				for(i=0;i< persarray.length; i++)
				{
					var fname = (new String(persarray[i]).split(fileactionsdelim))[0] + fileactionsdelim;
					// update the matching string
					if(fname == originalfilenamestr)
					{
						persarray[i] = newfileperstr;
						updated = true;
					}
				}
				//construct the string back
				globalfilepermissionsstr = persarray.join(interfileentrydelim);
				
							
				//if not updated yet, then it is a new string, add it.
				if(!updated)
				{
					if(globalfilepermissionsstr.length > 0)
					{
						globalfilepermissionsstr = globalfilepermissionsstr + interfileentrydelim;
					}		
					//get values from form fields and update in global var
					globalfilepermissionsstr = globalfilepermissionsstr + newfileperstr;
				}
			}
			
			//set this back to form hidden element
			updateformelementforfilepermissions();
	
			//update the table for showing added elements
			updatetableforfilepermissions();
		}					
		//reset file permissions
		resetfilepermissions();	
	}
	
    //bug: 2922000 This method is added strictly to get <<ALL FILES>> get working in edit case. some how if a user is edit who had <<ALL FILES>> permissions, when 
    // submitting this user, <<ALL FILES>> was getting messed up.
    function adjustformstrforedit(){
        if (document.getElementById("filepermissionsstr") != null && (document.getElementById("filepermissionsstr").value).length > 0) {
            str = document.getElementById("filepermissionsstr").value;
            str = str.replace(/</g, "&lt;");
            str = str.replace(/>/g, "&gt;");
            document.getElementById("filepermissionsstr").value = str;
        }
    }
</script>


� CANCELSUBMIT� FORM.CANCELSUBMIT�  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z��
 � 
	� 'class$coldfusion$tagext$net$LocationTag !coldfusion.tagext.net.LocationTag��
	 � !coldfusion/tagext/net/LocationTag� setAddtoken�2
�� usermanager.cfm� setUrl�.
�� false� 2(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)VS�
 � ArrayNew (I)Ljava/util/List;��
 � _Array 2(Ljava/lang/Object;)Lcoldfusion/runtime/FastArray;��
�� setArray !(Lcoldfusion/runtime/FastArray;)V�� coldfusion/runtime/Variable�
��  � api� _compare '(Ljava/lang/Object;Ljava/lang/String;)D��
 � set (Ljava/lang/Object;)V� 
� adminapi isDefinedCanonicalVariable  (Lcoldfusion/runtime/Variable;)Z
  	CSRFTOKEN	 FORM.CSRFTOKEN _Object (Z)Ljava/lang/Object;
� URL.CSRFTOKEN _get�
  checkCSRFToken SECTABKEYNAME 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;
  java coldfusion.vfs.VFSFileFactory  CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;"#
 $ FORM.FILEPERMISSIONSSTR& Len (Ljava/lang/Object;)I()
 * (I)Ljava/lang/Object;,
�- (Ljava/lang/Object;D)D�/
 0 $$$$2 ListToArray 6(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;45
 6 _List $(Ljava/lang/Object;)Ljava/util/List;89
�: java/util/List< size>�=? P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; A
 B getD,=E ====G 	StructNew !()Lcoldfusion/util/FastHashtable;IJ
 K 1M _arrayGetAt C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object;OP
 Q 	&lt;,&gt;S <,>U ReplaceList J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;WX
 Y FILENAME[ E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V]
 ^ ACTION` 2b ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Zde
 f 	_factor18hW
 i 	__HTSWT_0 Lcoldfusion/util/FastHashtable;kl	 m __caseValue 4(Lcoldfusion/util/FastHashtable;Ljava/lang/Object;)Iop
 q getRootAdminUserIds '(Ljava/lang/Object;Ljava/lang/Object;)D�u
 v ArrayLenx)
 y (D)Ljava/lang/Object;{
�| _arraySetAt~]
  *coldfusion/runtime/TransientVariableHolder� &(Lcoldfusion/runtime/NeoPageContext;)V �
�� SECURITYAPI� getUser� Trim�&
 � unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;�� coldfusion/runtime/NeoException�
�� t112 [Ljava/lang/String; Any���	 � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I��
�� ex� bind '(Ljava/lang/String;Ljava/lang/Object;)V��
�� unbind� 
��@       Compare '(Ljava/lang/String;Ljava/lang/String;)I��
 � IsArray��
 � $(Ljava/lang/String;)Ljava/util/List;4�
 � _factor0�W
 � D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object;_�
 � setUser� %coldfusion/runtime/ArgumentCollection� password� description� allowrdsaccess� allowadminaccess� allowadminapiaccess� 	enabledds� filepermissions� services� roles� isHashed� )([Ljava/lang/Object;[Ljava/lang/Object;)V �
�� G(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;��
 � &(Ljava/lang/String;)Ljava/lang/Object;��
 � _Map #(Ljava/lang/Object;)Ljava/util/Map;��
�� grantedRoles� StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z��
 � grantedServices� grantedDatasources� grantedFilepermissions� _factor1�W
 � _factor6�W
 � _factor7�W
 � _factor8�W
 � _factor9�W
 � _factor3�W
 � _factor4�W
 � t113 any���	  _factor5W
  	_factor10W
  _factor2	W
 
 	_factor11W
  	_factor12W
  	_factor14W
  	ENABLEDDS 	_factor15W
  FILEPERMISSIONS constructfilepermissions SERVICES ROLES  EDITEDUSER.ROLES" contains$ coldfusion.administrator& coldfusion.rds( coldfusion.adminapi* 	_factor13,W
 - 	_factor16/W
 0 t1142�	 3 	_factor175W
 6 
deleteUser8 coldfusion/runtime/SwitchTable:
; 	 addStringCase 5(Ljava/lang/String;I)Lcoldfusion/runtime/SwitchTable;=>
;? SAVEA ADDC 	_factor32EW
 F getAllAdminRolesH ArrayToList $(Ljava/util/List;)Ljava/lang/String;JK
 L ,N java/util/StringTokenizerP '(Ljava/lang/String;Ljava/lang/String;)V R
QS 	nextTokenU 
QV getL10NRoleNameX CFLOOPZ checkRequestTimeout\.
 ] hasMoreTokens ()Z_`
Qa StructKeyList #(Ljava/util/Map;)Ljava/lang/String;cd
 e 
textnocaseg asci ListSort J(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;kl
 m getAllExposedServiceso cfadmin_getAllDsnsq *s ListPrepend 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;uv
 w ListFindNoCasey�
 z (D)Z�|
�} 
ListAppendv
 � _double (Ljava/lang/Object;)D��
�� FORM.NEWFILE� FORM.NEWFILEREAD� FORM.NEWFILEWRITE� FORM.NEWFILEEXECUTE� FORM.NEWFILEDELETE� 


<body onLoad="init()">
� ../header.cfm� )class$coldfusion$tagext$html$form$FormTag #coldfusion.tagext.html.form.FormTag��
	 � #coldfusion/tagext/html/form/FormTag� cfform� action� CGI� SCRIPT_NAME� 	setAction�.
�� HTML� 	setFormat�.
�� post� 	setMethod�.
�� useredit�|.
��
�� ../include/margintop.cfm� 
	</td><tr><td>
	� ../include/errors.cfm� 4
	
		<input type="hidden" name="csrftoken" value="� getCSRFToken� ">

		<h2 class="pageHeader">� y</h2>
		<br />
		<table border="0" cellpadding="5" cellspacing="0" width="100%">
		<tr>
			<td colspan="3" bgcolor="#� 	GRAYLIGHT� (" class="cellBlueTopAndBottom">
				<b>� H</b>
			</td>
		</tr>
		<tr>
			<td>
				<label class="labelbold">*� !</label>
			</td>
			<td>
				� 

					<b>� EncodeForHTML�&
 � F</b><input class="label" type="hidden" name="uname" id="uname" value="� EncodeForHTMLAttribute�&
 � E" width="25" style="width:20em;color:#CCCCCC;" readonly="true">
				� G
					<input class="label" type="Text" id="uname" name="uname" value="� L" width="25" maxlength="20" style="width:20em;">
					<label class="label">� </label>
				� d
			</td>
			<td width="50%">&nbsp;</td>
		</tr>
		<tr>
			<td>
				<label class="labelbold">*� *class$coldfusion$tagext$html$form$InputTag $coldfusion.tagext.html.form.InputTag��
	 � $coldfusion/tagext/html/form/InputTag� setType�.
�� 	password1�
�� cfinput� value� setValue�.
�� setMaxLength��
�� class� width� 25� style� width:20em;� autocomplete  off
�� ^
				
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
				<label class="labelbold">* 	password2 W
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
				<label class="labelbold">	 {</label>
			</td>
			<td>
				<input class="label" type="Text" name="Description" width="25" style="width:20em;" value=" 	_factor19W
  �">
			</td>
			<td>&nbsp;</td>
		</tr>
	</table>
		<table border="0" cellpadding="5" cellspacing="0" width="100%">
			<tr>
				<td colspan="2" bgcolor="# )" class="cellBlueTopAndBottom">
					<b> 3</b>
				</td>
			</tr>
			<tr>
				<td>
					 checkbox userallowrds checked onclick ?javascript:enableSandBoxes();if (this.checked) {checkRDSAuth()} 
					<label class=labelbold>  7</label>
				</td>
			</tr>
			<tr>
				<td>
					" 
					$ 
						& userallowadministrative( Tjavascript:showRadioButtons();enableListBoxes();if (this.checked) {checkAdminAuth()}* radio, 	userallow. userallowapiandconsole0 margin-left:10px2 
						<label class=labelbold>4 </label>
						6 userallowapionly8 </label>
					: disabled< 	_factor20>W
 ? r
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<table>
						<tr>
							<td><label class=labelbold>A I</label></td>
							<td>&nbsp;</td>
							<td><label class=labelbold>C =</label></td>
						</tr>
						<tr>
							<td>
								E 
									G 

								I +class$coldfusion$tagext$html$form$SelectTag %coldfusion.tagext.html.form.SelectTagLK
	 N %coldfusion/tagext/html/form/SelectTagP grantedRolesSelectListR
Q� setMultipleU2
QV width:400px;X> 5[ (coldfusion/tagext/html/form/FormChildTag]
^�
Q� 
										a 
											c 
												<option value="e ">g </option>
											i
Q�
Q�
5�
5� 	_factor21oW
 p ?
							</td>
							<td>
								<table>
									<tr><td>r Buttont adjustRolesOptionv >>x buttnz Qjavascript:MoveItemsAcrossLists(grantedRolesSelectList,prohibitedRolesSelectList)| </td></tr>
									<tr><td>~ <<� Qjavascript:MoveItemsAcrossLists(prohibitedRolesSelectList,grantedRolesSelectList)� A</td></tr>
								</table>
							</td>
							<td>
								� prohibitedRolesSelectList� 	_factor22�W
 � 
							</td>
							� Hidden� Z
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="2" bgcolor="#� v</b>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<table>
						<tr>
							<td><label class=labelbold>� grantedServicesSelectList� _validatingMap��
 � java/util/Map� entrySet ()Ljava/util/Set;���� java/util/Set� iterator ()Ljava/util/Iterator;���� java/util/Iterator� next ()Ljava/lang/Object;���� class$java$util$Map$Entry java.util.Map$Entry��
	 � _cast 7(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;��
�� java/util/Map$Entry� getKey���� service� SetVariable 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;��
 � 
											<option value="� 
StructFind 5(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;��
 � </option>
										� hasNext�`�� %
							</td>
							<td>
								� $
								<table>
									<tr><td>� adjustServicesOption� Wjavascript:MoveItemsAcrossLists(grantedServicesSelectList,prohibitedServicesSelectList)� 	_factor23�W
 � Wjavascript:MoveItemsAcrossLists(prohibitedServicesSelectList,grantedServicesSelectList)� prohibitedServicesSelectList� h
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="2" bgcolor="#� : � /</label></td>
						</tr>
						<tr>
							� 	
							� 
							<td>
								� grantedDatasourcesSelectList� allDatasourcesMap[datasource]� IIf 9(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;��
 � 	_factor24�W
 � adjustDatasourcesOption� bjavascript:MoveItemsAcrossListsForDS(grantedDatasourcesSelectList,prohibitedDatasourcesSelectList)� bjavascript:MoveItemsAcrossListsForDS(prohibitedDatasourcesSelectList,grantedDatasourcesSelectList)� prohibitedDatasourcesSelectList� 	_factor25�W
 � w
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<font class="sentance">
					� 	step_ds_1��
					To select more than one data source, hold down the Control key and click the name of the data source.
					This user cannot use data sources listed in the Disabled Data Sources box. <br />
					<br />
					<b>Note:</b> The ALL DATASOURCES option includes all data sources not otherwise specified as enabled or disabled
					as well as all future data sources created in the Data Sources section of the ColdFusion administrator.� s
					<br />
					<br />
					<br />
					</font>
				</td>
			</tr>
			<tr>
				<td colspan="2" bgcolor="#� �</b>
				</td>
			</tr>
			<tr>
				<td align="left">
					<table border="0" cellpadding="0" cellspacing="0" id="filestable">
					<tr><td height="5"></td></tr>
					<tr><td colspan="4"><p class="sentance">
						  step_files1 �
							&nbsp;&nbsp;Enter files that you would like to <b>grant</b> access for templates operations under this directory.<br><br>
						 s
					</p></td></tr>					
					<tr>
						<td nowrap>
							<font class="labelbold">&nbsp; <label for="logic"> logical_filepath_folder File / Folder Path:
 h</label> &nbsp;</font>
						</td>
						<td><input type="text" maxlength="550" name="newfile" value=" 
ESAPIUTILS encodeForHTMLAttributeFilePath k" size="25" style="width:30em;" class="label"  id="logic"></td>
						<td>&nbsp;</td>
						<td>
							 button_browse_user browse_button_user Browse Server %
							<input type="button" title=" " name="browsesubmit" value=" 	_factor26W
  �" class="buttn" onclick='wopen("logic");'>
						</td>
					</tr>
					<tr>
						<td height="5">							
						</td>					
					</tr>
					<tr>
						<td nowrap><font class="labelbold">&nbsp; <label for="dirpath">! permissions# Permissions% �:</label> &nbsp; &nbsp;</font></td>
						<td nowrap>
							<table border="0" cellpadding="0" cellspacing="0"><tr>
							<td><font class="label"><label for="fr">' `</label></font></td>
							<td><input type="checkbox" name="newfileread" value="true" id="fr" ) q ></td>
							<td><font class="label">&nbsp;&nbsp;</font></td>
							<td><font class="label"><label for="fw">+ b</label></font></td>
							<td><input type="checkbox" name="newfilewrite" value="true" id="fw"  - p></td>
							<td><font class="label">&nbsp;&nbsp;</font></td>
							<td><font class="label"><label for="fe">/ d</label></font></td>
							<td><input type="checkbox" name="newfileexecute" value="true" id="fe"  1 p></td>
							<td><font class="label">&nbsp;&nbsp;</font></td>
							<td><font class="label"><label for="fd">3 c</label></font></td>
							<td><input type="checkbox" name="newfiledelete" value="true" id="fd"  5/></td>
							</tr></table>
						</td>
						<td><font class="label">&nbsp;&nbsp;</font></td>
					</tr>
					<tr><td height="5"></td></tr>
					</table>	
				</td>
			</tr>
			<tr>				
				<td align="left">
					<input type="Hidden" name="filepermissionsstr" id="filepermissionsstr" value="7 ">
					
					9 addFile_folder; addFile= Add Files / Folders? editFile_folderA editFileC Edit Files / FoldersE 
URL.ACTIONG $
						<input type="button" title="I ." name="addNewFile" id="addNewFileBtn" value="K 8" class="buttn"  onclick='setfilepermissions();'>
					M ,								
						<input type="button" title="O 	_factor27QW
 R �
				</td>
			</tr>
			<br clear="left" />
				<table border="0" cellpadding="2" cellspacing="1" width="100%" id="filepermissionstable">
					<tr bgcolor="#T �" class="cellBlueTopAndBottom" id="headerrow">
						<td height="20" colspan="3"><font class="label">&nbsp; <b class="form-title">V file_activeX Secured Files and DirectoriesZ w</b></font></td>
					</tr>
					<tr class="color-header" id="colheaderrow">
						<th nowrap height="20" bgcolor="#\ 	BLUELIGHT^ &" class="cellBlueTopAndBottom">&nbsp; ` actionsb Actionsd 6 &nbsp; &nbsp;</td>
						<th width="100%" bgcolor="#f Fileh 	File Pathj 0 &nbsp; &nbsp;</td>
						<th nowrap bgcolor="#l  &nbsp;</td>
					</tr>
					n 						
						pD �
							<tr>
								<td nowrap height="20" class="cell3BlueSides">
									<table>
										<tr>
										<td>											
											<a href="javascript:loadeditformfile('s ','u X');">
											<img src="../images/iedit.gif" height="16" width="16" border="0" alt="w _"></a>
										</td>
										<td>
											<a href="javascript:deletefilepermissions('y O');">
											<img src="../images/idelete.gif" height="16" width="16" alt="{ �" border="0"></a>
										</td>
										</tr>
									</table>
								</td>
								<td nowrap class="cellRightAndBottomBlueSide">
									<font class="label">&nbsp; <a href="Javascript:loadeditformfile('} ');"> ~</a> &nbsp; &nbsp;</font>
								</td>
								<td nowrap class="cellRightAndBottomBlueSide"><font class="label">
								� 	VARIABLES� ListContains��
 �X
 � 
								&nbsp; � ) &nbsp;</font></td>
							</tr>
						� X	
						<tr>
							<td colspan="3" height="50" align="center"><font class="sentance">� map_nomappings� No mappings are active.�  </font></td>
						</tr>
					� 	_factor28�W
 � [
				</table>
			
			<br />
			<tr>
				<td>							
					<p class="sentance">
						� step_files_tip1�.
							A file permission consists of a pathname and a set of actions valid 
							for that pathname. A pathname is the pathname of the file or 
							directory granted the specified actions. A pathname that ends in "/*" 
							indicates all the files and directories contained in that directory. 
							A pathname that ends with "/-" indicates (recursively) all files and 
							subdirectories contained in that directory. A pathname consisting of the 
							special token &quot;&lt;&lt;ALL FILES&gt;&gt;&quot; matches any file.<br><br>
						� G
					</p>
				</td>
			</tr>
			<tr>
				<td colspan=2 bgcolor="#� &" class="cellBlueTopAndBottom">
					� 	submitBtn� iadjustRoles(); adjustformstrforedit(); if (validateFormControls()) {document.forms['useredit'].submit();}� Submit� cancelSubmit� adminaction� save� add� 	_factor29�W
 � 
				</td>
			</tr>
	� 	_factor30�W
 � 

	�
��
��
��
�� 	_factor33�W
 � 
� ../include/marginbottom.cfm� ../footer.cfm� 	
</body>� Lcoldfusion/runtime/UDFMethod; 0cfuseredit2ecfm1061805296$funcCFADMIN_GETALLDSNS�
� 	q�	 � registerUDF 3(Ljava/lang/String;Lcoldfusion/runtime/UDFMethod;)V��
 � 6cfuseredit2ecfm1061805296$funcCONSTRUCTFILEPERMISSIONS�
� 	�	 � metaData Ljava/lang/Object;��	 � 	Functions�	��	�� this Lcfuseredit2ecfm1061805296; __factorParent out Ljavax/servlet/jsp/JspWriter; input97 &Lcoldfusion/tagext/html/form/InputTag; input98 input99 input100 input101 input102 LocalVariableTable LineNumberTable Code 	select103 'Lcoldfusion/tagext/html/form/SelectTag; mode103 t6 Ljava/lang/String; t7 t8 t9 t10 Ljava/util/StringTokenizer; t11 Ljava/lang/Throwable; t12 t13 t14 t15 t16 	select104 mode104 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 java/lang/Throwable input105 input106 	select107 mode107 t17 t18 	select108 mode108 t30 t31 input109 	select110 mode110 Ljava/util/Iterator; input111 input112 input113 	select114 mode114 	select115 mode115 input116 input117 input118 	select119 mode119 	module120 $Lcoldfusion/tagext/lang/ImportedTag; mode120 	module121 mode121 	module122 mode122 	module123 mode123 t32 t33 t34 t35 	module124 mode124 	module125 mode125 	module126 mode126 	module127 mode127 	module128 mode128 	module129 mode129 	module130 mode130 t36 Ljava/util/List; t37 t38 t39 t40 	module131 mode131 t43 t44 t45 t46 t47 t48 	module132 mode132 input133 input134 input135 input136 input137 input138 runPage 	output143  Lcoldfusion/tagext/io/OutputTag; mode143 
include141 #Lcoldfusion/tagext/lang/IncludeTag; 
include142 getMetadata varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; registerUDFs 	include93 	include94 	output139 mode139 include0 abort1 !Lcoldfusion/tagext/lang/AbortTag; include2 module4 mode4 module5 mode5 module6 mode6 module7 mode7 module8 mode8 t41 t42 module9 mode9 t49 t50 t51 t52 t53 t54 module10 mode10 t57 t58 t59 t60 t61 t62 module11 mode11 t65 t66 t67 t68 t69 t70 module12 mode12 t73 t74 t75 t76 t77 t78 module13 mode13 t81 t82 t83 t84 t85 t86 module14 mode14 t89 t90 t91 t92 t93 t94 module15 mode15 t97 t98 t99 t100 t101 t102 module16 mode16 t105 t106 t107 t108 t109 t110 module17 mode17 t115 t116 t117 t118 module18 mode18 t121 t122 t123 t124 t125 t126 module19 mode19 t129 t130 t131 t132 t133 t134 module20 mode20 t137 t138 t139 t140 t141 t142 module21 mode21 t145 t146 t147 t148 t149 t150 module22 mode22 t153 t154 t155 t156 t157 t158 module23 mode23 t161 t162 t163 t164 t165 t166 module24 mode24 t169 t170 t171 t172 t173 t174 module25 mode25 t177 t178 t179 t180 t181 t182 module26 mode26 t185 t186 t187 t188 t189 t190 module27 mode27 t193 t194 t195 t196 t197 t198 module28 mode28 t201 t202 t203 t204 t205 t206 module29 mode29 t209 t210 t211 t212 t213 t214 module30 mode30 t217 t218 t219 t220 t221 t222 module31 mode31 t225 t226 t227 t228 t229 t230 module32 mode32 t233 t234 t235 t236 t237 t238 module33 mode33 t241 t242 t243 t244 t245 t246 module34 mode34 t249 t250 t251 t252 t253 t254 module35 mode35 t257 t258 t259 t260 t261 t262 module36 mode36 t265 t266 t267 t268 t269 t270 module37 mode37 t273 t274 t275 t276 t277 t278 module38 mode38 t281 t282 t283 t284 t285 t286 module39 mode39 t289 t290 t291 t292 t293 t294 module40 mode40 t297 t298 t299 t300 t301 t302 module41 mode41 t305 t306 t307 t308 t309 t310 module42 mode42 t313 t314 t315 t316 t317 t318 module43 mode43 t321 t322 t323 t324 t325 t326 module44 mode44 t329 t330 t331 t332 t333 t334 module45 mode45 t337 t338 t339 t340 t341 t342 module46 mode46 t345 t346 t347 t348 t349 t350 module47 mode47 t353 t354 t355 t356 t357 t358 module48 mode48 module49 mode49 module50 mode50 module51 mode51 module52 mode52 module53 mode53 module54 mode54 t55 t56 module55 mode55 t63 t64 module56 mode56 t71 t72 module57 mode57 t79 t80 module58 mode58 t87 t88 module59 mode59 t95 t96 module60 mode60 t103 t104 module61 mode61 t111 output62 mode62 t119 t120 output63 mode63 t127 output64 mode64 output65 mode65 t136 output66 mode66 t143 t144 output67 mode67 t151 output68 mode68 
location69 #Lcoldfusion/tagext/net/LocationTag; 
location85 t4 t5 	include92 form140 %Lcoldfusion/tagext/html/form/FormTag; mode140 ,Lcoldfusion/runtime/TransientVariableHolder; #Lcoldfusion/runtime/AbortException; Ljava/lang/Exception; __cfcatchThrowable2 !coldfusion/runtime/AbortException	� java/lang/Exception
 input95 input96 __cfcatchThrowable0 __cfcatchThrowable1 <clinit> 1                      "     &     *     .     2     6     :     >     B     F     J     N     R     V     Z     ^     b     f     j     n     r     v     z     ~     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �            
                        "    &    *    .    2    6    :    >    B    F    J    N    R    V    Z    ^    b    f    j    n    r    v    z    ~    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    	
   ;
   o
   �
   �
   kl   ��   ��   2�   �
   �
   K
   �
   q�   �   ��   ( >W �  �  
  �,�H,*���Y�S�a�e�H,�H,**�}���e�H,�H*��a+���:*׶���������Y��YSY**�Ͷ�SYSYS����6�:� �,!�H,**� A���e�H,#�H*�a�*,%��**� q��Y��� W**�Ѷ���� *,'��*�a�*,%��*,%��*� }�*,%��**� q��Y��� W**�Ѷ�������� *,'��*� }�*,%��*,%��*��b+���:*����)������Y��YSY**�a��SYSY+S����6�:� �,!�H,**�]���e�H,#�H**�a�����8*,'��*��c+���:*��-��/������Y��Y�SY1SYSY**�Ѷ�SY�SY3S����6�:� �,5�H,**�5���e�H,7�H*��d+���:*��-��/�������Y��Y�SY9SYSY**� }��SY�SY3S����6�:� �,5�H,**� ����e�H,;�H�Q*,'��*��e+���:*��-��/������Y��Y�SY1SYSY**�Ѷ�SY�SY3SY=SY=S����6�:� �,5�H,**�5���e�H,7�H*��f+���:	*��	-��	/��	���	��Y��Y�SY9SYSY**� }��SY�SY3SY=SY=S���	�6	�:� �,5�H,**� ����e�H,;�H*�   �   f 
  ���    ���   ���   ���   ���   ���   ���   ���   ���   ��� 	�  � � � � � � � &� &� &� &� %� S� S� [� [� c� c� {� {� {� {� �� �� ;� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��������'�'�'�'�7�7�7�7�7�7�7�7�'�'�Y�Y�Y�Y�U�U�'�������������������������o���������������%�%�-�-�5�5�N�N�Z�Z�Z�Z�k�k������������������������������������ � ���"�"�"�"�!�Z�Z�b�b�j�j���������������������B�������������������&�&�2�2�2�2�C�C�Q�Q���s�s�s�s�r�:��� oW �  � 
   ',B�H,**� ����e�H,D�H,**�����e�H,F�H*��**� ������� 2*,H��*� �*��**� ����e�����*,J��*,J��**�Ѷ��1�~��Y��� W**� q���1�~������*,H��*�Og+��Q:*��S�T�W��Y��Y�SYYSYZSY\S���_�6�`Y6�*,��M*,b��**�I���e:O:6*�C:	�QY�T:
� �
�WN	-�*,d��*��***� ��%��Y**� **�����RS����� >,f�H,**� **�����R�e�H,h�H,**�����e�H,j�H*,b��[�^`6
�b��e*,H���k��� � :� �:*,��M��l� :� #�� � #:�m� � :� �:�n�*,J����*,H��*�Oh+��Q:*��S�T�W��Y��Y�SYYSYZSY\SY=SY=S���_�6�`Y6�*,��M*,b��**�I���e:O:6*�C:�QY�T:� ��WN-�*,d��*��***� ��%��Y**� **�����RS����� >,f�H,**� **�����R�e�H,h�H,**�����e�H,j�H*,b��[�^`6�b��e*,H���k��� � :� �:*,��M��l� :� #�� � #:�m� � :� �:�n�*,J��*� 3?9<?3N9<N?KNNSN�����������������	 �  .   '��    '��   '��   '��   '��   '� �   '��   '��   '� �   '�  	  '�� 
  '��   '��   '��   '��   '��   ' �   '�   ' �   '�   '�   ' �   '    '�   '�   '	�   '
�   '�   '�   '� �  � s � � � � � � � � � � : : : : : : : : ] ] ] ] ] ] ] ] R R : � � � � � � � � � � � � � � � � � � � � � �0000{{��zz�	�	�	�	�	�	�	�	�	�	�	�	z�0 �������������99OO88qqllllk�����8��rj � �W �  7 
    �,s�H*��i+���:*��u��w��y����Y��Y�SY{SYSY}S����6�:� �,�H*��j+���:*��u��w�������Y��Y�SY{SYSY�S����6�:� �,��H**�Ѷ��1�~��Y��� W**� q���1�~������*,H��*�Ok+��Q:*����T�W��Y��Y�SYYSYZSY\S���_�6�`Y6�*,��M*,b��**�I���e:O:	6
*�C:�QY	�T:� ��WN-�*,d��*!��***� ��%��Y**� **�����RS������ >,f�H,**� **�����R�e�H,h�H,**�����e�H,j�H*,b��[�^
`6
�b��c*,H���k��� � :� �:*,��M��l� :� #�� � #:�m� � :� �:�n�*,J����*,H��*�Ol+��Q:*'����T�W��Y��Y�SYYSYZSY\SY=SY=S���_�6�`Y6�*,��M*,b��**�I���e:O:6*�C:�QY�T:� ��WN-�*,d��*)��***� ��%��Y**� **�����RS������ >,f�H,**� **�����R�e�H,h�H,**�����e�H,j�H*,b��[�^`6�b��c*,H���k��� � :� �:*,��M��l� :� #�� � #:�m� � :� �:�n�*,J��*� ~ruuzus�����s�����������>255:53Ua[^a3Up[^pamppup �  B    ���    ���   ���   ���   ��   ��   ��   � �   ���   ��� 	  �� � 
  ��    ���   ���   ���   ���   � �   ��   ��   ��   � �   ��   ��   � �   �    �	�   �
�   ��   ��   ��   ��   �� �  � t   ' ' / / G G S S  � � � � � � � � � � t � � � � � � � � � � � � � � � �99WWcc� � � � �!�!�!�!�!�!�!�!�!�!"""""""."."."."-"�!\ � !�'�'''''#'#'P(P(P(P(�)�)�)�)�)�)�)�)�)�)�*�*�*�*�*�*�*�*�*�*�*�*�)(P(�'�& � �W �  �    9,��H*��m+���:*0�����޶���*0��**� ����;�M�,���6�:� �,��H,*���Y�S�a�e�H,�H,**�q���e�H,��H,**� ���e�H,D�H,**� ݶ��e�H,F�H*�On+��Q:*D����T�W��Y��Y�SYYSYZSY\S���_�6�`Y6�*,��M*,H��**�!������ �� :� ��� �������� N*�-��W*,b��*F��***���%��Y**�%��S����� O,��H,**�%���e�H,h�H,*G��***�!����**�%���e�øe�H,ŶH*,H��[�^�� ��M*,J���k��� � :� �:	*,��M�	�l� :
� #
�� � #:�m� � :� �:�n�,ʶH*��o+���:*M���������*M��**�����;�M�,���6�:� �,̶H*��p+���:*O��u��ζ�y����Y��Y�SY{SYSY�S����6�:� �*� %"=ICFI=XCFXIUXX]X �   �   9��    9��   9��   9��   9�   9�   9 �   9�   9��   9�� 	  9�� 
  9��   9��   9��   9�   9� �  � a 0 0 '0 '0 <0 <0 <0 <0 <0 <0 <0 <0 0 i6 i6 i6 i6 h6 �7 �7 �7 �7 �7 �> �> �> �> �> �@ �@ �@ �@ �@ �D �D �D �D
D
D7E7E7E7EhEhE�F�F�F�FFF�G�G�G�G�G�G�G�G�G�G�G�G�G�G�G�G�G�GFE7E �D�M�M�M�M�M�M�M�M�M�M�M�MpM�O�O�O�O�O�OOOOO�O �W �  � 
   �,�H*��q+���:*P��u��ζ������Y��Y�SY{SYSY�S����6�:� �,��H*�Or+��Q:*T��׶T�W��Y��Y�SYYSYZSY\S���_�6�`Y6�*,��M*,H��**�!������ �� :� ��� �������� N*�-��W*,b��*V��***���%��Y**�%��S������ O,��H,**�%���e�H,h�H,*W��***�!����**�%���e�øe�H,ŶH*,H��[�^�� ��K*,J���k��� � :� �:	*,��M�	�l� :
� #
�� � #:�m� � :� �:�n�,ٶH,*���Y�S�a�e�H,�H,**�m���e�H,۶H,**�A���e�H,��H,**����e�H,D�H,**� ն��e�H,ݶH*n��**� ٶ����� 2*,J��*� �*o��**� ٶ��e�����*,߶�,�H*�Os+��Q:*r���T�W��Y��Y�SYYSYZSY\S���_�6�`Y6�0*,��M*,H��**�-���e:O:6*'�C:�QY�T:� ��WN-�*,b��*t��***� ٶ%��Y**� �**� )���RS����� c,��H,**� �**� )���R�e�H,h�H,*u��***� �**� )���Rt���~����e�H,ŶH*,H��[�^`6�b��@*,J���k���� � :� �:*,��M��l� :� #�� � #:�m� � :� �:�n�*�  ������ ������ �����>TWW\W3w�}��3w�}�������� �     ���    ���   ���   ���   � �   �!�   �" �   ��   ���   ��� 	  ��� 
  ���   ���   ���   �#�   �$ �   � �   ��   � �   �    ��   ��   ��   ��   ��   �	�   �
� �  F � P P 'P 'P /P /P GP GP SP SP P �T �T �T �T �T �T �U �U �U �UUU,V,V=V=V+V+V+V+V+V+VYWYWYWYWXWwWwWwWwW�W�W�W�WvWvWvWvWnW+V�U �U tTaaaaa=b=b=b=b<bSbSbSbSbRbiiiiiiiihikkkk~k�n�n�n�n�n�n�n�n�o�o�o�o�o�o�o�o�o�o�n�r�rrr#r#rPsPsPsPs�t�t�t�t�t�t�u�u�u�u�u�u�u�u�u�u�uuu�u�u�u�uuuuu�u�u�u�u�u�t>sPs�r �W �  � 
   ,ʶH*��t+���:*{���������*{��**� ٶ��;�M�,���6�:� �,̶H*��u+���:*}��u����y����Y��Y�SY{SYSY�S����6�:� �,�H*��v+���:*~��u���������Y��Y�SY{SYSY�S����6�:� �,��H*�Ow+��Q:*�����T�W��Y��Y�SYYSYZSY\S���_�6�`Y6�2*,��M*,H��**�-���e:	O:
6*'�C:�QY	
�T:� ��WN-�*,b��*���***� ٶ%��Y**� �**� )���RS������ c,��H,**� �**� )���R�e�H,h�H,*���***� �**� )���Rt���~����e�H,ŶH*,H��[�^`6�b��>*,J���k���� � :� �:*,��M��l� :� #�� � #:�m� � :� �:�n�*� ������������������������ �   �   ��    ��   ��   ��   %�   &�   '�   (�   ) �   �� 	  �� 
  � �   �    ��   ��   ��    �   �   �   � �  V U { { '{ '{ <{ <{ <{ <{ <{ <{ <{ <{ { �} �} �} �} �} �} �} �} �} �} h} �~ �~ �~ �~ �~ �~~~!~!~ �~Z�Z�x�x�������������������������������5�5�0�0�0�0�/�[�[�V�V�f�f�V�V�V�V�r�r�u�u�U�U�U�U�M�������B� W �   	 $  �,��H*�sx+��u:*���wy{���Y��Y�SY�S�����6��Y6� 6*,��M,��H������ � :� �:*,��M���� :� #�� � #:		��� � :
� 
�:���,��H,*���Y�S�a�e�H,�H,**�m���e�H,۶H,**����e�H,�H*�sy+��u:*���wy{���Y��Y�SYS�����6��Y6� 6*,��M,�H������ � :� �:*,��M���� :� #�� � #:��� � :� �:���,�H*�sz+��u:*���wy{���Y��Y�SY	S�����6��Y6� 6*,��M,�H������ � :� �:*,��M���� :� #�� � #:��� � :� �:���,�H,*���**���YS����Y**� Y��S���e�H,�H*�s{+��u:*���wy{���Y��Y�SYSY�SYS�����6��Y6� 6*,��M,�H������ � :� �:*,��M���� : � # �� � #:!!��� � :"� "�:#���#,�H,**� ���e�H,�H,**� ���e�H*�   Y u x x } x N � � � � � N � � � � � � � � � � �g�����\�����\�����������+GJJOJ jvpsv j�ps�v�����6RUUZU+u�{~�+u�{~������� �  j $  ���    ���   ���   ���   �*+   �, �   ���   ���   ���   ��� 	  ��� 
  ���   �-+   �. �   ���   ���   � �   ��   ��   ��   �/+   �0 �   ��   ��   ��   �	�   �
�   ��   �1+   �2 �   ��   ��   �3�    �4� !  �5� "  �6� #�   � . >� >� � �� �� �� �� �� �� �� �� �� �� � � � � ��L�L���������������������������������������������� QW �  p    �,"�H*�s|+��u:*���wy{���Y��Y�SY$S�����6��Y6� 6*,��M,&�H������ � :� �:*,��M���� :� #�� � #:		��� � :
� 
�:���,(�H,**�����e�H,*�H**� !����� 
,�H,,�H,**�����e�H,.�H**�Ŷ���� 
,�H,0�H,**� -���e�H,2�H**� u����� 
,�H,4�H,**� ����e�H,6�H**� ������ 
,�H,8�H,**�	���e�H,:�H*�s}+��u:*ն�wy{���Y��Y�SY<SY�SY>S�����6��Y6� 6*,��M,@�H������ � :� �:*,��M���� :� #�� � #:��� � :� �:���*,%��*�s~+��u:*ֶ�wy{���Y��Y�SYBSY�SYDS�����6��Y6� 6*,��M,F�H������ � :� �:*,��M���� :� #�� � #:��� � :� �:���*,%��**� �aH����Y��� !W*���YaS�a���~���� 9,J�H,**� 9���e�H,L�H,**� 9���e�H,N�H� 6,P�H,**�=���e�H,L�H,**�=���e�H,N�H*�  Y u x x } x N � � � � � N � � � � � � � � � � �#&&+&�FRLOR�FaLOaR^aafa�������# #�2 2#/2272 �     ���    ���   ���   ���   �7+   �8 �   ���   ���   ���   ��� 	  ��� 
  ���   �9+   �: �   ���   ���   � �   ��   ��   ��   �;+   �< �   ��   ��   ��   �	�   �
�   �� �  � b >� >� � �� �� �� �� �� �� �� �� �� �� �� �� �����0�0�0�0�/�E�E�E�b�b�b�b�a�w�w�w�����������������������������z�L�L�L�L�P�P�S�S�K�K�K�K�K�K�K�K�f�f�v�v�f�f�f�f�K�K�������������������������������������������K� �W �  �  1  �,U�H,*���Y�S�a�e�H,W�H*�s+��u:*��wy{���Y��Y�SYYS�����6��Y6� 6*,��M,[�H������ � :� �:*,��M���� :� #�� � #:		��� � :
� 
�:���,]�H,*���Y_S�a�e�H,a�H*�s �+��u:*��wy{���Y��Y�SYcS�����6��Y6� 6*,��M,e�H������ � :� �:*,��M���� :� #�� � #:��� � :� �:���,g�H,*���Y_S�a�e�H,a�H*�s �+��u:*��wy{���Y��Y�SYiS�����6��Y6� 6*,��M,k�H������ � :� �:*,��M���� :� #�� � #:��� � :� �:���,m�H,*���Y_S�a�e�H,a�H*�s �+��u:*��wy{���Y��Y�SY$S�����6��Y6� 6*,��M,&�H������ � :� �:*,��M���� : � # �� � #:!!��� � :"� "�:#���#,o�H**� ��Y��� &W*��**� ���z�.�1�t|����*,q��**� ���;:$6%6&$�@ 6'*#�C:(��$&�F N(-�-��*,߶�*� �*��***� %�r��Y\S���*,߶�*� y*��***� %�r��YaS���,t�H,**� ����e�H,v�H,**� y���e�H,x�H,**� I���e�H,z�H,**� ����e�H,v�H,**� y���e�H,|�H,**� ����e�H,~�H,**� ����e�H,v�H,**� y���e�H,��H,*���**� ����eVT�Z�H,��H*���Y�S��*��**� y���e�����~� -*��*��**�ɶ��e**�����eO���*��**� y���e�����~� -*��*��**�ɶ��e**�����eO���*��**� y���e�����~� -*��*��**�ɶ��e**� -���eO���*��**� y���e#����~� -*��*��**�ɶ��e**� ����eO���,��H,*
��*���Y�S�a�e�϶H,��H&%`6&&'��=*,%��� �,��H*�s �+��u:)*��)wy{�)��Y��Y�SY�S����)�6)��Y6*� 6*)*,��M,��H)������ � :+� +�:,**,��M�,)��� :-� #-�� � #:.).��� � :/� /�:0)���0,��H*� ( w � � � � � l � � � � � l � � � � � � � � � � �Zvyy~yO�����O�����������=Y\\a\2|����2|���������� <??D?_kehk_zehzkwzzz(DGGLGgsmpsg�mp�s���� �  � 1  ���    ���   ���   ���   �=+   �> �   ���   ���   ���   ��� 	  ��� 
  ���   �?+   �@ �   ���   ���   � �   ��   ��   ��   �A+   �B �   ��   ��   ��   �	�   �
�   ��   �C+   �D �   ��   ��   �3�    �4� !  �5� "  �6� #  �EF $  �G � %  �H � &  �I � '  �J  (  �K+ )  �L � *  �M� +  �N� ,  �O� -  �P� .  �Q� /  �R� 0�  � � � � � � � \� \� %� �� �� �� �� ��?�?������������"�"�����������������������������������������������������������������&�&�7�7�%�%�%�%���U�U�f�f�T�T�T�T�I�I�x�x�x�x�w������������������������������������������������������������������/�/�/�/�:�:�=�=�/�/�/�/�'�[ [ [ [ M hhhhsshh���������������h������������������������������((((33�CCCCNNCCffffqqqq||ffff[CM��
�
�
�
�
�
�
�
�
�������� �W �      �,��H*�s �+��u:*��wy{���Y��Y�SY�S�����6��Y6� 6*,��M,��H������ � :� �:*,��M���� :� #�� � #:		��� � :
� 
�:���,��H,*���Y�S�a�e�H,��H**���**�����w�~��K*,'��*�� �+���:*'��u�������**�����e�,����Y��Y�SY{SYSY�S����6�:� �*,'��*�� �+���:*(����������**�����e�,����Y��Y�SY{S����6�:� �*,'��*�� �+���:*)������������6�:� �*,%���d*,'��*�� �+���:*+��u�������**� ����e�,����Y��Y�SY{SYSY�S����6�:� �*,'��*�� �+���:*,����������**� ����e�,����Y��Y�SY{S����6�:� �*,'��*�� �+���:*-�������������Y��Y�SY{S����6�:� �*,%��*�  Z v y y ~ y O � � � � � O � � � � � � � � � � � �   �   ���    ���   ���   ���   �S+   �T �   ���   ���   ���   ��� 	  ��� 
  ���   �U�   �V�   �W�   �X�   �Y�   �Z� �  B P ? ?  �% �% �% �% �% �& �& �& �& �& �&''''/'/'='='='='a'a'm'm''�(�(�(�(�(�(�(�(�(�(�())%)%)-)-))o+o+w+w+�+�+�+�+�+�+�+�+V+�,�,�,�,,,,,*,*,�,e-e-m-m-u-u-�-�-L-N* �& [� �  @    (*�ض�L*��N*-+�Y� �*-+�G� �*-+��� �*�� �-���:*7���6��Y6� �*+ö�*� ���:*8��Ŷ0�6�:� :� ��*+ö�*� ���:*9��Ƕ0�6�:� :	� E	�*+ö�����u��� :
� #
�� � #:��� � :� �:���+ɶH� 
 N � � � � � � � � � � � N � � � � � � � � �   �   (��    (��   (��   (��   (\]   (^ �   (_`   (��   (a`   (�� 	  (�� 
  (��   (��   (�� �   "  {8 {8 a8 �9 �9 �9 17    b� �   "     �ܰ   �       ��      �  �    o*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )**++,� � -**/+,� � 1**3+,� � 5**7+,� � 9**;+,� � =**?+,� � A**C+,� � E**G+,� � I**K+,� � M**O+,� � Q**S+,� � U**W+,� � Y**[+,� � ]**_+,� � a**c+,� � e**g+,� � i**k+,� � m**o+,� � q**s+,� � u**w+,� � y**{+,� � }**+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� �**+,� �**+,� �	**+,� �**+,� �**+,� �**+,� �**+,� �**+,� �!**#+,� �%**'+,� �)**++,� �-**/+,� �1**3+,� �5**7+,� �9**;+,� �=**?+,� �A**C+,� �E**G+,� �I**K+,� �M**O+,� �Q**S+,� �U**W+,� �Y**[+,� �]**_+,� �a**c+,� �e**g+,� �i**k+,� �m**o+,� �q**s+,� �u**w+,� �y**{+,� �}**+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� ��**�+,� �ѱ   �       o��    ocd   oef  g  �   2     *_�϶�*W�ضӱ   �       ��   �W �  �    �*�]+��:*�����0�6�:� �,��H*�^+��:*�����0�6�:� �*�� �+���:*����6��Y6� �*,�� :��*,�@� :	� �	�*,�q� :
� �
�*,��� :� ��*,��� :� ��*,��� :� ��*,��� :� ��*,� � :� ��*,�S� :� l�*,��� :� X�*,��� :� D�,��H������� :� #�� � #:��� � :� �:���*�  � �� � �� � �� � �� � �� � ���%�+9�?M�Sa�g����� � �� � �� � �� � �� � �� � ���%�+9�?M�Sa�g����������� �   �   ���    ���   ���   ���   �h`   �i`   �j]   �k �   ���   ��� 	  ��� 
  ���   ���   ���   ���   ���   � �   ��   ��   ��   ��   ��   �� �     � �  � M� M� 5� c�    �   #     *� 
�   �       ��   VW �  C� 
g  &H*��**���Y�S������Y��� $W*��**���Y�S��������� �*��**���Y�S�� ������� {*���YS�*�+��:*��*��*�"$�(�,�0�6�:� �*�?+��A:*���6�:� �,C�H*�+��:*��J�0�6�:� �,L�H**� �NPR�V*���YXS�ZY\�^*���YNS�a�e�ik�i�n�*�s+��u:*��wy{���Y��Y�SY�SY�SY�S�����6��Y6� 6*,��M,��H������ � :	� 	�:
*,��M�
��� :� #�� � #:��� � :� �:���*�s+��u:*��wy{���Y��Y�SY�SY�SY�S�����6��Y6� 6*,��M,��H������ � :� �:*,��M���� :� #�� � #:��� � :� �:���*�s+��u:*��wy{���Y��Y�SY�SY�SY�S�����6��Y6� 6*,��M,��H������ � :� �:*,��M���� :� #�� � #:��� � :� �:���*�s+��u:* ��wy{���Y��Y�SY�SY�SY�S�����6��Y6 � 6* ,��M,��H������ � :!� !�:"* ,��M�"��� :#� ##�� � #:$$��� � :%� %�:&���&*�s+��u:'*!��'wy{�'��Y��Y�SY�SY�SY�S����'�6'��Y6(� 6*'(,��M,��H'������ � :)� )�:**(,��M�*'��� :+� #+�� � #:,',��� � :-� -�:.'���.*�s	+��u:/*"��/wy{�/��Y��Y�SY�SY�SY�S����/�6/��Y60� 6*/0,��M,öH/������ � :1� 1�:2*0,��M�2/��� :3� #3�� � #:4/4��� � :5� 5�:6/���6*�s
+��u:7*#��7wy{�7��Y��Y�SY�SY�SY�S����7�67��Y68� 6*78,��M,ǶH7������ � :9� 9�::*8,��M�:7��� :;� #;�� � #:<7<��� � :=� =�:>7���>*�s+��u:?*$��?wy{�?��Y��Y�SY�SY�SY�S����?�6?��Y6@� 6*?@,��M,˶H?������ � :A� A�:B*@,��M�B?��� :C� #C�� � #:D?D��� � :E� E�:F?���F*�s+��u:G*%��Gwy{�G��Y��Y�SY�SY�SY�S����G�6G��Y6H� 6*GH,��M,϶HG������ � :I� I�:J*H,��M�JG��� :K� #K�� � #:LGL��� � :M� M�:NG���N*�s+��u:O*&��Owy{�O��Y��Y�SY�SY�SY�S����O�6O��Y6P� 6*OP,��M,ӶHO������ � :Q� Q�:R*P,��M�RO��� :S� #S�� � #:TOT��� � :U� U�:VO���V*�s+��u:W*'��Wwy{�W��Y��Y�SY�SY�SY�S����W�6W��Y6X� 6*WX,��M,׶HW������ � :Y� Y�:Z*X,��M�ZW��� :[� #[�� � #:\W\��� � :]� ]�:^W���^*�s+��u:_*(��_wy{�_��Y��Y�SY�SY�SY�S����_�6_��Y6`� 6*_`,��M,۶H_������ � :a� a�:b*`,��M�b_��� :c� #c�� � #:d_d��� � :e� e�:f_���f*�s+��u:g*)��gwy{�g��Y��Y�SY�SY�SY�S����g�6g��Y6h� 6*gh,��M,߶Hg������ � :i� i�:j*h,��M�jg��� :k� #k�� � #:lgl��� � :m� m�:ng���n*�s+��u:o**��owy{�o��Y��Y�SY�SY�SY�S����o�6o��Y6p� 6*op,��M,�Ho������ � :q� q�:r*p,��M�ro��� :s� #s�� � #:tot��� � :u� u�:vo���v*�s+��u:w*+��wwy{�w��Y��Y�SY�SY�SY�S����w�6w��Y6x� 6*wx,��M,�Hw������ � :y� y�:z*x,��M�zw��� :{� #{�� � #:|w|��� � :}� }�:~w���~*�s+��u:*,��wy{���Y��Y�SY�SY�SY�S�����6��Y6�� 6*�,��M,�H������ � :�� ��:�*�,��M����� :�� #��� � #:����� � :�� ��:�����*�s+��u:�*-���wy{����Y��Y�SY�SY�SY�S������6���Y6�� 6*��,��M,�H������� � :�� ��:�*�,��M������ :�� #��� � #:������ � :�� ��:������*�s+��u:�*.���wy{����Y��Y�SY�SY�SY�S������6���Y6�� 6*��,��M,�H������� � :�� ��:�*�,��M������ :�� #��� � #:������ � :�� ��:������*�s+��u:�*/���wy{����Y��Y�SY�SY�SY�S������6���Y6�� 6*��,��M,��H������� � :�� ��:�*�,��M������ :�� #��� � #:������ � :�� ��:������*�s+��u:�*0���wy{����Y��Y�SY�SY�SY�S������6���Y6�� 6*��,��M,��H������� � :�� ��:�*�,��M������ :�� #��� � #:������ � :�� ��:������*�s+��u:�*1���wy{����Y��Y�SY�SY�SY�S������6���Y6�� 6*��,��M,��H������� � :�� ��:�*�,��M������ :�� #��� � #:������ � :�� ��:������*�s+��u:�*2���wy{����Y��Y�SYSY�SYS������6���Y6�� 6*��,��M,�H������� � :�� ��:�*�,��M������ :�� #��� � #:������ � :�� ��:������*�s+��u:�*3���wy{����Y��Y�SYSY�SYS������6���Y6�� 6*��,��M,�H������� � :�� ��:�*�,��M������ :�� #��� � #:������ � :�� ��:������*�s+��u:�*4���wy{����Y��Y�SY	SY�SY	S������6���Y6�� 6*��,��M,�H������� � :�� ��:�*�,��M������ :è #ð� � #:��Ķ�� � :Ũ ſ:������*�s+��u:�*5���wy{�ǻ�Y��Y�SYSY�SYS������6Ƕ�Y6ș 6*��,��M,�HǶ����� � :ɨ ɿ:�*�,��M��Ƕ�� :˨ #˰� � #:��̶�� � :ͨ Ϳ:�Ƕ���*�s+��u:�*6���wy{�ϻ�Y��Y�SYSY�SYS������6϶�Y6Й 6*��,��M,�H϶����� � :Ѩ ѿ:�*�,��M��϶�� :Ө #Ӱ� � #:��Զ�� � :ը տ:�϶���*�s+��u:�*7���wy{�׻�Y��Y�SYSY�SYS������6׶�Y6ؙ 6*��,��M,�H׶����� � :٨ ٿ:�*�,��M��׶�� :ۨ #۰� � #:��ܶ�� � :ݨ ݿ:�׶���*�s+��u:�*8���wy{�߻�Y��Y�SYSY�SYS������6߶�Y6�� 6*��,��M,�H߶����� � :� �:�*�,��M��߶�� :� #㰨 � #:����� � :� �:�߶���*�s +��u:�*9���wy{���Y��Y�SYSY�SYS������6��Y6� 6*��,��M,�H������ � :� �:�*�,��M����� :� #밨 � #:����� � :�� ��:�����*�s!+��u:�*:���wy{���Y��Y�SY!SY�SY!S������6��Y6� 6*��,��M,!�H������ � :� �:�*�,��M����� :� #� � #:������ � :�� ��:�����*�s"+��u:�*;���wy{����Y��Y�SY#SY�SY#S������6���Y6�� 6*��,��M,!�H������� � :�� ��:�*�,��M������ :�� #��� � #:������ � :�� ��:������*�s#+��u:�*<���wy{����Y��Y�SY%SY�SY'S������6���Y�6 � B*�� ,��M,'�H������� � !�:� ���:*� ,��Mĩ���� �:� -��� %� /�:����� � �:� ���:���ĩ*�s$+��u�:*=���wy{����Y��Y�SY)SY�SY+S������6���Y�6� F*��,��M,+�H������ � !�:	� �	��:
*�,��Mĩ
���� �:� /��� '� 3�:����� � �:� ���:���ĩ*�s%+��u�:*>���wy{����Y��Y�SY-SY�SY�S������6���Y�6� F*��,��M,��H������ � !�:� ���:*�,��Mĩ���� �:� /��� '� 3�:����� � �:� ���:���ĩ*�s&+��u�:*?���wy{����Y��Y�SY/SY�SY1S������6���Y�6� F*��,��M,1�H������ � !�:� ���:*�,��Mĩ���� �:� /��� '� 3�:����� � �:� ���:���ĩ*�s'+��u�:*@���wy{����Y��Y�SY3SY�SY3S������6���Y�6 � F*�� ,��M,5�H������ � !�:!� �!��:"*� ,��Mĩ"���� �:#� /�#�� '� 3�:$��$��� � �:%� �%��:&���ĩ&*�s(+��u�:'*A���'wy{��'��Y��Y�SY7SY�SY7S�����'�6�'��Y�6(� F*�'�(,��M,9�H�'����� � !�:)� �)��:**�(,��Mĩ*�'��� �:+� /�+�� '� 3�:,�'�,��� � �:-� �-��:.�'��ĩ.*�s)+��u�:/*B���/wy{��/��Y��Y�SY;SY�SY;S�����/�6�/��Y�60� F*�/�0,��M,=�H�/����� � !�:1� �1��:2*�0,��Mĩ2�/��� �:3� /�3�� '� 3�:4�/�4��� � �:5� �5��:6�/��ĩ6*�s*+��u�:7*C���7wy{��7��Y��Y�SY?SY�SY?S�����7�6�7��Y�68� F*�7�8,��M,A�H�7����� � !�:9� �9��::*�8,��Mĩ:�7��� �:;� /�;�� '� 3�:<�7�<��� � �:=� �=��:>�7��ĩ>*�s++��u�:?*D���?wy{��?��Y��Y�SYCSY�SYCS�����?�6�?��Y�6@� F*�?�@,��M,E�H�?����� � !�:A� �A��:B*�@,��MĩB�?��� �:C� /�C�� '� 3�:D�?�D��� � �:E� �E��:F�?��ĩF*�s,+��u�:G*E���Gwy{��G��Y��Y�SYGSY�SYGS�����G�6�G��Y�6H� F*�G�H,��M,I�H�G����� � !�:I� �I��:J*�H,��MĩJ�G��� �:K� /�K�� '� 3�:L�G�L��� � �:M� �M��:N�G��ĩN*�s-+��u�:O*F���Owy{��O��Y��Y�SYKSY�SYKS�����O�6�O��Y�6P� F*�O�P,��M,M�H�O����� � !�:Q� �Q��:R*�P,��MĩR�O��� �:S� /�S�� '� 3�:T�O�T��� � �:U� �U��:V�O��ĩV*�s.+��u�:W*G���Wwy{��W��Y��Y�SYOSY�SYOS�����W�6�W��Y�6X� F*�W�X,��M,Q�H�W����� � !�:Y� �Y��:Z*�X,��MĩZ�W��� �:[� /�[�� '� 3�:\�W�\��� � �:]� �]��:^�W��ĩ^*�s/+��u�:_*H���_wy{��_��Y��Y�SYSSY�SYSS�����_�6�_��Y�6`� F*�_�`,��M,U�H�_����� � !�:a� �a��:b*�`,��Mĩb�_��� �:c� /�c�� '� 3�:d�_�d��� � �:e� �e��:f�_��ĩf*�`��������((%((-(������������������������]y||�|R�����R�����������%ADDIDdpjmpdjmp|��	�,8258�,G25G8DGGLG�������� �� ���� }�����r�����r�����������Eaddid:�����:�����������),,1,LXRUXLgRUgXdgglg�������		 			 �		/			/	 	,	/	/	4	/	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�
e
�
�
�
�
�
Z
�
�
�
�
�
Z
�
�
�
�
�
�
�
�
�
�
�-ILLQL"lxrux"l�ru�x�������4@:=@�4O:=O@LOOTO����������������z�����z�����������MillqlB�����B�����������14494
T`Z]`
ToZ]o`looto������("%(�7"%7(477<7�����������������������m�����b�����b�����������5QTTYT*t�z}�*t�z}��������!�<HBEH�<WBEWHTWW\W�������
�
$������������������������UqttytJ�����J�����������9<<A<\hbeh\wbewhtww|w�	�$0*-0�$?*-?0<??D?�����������������u�����j�����j�����������=Y\\a\2|����2|����������%((/(�Tb\_b�Tu\_ubruu|u�#�JXRUX�JmRUmXjmmtm��DRLOR�DgLOgRdggng��>LFIL�>aFIaL^aaha�


�8F@CF�8[@C[FX[[b[��2@:=@�2U:=U@RUU\U���� �� , : 4 7 :� , O 4 7 O : L O O V O � � � � � � �!&!4!.!1!4 �!&!I!.!1!I!4!F!I!I!P!I!�!�!�!�!�!�!�" "."("+".!�" "C"("+"C"."@"C"C"J"C"�"�"�"�"�"�"�##(#"#%#("�##=#"#%#=#(#:#=#=#D#=#�#�#�#�#�#�#�$$"$$$"#�$$7$$$7$"$4$7$7$>$7$�$�$�$�$�$�$�%%%%%$�%%1%%%1%%.%1%1%8%1%�%�%�%�%�%�%�&&&&&%�&&+&&&+&&(&+&+&2&+ �  g  &H��    &H��   &H��   &H��   &Hl`   &Hmn   &Ho`   &Hp+   &Hq �   &H�� 	  &H�� 
  &H��   &H��   &H��   &H��   &Hr+   &Hs �   &H�   &H�   &H�   &H�   &H�   &H�   &Ht+   &Hu �   &H	�   &H
�   &H�   &H�   &H�   &H�   &Hv+   &Hw �    &H4� !  &H5� "  &H6� #  &HE� $  &HG� %  &HH� &  &Hx+ '  &Hy � (  &Hz� )  &H{� *  &HM� +  &HN� ,  &HO� -  &HP� .  &H|+ /  &H} � 0  &H~� 1  &H� 2  &H�� 3  &H�� 4  &H�� 5  &H�� 6  &H�+ 7  &H� � 8  &H�� 9  &H�� :  &H�� ;  &H�� <  &H�� =  &H�� >  &H�+ ?  &H� � @  &H�� A  &H�� B  &H�� C  &H�� D  &H�� E  &H�� F  &H�+ G  &H� � H  &H�� I  &H�� J  &H�� K  &H�� L  &H�� M  &H�� N  &H�+ O  &H� � P  &H�� Q  &H�� R  &H�� S  &H�� T  &H�� U  &H�� V  &H�+ W  &H� � X  &H�� Y  &H�� Z  &H�� [  &H�� \  &H�� ]  &H�� ^  &H�+ _  &H� � `  &H�� a  &H�� b  &H�� c  &H�� d  &H�� e  &H�� f  &H�+ g  &H� � h  &H�� i  &H�� j  &H�� k  &H�� l  &H�� m  &H�� n  &H�+ o  &H� � p  &H�� q  &H2� r  &H�� s  &H�� t  &H�� u  &H�� v  &H�+ w  &H� � x  &H�� y  &H�� z  &H�� {  &H�� |  &H�� }  &H�� ~  &H�+   &H� � �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H�+ �  &H� � �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H�+ �  &H� � �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H�+ �  &H� � �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H�+ �  &H� � �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H�+ �  &H� � �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H�� �  &H�+ �  &H� � �  &H�� �  &H�� �  &H�� �  &H�� �  &H	 � �  &H	� �  &H	+ �  &H	 � �  &H	� �  &H	� �  &H	� �  &H	� �  &H	� �  &H		� �  &H	
+ �  &H	 � �  &H	� �  &H	� �  &H	� �  &H	� �  &H	� �  &H	� �  &H	+ �  &H	 � �  &H	� �  &H	� �  &H	� �  &H	� �  &H	� �  &H	� �  &H	+ �  &H	 � �  &H	� �  &H	� �  &H	� �  &H	� �  &H	 � �  &H	!� �  &H	"+ �  &H	# � �  &H	$� �  &H	%� �  &H	&� �  &H	'� �  &H	(� �  &H	)� �  &H	*+ �  &H	+ � �  &H	,� �  &H	-� �  &H	.� �  &H	/� �  &H	0� �  &H	1� �  &H	2+ �  &H	3 � �  &H	4� �  &H	5� �  &H	6� �  &H	7� �  &H	8� �  &H	9� �  &H	:+ �  &H	; � �  &H	<� �  &H	=� �  &H	>� �  &H	?� �  &H	@� �  &H	A� �  &H	B+ �  &H	C � �  &H	D� �  &H	E� �  &H	F� �  &H	G� �  &H	H� �  &H	I� �  &H	J+ �  &H	K �   &H	L�  &H	M�  &H	N�  &H	O�  &H	P�  &H	Q�  &H	R+  &H	S �  &H	T�	  &H	U�
  &H	V�  &H	W�  &H	X�  &H	Y�  &H	Z+  &H	[ �  &H	\�  &H	]�  &H	^�  &H	_�  &H	`�  &H	a�  &H	b+  &H	c �  &H	d�  &H	e�  &H	f�  &H	g�  &H	h�  &H	i�  &H	j+  &H	k �   &H	l�!  &H	m�"  &H	n�#  &H	o�$  &H	p�%  &H	q�&  &H	r+'  &H	s �(  &H	t�)  &H	u�*  &H	v�+  &H	w�,  &H	x�-  &H	y�.  &H	z+/  &H	{ �0  &H	|�1  &H	}�2  &H	~�3  &H	�4  &H	��5  &H	��6  &H	�+7  &H	� �8  &H	��9  &H	��:  &H	��;  &H	��<  &H	��=  &H	��>  &H	�+?  &H	� �@  &H	��A  &H	��B  &H	��C  &H	��D  &H	��E  &H	��F  &H	�+G  &H	� �H  &H	��I  &H	��J  &H	��K  &H	��L  &H	��M  &H	��N  &H	�+O  &H	� �P  &H	��Q  &H	��R  &H	��S  &H	��T  &H	��U  &H	��V  &H	�+W  &H	� �X  &H	��Y  &H	��Z  &H	��[  &H	��\  &H	��]  &H	��^  &H	�+_  &H	� �`  &H	��a  &H	��b  &H	��c  &H	��d  &H	��e  &H	��f�  J         -  -  -  -      S  S  S  S  S  S  �  �  �  �  v  v  �  �  �  �  �  �  �  �  �  �  S    �    � 3 3 J J P P P P f f F F F F 9 9 � � � � r n n z z 9 6 6 B B   �  �  
  
  �  � !� !� !� !� !� "� "� "� "X "V #V #b #b #  # $ $* $* $� $� %� %� %� %� %� &� &� &� &x &	v '	v '	� '	� '	@ '
> (
> (
J (
J (
 ( ) ) ) )
� )� *� *� *� *� *� +� +� +� +` +^ ,^ ,j ,j ,( ,& -& -2 -2 -� -� .� .� .� .� .� /� /� /� /� /~ 0~ 0� 0� 0H 0F 1F 1R 1R 1 1 2 2 2 2� 2� 3� 3� 3� 3� 3� 4� 4� 4� 4h 4f 5f 5r 5r 50 5. 6. 6: 6: 6� 6� 7� 7 7 7� 7� 8� 8� 8� 8� 8� 9� 9� 9� 9P 9N :N :Z :Z : : ; ;" ;" ;� ;� <� <� <� <� <� =� =� =� =� =� >� >� >� >� >� ?� ?� ?� ?� ?� @� @� @� @| @� A� A� A� Av A� B� B� B� Bp B � C � C � C � C j C!� D!� D!� D!� D!d D"� E"� E"� E"� E"^ E#� F#� F#� F#� F#X F$� G$� G$� G$� G$R G%� H%� H%� H%� H%L H EW �  "  �  0*�s0+��u:*I��wy{���Y��Y�SY[SY�SY[S�����6��Y6� 6*,��M,]�H������ � :� �:*,��M���� :� #�� � #:		��� � :
� 
�:���*�s1+��u:*J��wy{���Y��Y�SY_SY�SY_S�����6��Y6� 6*,��M,a�H������ � :� �:*,��M���� :� #�� � #:��� � :� �:���*�s2+��u:*K��wy{���Y��Y�SYcSY�SYcS�����6��Y6� 6*,��M,e�H������ � :� �:*,��M���� :� #�� � #:��� � :� �:���*�s3+��u:*L��wy{���Y��Y�SYgSY�SYgS�����6��Y6� 6*,��M,i�H������ � :� �:*,��M���� : � # �� � #:!!��� � :"� "�:#���#*�s4+��u:$*M��$wy{�$��Y��Y�SYkSY�SYkS����$�6$��Y6%� 6*$%,��M,m�H$������ � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)��� � :*� *�:+$���+*�s5+��u:,*N��,wy{�,��Y��Y�SYoSY�SYoS����,�6,��Y6-� 6*,-,��M,q�H,������ � :.� .�:/*-,��M�/,��� :0� #0�� � #:1,1��� � :2� 2�:3,���3*�s6+��u:4*O��4wy{�4��Y��Y�SYsSY�SYsS����4�64��Y65� 6*45,��M,u�H4������ � :6� 6�:7*5,��M�74��� :8� #8�� � #:949��� � ::� :�:;4���;*�s7+��u:<*P��<wy{�<��Y��Y�SYwSY�SYyS����<�6<��Y6=� 6*<=,��M,{�H<������ � :>� >�:?*=,��M�?<��� :@� #@�� � #:A<A��� � :B� B�:C<���C*�s8+��u:D*Q��Dwy{�D��Y��Y�SY}SY�SY}S����D�6D��Y6E� 6*DE,��M,�HD������ � :F� F�:G*E,��M�GD��� :H� #H�� � #:IDI��� � :J� J�:KD���K*�s9+��u:L*R��Lwy{�L��Y��Y�SY�SY�SY�S����L�6L��Y6M� 6*LM,��M,��HL������ � :N� N�:O*M,��M�OL��� :P� #P�� � #:QLQ��� � :R� R�:SL���S*�s:+��u:T*S��Twy{�T��Y��Y�SY�SY�SY�S����T�6T��Y6U� 6*TU,��M,��HT������ � :V� V�:W*U,��M�WT��� :X� #X�� � #:YTY��� � :Z� Z�:[T���[*�s;+��u:\*T��\wy{�\��Y��Y�SY�SY�SY�S����\�6\��Y6]� 6*\],��M,��H\������ � :^� ^�:_*],��M�_\��� :`� #`�� � #:a\a��� � :b� b�:c\���c*�s<+��u:d*U��dwy{�d��Y��Y�SY�SY�SY�S����d�6d��Y6e� 6*de,��M,��Hd������ � :f� f�:g*e,��M�gd��� :h� #h�� � #:idi��� � :j� j�:kd���k*�s=+��u:l*V��lwy{�l��Y��Y�SY#SY�SY�S����l�6l��Y6m� 6*lm,��M,!�Hl������ � :n� n�:o*m,��M�ol��� :p� #p�� � #:qlq��� � :r� r�:sl���s,��H* ���**���Y�S���������� �*��>+���:t* ���t�6t��Y6u� (,��H,**� ���e�H,��Ht�����t��� :v� #v�� � #:wtw��� � :x� x�:yt���y*,���,��H* ���**���Y�S��������� �*��?+���:z* ���z�6z��Y6{� (,��H,**�����e�H,��Hz�����z��� :|� #|�� � #:}z}��� � :~� ~�:z���*,���,��H*��@+���:�* Ѷ���6���Y6�� (,��H,**� ����e�H,��H���������� :�� #��� � #:������ � :�� ��:������,��H*��A+���:�* ׶���6���Y6�� (,��H,**� e���e�H,��H���������� :�� #��� � #:������ � :�� ��:������,��H*��B+���:�* ݶ���6���Y6�� (,��H,**� ����e�H,��H���������� :�� #��� � #:������ � :�� ��:������,��H*��C+���:�* ����6���Y6�� (,��H,**� Q���e�H,��H���������� :�� #��� � #:������ � :�� ��:������,¶H*��D+���:�* ����6���Y6�� 0,ĶH,*���Y�S�a�e�H,ĶH���������� :�� #��� � #:������ � :�� ��:������,ȶH,ʶH**���ζҙ ?*,Զ�*��E+���:�*����������6��:� �**� ���*��*��*����**� ����**�E���**�u���**� ����**� ���**����**����**� q��**� �*���*���**� *���*���**��*���*���**� �*���*���**����**�e���**� �������� *� q�� ***� ������� *���*� q�*�**�9���**� Ͷ�o*+,�j� ��n**� Ͷ��r�      �              ;   V   e*+,��� �*+,��� �� �*+,�� �*+,�� �� i*+,�7� �� Z*@��**���Y�S��9��Y*���YCS�aS��W*�E��*�u��*� ���� *H��**� Ͷ��+�.Y��� W**� Ͷ����~�Y��� &W*H��**�����z�.�1�~����� 7*��U+���:�*J����������6��:� �*� � ] y | | � | R � � � � � R � � � � � � � � � � �%ADDIDdpjmpdjmp|��	�,8258�,G25G8DGGLG�������� �� ���� }�����r�����r�����������Eaddid:�����:�����������),,1,LXRUXLgRUgXdgglg�������  �// ,//4/������������������������e�����Z�����Z�����������-ILLQL"lxrux"l�ru�x������					�	4	@	:	=	@�	4	O	:	=	O	@	L	O	O	T	O	�	�	�	�	�	�	�	�



	�	�










�
�
�
�
�
�
z
�
�
�
�
�
z
�
�
�
�
�
�
�
�
�
�
�=y���=y����������4@:=@�4O:=O@LOOTO������������������R^X[^RmX[m^jmmrm������������������,htnqt,h�nq�t��������� �  B �  0��    0��   0��   0��   0	�+   0	� �   0��   0��   0��   0�� 	  0�� 
  0��   0	�+   0	� �   0��   0��   0 �   0�   0�   0�   0	�+   0	� �   0�   0�   0�   0	�   0
�   0�   0	�+   0	� �   0�   0�   03�    04� !  05� "  06� #  0	�+ $  0	� � %  0H� &  0I� '  0J� (  0z� )  0{� *  0M� +  0	�+ ,  0	� � -  0P� .  0Q� /  0R� 0  0~� 1  0� 2  0�� 3  0	�+ 4  0	� � 5  0�� 6  0	�� 7  0	�� 8  0�� 9  0�� :  0�� ;  0	�+ <  0	� � =  0�� >  0	�� ?  0	�� @  0�� A  0�� B  0�� C  0	�+ D  0	� � E  0�� F  0	�� G  0	�� H  0�� I  0�� J  0�� K  0	�+ L  0	� � M  0�� N  0	�� O  0	�� P  0�� Q  0�� R  0�� S  0	�+ T  0	� � U  0�� V  0	�� W  0	�� X  0�� Y  0�� Z  0�� [  0	�+ \  0	� � ]  0�� ^  0	�� _  0	�� `  0�� a  0�� b  0�� c  0	�+ d  0	� � e  0�� f  0	�� g  0	�� h  0�� i  0�� j  0�� k  0	�+ l  0	� � m  0�� n  0	�� o  0�� p  0�� q  02� r  0�� s  0	�] t  0	� � u  0�� v  0	�� w  0	�� x  0�� y  0	�] z  0	� � {  0�� |  0�� }  0�� ~  0	��   0	�] �  0	� � �  0�� �  0�� �  0�� �  0�� �  0	�] �  0	� � �  0	�� �  0�� �  0�� �  0�� �  0	�] �  0	� � �  0�� �  0	�� �  0	�� �  0�� �  0	�] �  0	� � �  0�� �  0�� �  0�� �  0	�� �  0	�] �  0	� � �  0�� �  0�� �  0�� �  0�� �  0	�	� �  0	�	� ��  �, 6 I 6 I B I B I   I � J � J
 J
 J � J� K� K� K� K� K� L� L� L� LX LV MV Mb Mb M  M N N* N* N� N� O� O� O� O� O� P� P� P� Px Pv Qv Q� Q� Q@ Q> R> RJ RJ R R S S S S� S� T� T� T� T� T	� U	� U	� U	� U	` U
^ V
^ V
j V
j V
( V
� �
� �
� �
� �
� �
� �P �P �P �P �O �! �
� �� �� � � � � �
 �� �� �� �� �� �� �� �o �) �) �) �) �( �� �� �� �� �� �� �� �? �? �? �? �> � �� �� �� �� �� �� �6�6�6�6�:�:�=�=�5�5�l�l�N�5�����������������������������������������������������������������0�0�/�/�/�/�D�D�C�C�C�C�P�P�[ [ aaiixxxxtt�����������������a�	�	�	�	�	�	�	�	�������=�=�=�=�?�>��22b@b@H@H@H@{A{A{A{AwA�B�B�B�B�B�C�C�C�C�CH?A>�=�H�H�H�H�H�H�H�H�H�H�H�H�H�H�H�H�H�H�H�H�H�H�H�H�H�H�H�H�H�HJJ�J�H� W �   �     T*ݶ�**� ������ "*� *߶�**� ���e�����**� ������� *+,�� �*�   �   *    T��     T��    T��    T�� �   f  � � � � � � � � "� "� "� "� "� "� "� "� � � 6� 6� 6� 6� 6� 6� 6� W �  ,     T*�E��*�u��*� ���*���*���*� q�*� �*
��*����*�   �   *    T��     T��    T��    T�� �   � %           
      " " " "  , , , , ( 6	 6	 6	 6	 2	 H
 H
 G
 G
 G
 G
 <
 �W �  �    �*� �*\��**���Y�S��I����*� *]��L�*^��**� Ѷ��;�M:O:6*��C:�QY�T:� ��WN-�*��*_��**���Y�S��Y��Y**� ���SY*���YNS�aS���**� ��Y**����S**� �����[�^`6�b��}*�I*b��*b��***� ���ܶfhj�n�*�!*d��**���Y�S��p����*��*f��**� a�r*���*� �*g��L�*h��**�����;�M:	O:
6*[�C:�QY	
�T:� :�WN-�**� ���Y**� ]��S**� ]����[�^`6�b���*�-*k��*k��***� Ŷ��ܶfhj�n�*�-*l��**�-���et�x�**� ���YtSt��*r��*r��**� ٶ��;�Mt�{��~�*�*t��**� ٶ��;�M�*� i*u��**�-���eO�7���*� �N�� �*x��**����e**� i**� ����R�e�{��~�� R*z��**� ٶ��;**� i**� ����R�gW*{��**����e**� i**� ����R�e��W*� �**� �����c�}�**� ���*v��**� i���z�.�w�t|���H� X*���**�-���et�{��~�� 7*�-*���**�-���et�x�**� ���YtSt��**��W���V**����V**�����V**��s��V**�����V**��'*���**�Y�*��Y**� ��S��V,��H*�\+��:*�����0�6�:� �*�� �+���:*�����*���Y�S�a�e�,������������6��Y6� w*,��M*,��� :� P� ��*,���*� =*3��**���Y�S������������� � :� �:*,��M���� :� #�� � #:��� � :� �:���*� b#_bbgb��#�������#����������� �   �   ���    ���   ���   ���   �	��   �	��   �� �   ��    ���   ��� 	  ��� 
  �� �   ��    ���   �	�`   �	�	�   �	� �   ��   ��   ��   ��   ��   ��   �� �  �0  O \ \ \ \  \  \ 4] 4] 4] 4] )] )] A^ A^ A^ A^ A^ A^ A^ A^ �_ �_ �_ �_ �_ �_ �_ �_ ~_ ~_ �` �` �` �` �` �` �` �` �^ A^bbbb
b
b
b
bbbbb
b
b
b
b �b �b0d0d0d0d%d%dYfYfYfYfYfYfNfNfzgzgzgzgogog�h�h�h�h�h�h�h�h�i�i�i�i�i�i�i�i�h�h
k
k
k
k	k	k	k	kkkkk	k	k	k	k�k�k/l/l/l/l:l:l/l/l/l/l$l$lNmNmRmRmRmRmCmCmfrfrfrfrfrfrfrfrtrtrfrfr�t�t�t�t�t�t�t�t�t�u�u�u�u�u�u�u�u�u�u�u�v�v�v�v�v�x�x�x�x�x�x�x�x�x�x�x�x�x�x�x�xzzzzzzzzzzz*{*{*{*{:{:{5{5{5{5{*{*{*{�xPvPvPvPv[v[vPvPvPvPvLvcvcvrvrvrvrvcvcv�v��������������������������������������������������������������frfo���� � ���!�!�1�1�I�I�[�[�I�I�I�I�����q���������������������63636363+3+3�� W �       `**� ������� Q*+,�� �*� *��*����*� �*��*����*��*��*����*�   �   *    `��     `��    `��    `�� �   r              ( ( ' ' ' '  > > = = = = 2 T T S S S S H   �W �  � 	    �*Ƕ�*���YSS�a�e*���YKS�a�e���.�1�� <*ɶ�**� ������� "*� �*˶�**� ����e������ K*� ��**����Y*Ҷ�**�����z�c�}S**�����*�**�����*�   �   *    ���     ���    ���    ��� �   � 8 � � � � � � � � � � 3� 3� C� C� C� C� C� C� C� C� ^� ^� ^� ^� ^� ^� ^� ^� S� C� y� y� y� y� u� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � �� �� �� �� �� � ,W �  T     �*� �**� E��Y!S���*��*/��***� ��%��Y'S���*��*0��***� ��%��Y)S���*� q*1��***� ��%��Y+S���*�   �   *    ���     ���    ���    ��� �   �   . . . .  . %/ %/ 6/ 6/ $/ $/ $/ $/ / L0 L0 ]0 ]0 K0 K0 K0 K0 @0 s1 s1 �1 �1 r1 r1 r1 r1 g1 �W �  B     n*ն�**�������� "*��*׶�**�����e�����*ٶ�**� ٶ����� "*� �*۶�**� ٶ��e�����*�   �   *    n��     n��    n��    n�� �   � $ � � � � � � � � "� "� "� "� "� "� "� "� � � =� =� =� =� =� =� =� =� X� X� X� X� X� X� X� X� M� =� W �  N 	    �*� E*��**���Y�S�����Y*��**�E���e��S���*�E**� E��Y/S���*��**� E��YKS���+�.�1�� *�u*���Y�S�a�*�   �   *    ���     ���    ���    ��� �   r  , , , , , ,       E E E E A ` ` ` ` x x � � � � � ` �W �  7 	    s*���*���YCS�a�+�.��1�� K*� ��**����Y*���**�����z�c�}S**� e����*�**�����*�   �   *    s��     s��    s��    s�� �   �   � � � � � � -� -� -� -� )� E� E� E� E� E� E� Q� Q� E� E� W� W� W� W� 3� f� f� f� f� b� � W �  9     m*��***� E������� *� �**� E��Y�S���*���*���*� q�*� �**� E��YS���*�   �   *    m��     m��    m��    m�� �   � "                   8" 8" 8" 8" 4" B# B# B# B# ># L$ L$ L$ L$ H$ V& V& V& V& R& �W �  6 	    r*���*���YSS�a�+�.��1�� K*� ��**����Y*���**�����z�c�}S**� �����*�**�����*�   �   *    r��     r��    r��    r�� �   �   � � � � � � ,� ,� ,� ,� (� D� D� D� D� D� D� P� P� D� D� V� V� V� V� 2� e� e� e� e� a� � /W �  C     �*� **� E��YS���*���YS*)��**�Y�*��Y**� ��S��*��**� E��YS���**� E!#�ҙ *+,�.� �*�   �   *    ���     ���    ���    ��� �   z  ( ( ( (  ( .) .) @) @) .) .) .) .) ) S+ S+ S+ S+ O+ i, i, i, i, m, m, p, p, h, h, h, 5W �  \ 	    ��Y*�ط�:*+,�� :� ��*+,�� :� ��*+,�1� :� ��*�**������ �� �:�:		��:

�4���     Y           �
��*� ��**����Y*:��**�����z�c�}S**������� 	�� � :� �:���*�    [
    - [
  3 @ [
  F X [
    `
   - `
 3 @ `
 F X `
   �   - � 3 @ � F X � [ � � � � � �   �    ���     ���    ���    ���    �	�	�    �	��    ���    ���    ��	�    ��	� 	   �	�� 
   ���    ��� �   j  J4 J4 J4 J4 F4 �9 �9 �9 �9 �9 �: �: �: �: �: �: �: �: �: �: �: �: �: �: �:   hW �  a  	  7*� 5��**��
�ҸY��� W**� �
�Ҹ��� ?*� 5**��
�Қ *���Y
S�a� *���Y
S�a�*��**�y�*��Y**� 5��SY*���YS�aS�W*� �*��*!�%�**��'�ҸY��� /W*��*���YS�a�+�.�1�t|����'*�i*��*���YS�a�e3�7���**�i���;:66�@ 6*O�C:� ��F N-�-� �*��*��**�Q���eH�7���*�U*��L�*�*��**��N�R�eTV�Z�**�U��Y\S**����_**�U��YaS**��c�R�_*!��**� ���;**�U���gW`6��3*�   �   \ 	  7��    7��   7��   7��   7	�F   7	� �   7� �   7� �   7�  �  � �               
 
 
 
 $ $ $ $ ( ( + + # # # # 
 
 ? ? ? ? C C F F > > O O b b > > > > : 
 } } � � � � } } }   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �00<<<<����������zz����������������������������    � � � � � � !!!!!!!!!!2< �5% W �  1    �,��H,*���**����*��Y*���YS�aS��e�H,��H,**� ɶ��e�H,¶H,*���Y�S�a�e�H,ƶH,**����e�H,ȶH,**� 1���e�H,ʶH**���**�����w�~�� M,̶H,*���**�E���e�϶H,ѶH,*���**�E���e�ԶH,ֶH� @,ضH,*���**�E���e�ԶH,ڶH,**�����e�H,ܶH,޶H,**�M���e�H,ʶH*��_+���:*����������**�u���e�,��P����Y��Y�SY�SY�SY�SY�SY�SYSYS����6�:� �,�H,**�����e�H,ʶH*��`+���:*����������**�u���e�,��P����Y��Y�SY�SY�SY�SYSYS����6�:� �,
�H,**� m���e�H,�H,*ʶ�**� ����e�ԶH*�   �   >   ���    ���   ���   ���   �
�   �
� �  �  � � !� !� � � � � � C� C� C� C� B� Y� Y� Y� Y� X� w� w� w� w� v� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �����������0�0�0�0�/�� ��M�M�M�M�L�z�z�����������������������������b������1�1�9�9�G�G�G�G�s�s������������������������������������ �W �  � 	 
  *�1�**�E��*A��**���Y�S��t����w�~�� <*� ��**����Y*E��**�����z�c�}S**� �������Y*�ط�:*�)*I��**���Y�S�����Y*I��**�E���e��S���� U� [:�:��:�����   (           ���*�1�� �� � :� �:	���	**�1������ <*� ��**����Y*T��**�����z�c�}S**� �����*W��*���YCS�a�+�.��1�� <*� ��**����Y*[��**�����z�c�}S**� e����*`��**� U���e**� M���e���.�1�� �*b��**� ������� "*� �*d��**� ����e�����*g��**�������� "*��*i��**�����e�����*k��**� ٶ����� "*� �*m��**� ٶ��e�����*o��**� ������ "*� *q��**� ���e������ <*� ��**����Y*x��**�����z�c�}S**�����*�  � � �
  � � �
 � � � �   f 
  ��    ��   ��   ��   	�	�   	�	�   �	�   
�   ��   �� 	�  B � @ @ @ @  @ 
A 
A A A 
A 
A DD DD DD DD @D \E \E \E \E \E \E hE hE \E \E nE nE nE nE JE 
A �I �I �I �I �I �I �I �I �I �I �IMMMM �M yG%P%P%P%P%P%P9S9S9S9S5SQTQTQTQTQTQT]T]TQTQTcTcTcTcT?T%PuWuWuWuW�W�W�Z�Z�Z�Z�Z�[�[�[�[�[�[�[�[�[�[�[�[�[�[�[uW�`�`�`�`�`�`�`�`�`�`�`�`bbbbbbbbdddddddddb9g9g9g9g9g9g9g9gTiTiTiTiTiTiTiTiIi9gokokokokokokokok�m�m�m�m�m�m�m�mmok�o�o�o�o�o�o�o�o�q�q�q�q�q�q�q�q�q�o�w�w�w�w�w�x�x�x�x�x�x�x�x�x�xxxxx�x�` �W �  �    ?**� �������.*�u**� U���*��*���Y�S�a�e**�u���e���.�1�� ]*� E*���**���Y�S�����Y*���**�E���e��S���*�u**� E��YKS���*���**���Y�S�����Y��Y�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�S��Y**�E��SY**�u��SY**� ���SY**�Ͷ�SY**�Ѷ�SY**� q��SY**� ٶ�SY**� ��SY**����SY	**� ���SY
S�Ҷ�W*�E��*�u��*� ���*���*���*� q�*� �*���*����*� *���*����*��*���*����*� �*���*�����*���**��ظ�޶� **� �*���*���Y�S�a�e�����*���**��ظ��� +*��*���*���Y�S�a�e�����*���**��ظ��� **� �*���*���Y�S�a�e�����*���**��ظ��� **� *���*���YS�a�e�����*�   �   *   ?��    ?��   ?��   ?�� �   �  {  {  {  {  {  { } } } } } & & & & 9 9 9 9 & & J J � � � � � � ^� ^� ^� ^� S� �� �� �� �� �� &��*�*�5�5�@�@�K�K�V�V�b�b�n�n�z�z��������� �� �� �������������������������������������������������������������������������������������������������'�'�&�&�&�&��<�<�<�<�F�F�;�;�Z�Z�Z�Z�Z�Z�Z�Z�O�;�~�~�~�~�����}�}�������������������}���������������������������������������������!�!�!�!�!�!�!�!���  { �W �  �     �*���**���Y�S�����Y��Y�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�S��Y**�E��SY**�u��SY**� ���SY**�Ͷ�SY**�Ѷ�SY**� q��SY**� ٶ�SY**� ��SY**����SY	**� ���SY
S�Ҷ�W*�   �   *    ���     ���    ���    ��� �   f  r� r� }� }� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � � W �   	    »�Y*�ط�:*+,��� :� ��*+,��� :� ��� �� �:�:��:		����   W           �	��*� ��**����Y*���**�����z�c�}S**������� �� � :
� 
�:���*�    9
    - 9
  3 6 9
    >
   - >
 3 6 >
   �   - � 3 6 � 9 � � � � � �   z    ���     ���    ���    ���    �	�	�    �	��    ���    ��	�    ��	�    �
� 	   ��� 
   ��� �   V  n� n� n� n� j� �� �� �� �� �� �� �� �� �� �� �� �� �� �� t�  � 	W �   z     >*+,��� �*+,��� �*+,��� �*+,��� �*+,�� �*�   �   *    >��     >��    >��    >��  
  �   	    ���=��?q��s����׸����Y�S����Y S���Y S�4�;Y�<G�@B�@D�@��@�n�������M��O������Y�ͳϻ�Y�ֳػ�Y��Y�SY��Y��SY��SS���ܱ   �       ���  �     �P �P �& �& �W �  k 	    �*�u**� U���*��*���Y�S�a�e**�u���e���.�1�� ]*� E*��**���Y�S�����Y*��**�E���e��S���*�u**� E��YKS���*�   �   *    ���     ���    ���    ��� �   � " � � � �  � � � � � )� )� )� )� � � :� :� o� o� o� o� o� o� N� N� N� N� C� �� �� �� �� �� �      �   �