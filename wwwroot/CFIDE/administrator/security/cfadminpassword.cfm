����  -{ 
SourceFile 1/CFIDE/administrator/security/cfadminpassword.cfm cfcfadminpassword2ecfm258757826  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   PASSWORD_OLDPASSWORD_ERROR Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   RUNTIME   	   ISALLOWCONCLOGIN   	    CHECKCSRFTOKEN " " 	  $ ALLOWCONCLOGIN & & 	  ( ERR_SEEDLENGTH * * 	  , ISADMINROLESAVAILABLE . . 	  0 ADMIN 2 2 	  4 CFCATCH 6 6 	  8 ERROR_ALLOWCONCLOGIN : : 	  < FACTORY > > 	  @ GETCSRFTOKEN B B 	  D TOKEN F F 	  H PASSWORD_CONFIRM_ERROR J J 	  L ERROR_TOGGLE N N 	  P FORM R R 	  T 	SCRIPTSRC V V 	  X ERROR_SET_SEED Z Z 	  \  ERROR_TOGGLE_SINGLEADMINPASSWORD ^ ^ 	  ` AERRORMESSAGES b b 	  d PASSWORD_EMPTY_ERROR f f 	  h 	LOGACTION j j 	  l REQUEST n n 	  p SECURITYCFC r r 	  t 	LOGINUSER v v 	  x 	VARIABLES z z 	  | BERRORSEXIST ~ ~ 	  � RESULT � � 	  � com.macromedia.SourceModTime  R^�Z pageContext #Lcoldfusion/runtime/NeoPageContext; � �	  � getOut ()Ljavax/servlet/jsp/JspWriter; � � javax/servlet/jsp/JspContext �
 � � parent Ljavax/servlet/jsp/tagext/Tag; � �	  � %class$coldfusion$tagext$net$CookieTag Ljava/lang/Class; coldfusion.tagext.net.CookieTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/net/CookieTag � _setCurrentLineNo (I)V � �
  � 30 � 
setExpires (Ljava/lang/Object;)V � �
 � � cfcookie � value � CGI � java/lang/String � SCRIPT_NAME � _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � setValue (Ljava/lang/String;)V � �
 � � setHttpOnly (Z)V � �
 � � name � cfadmin_lastpage_ � GetAuthUser ()Ljava/lang/String; � �
  � concat &(Ljava/lang/String;)Ljava/lang/String; � �
 � � setName � �
 � � 	hasEndTag � � coldfusion/tagext/GenericTag �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � java �  coldfusion.server.ServiceFactory � CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; � �
  � set � � coldfusion/runtime/Variable �
 � � _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � getRuntimeService � java/lang/Object � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; 
  getCFFormScriptSrc 


<script src=" write � java/io/Writer

	 $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag �	  coldfusion/tagext/io/OutputTag 
doStartTag ()I
 _autoscalarize �
  doAfterBody
 doEndTag coldfusion/tagext/QueryLoop 
! doCatch (Ljava/lang/Throwable;)V#$
!% 	doFinally' 
( v/ajax/jquery/jquery.js" type="text/javascript"></script>
<script src="../sha1.js" type="text/javascript" ></script>
* 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTag-, �	 / !coldfusion/tagext/lang/IncludeTag1 pstrength.cfm3 setTemplate5 �
26 
8 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V:;
 < ../auditlog.cfm> f

<script type="text/javascript">
$(function() {
$('.password').pstrength();
});
</script>


@ SECURITYB _resolveD �
 E isAdminSecurityEnabledG _boolean (Ljava/lang/Object;)ZIJ
 �K isAdminUserIdRequiredM isRootAdminUserO NOTROOTADMINQ trueS _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)VUV
 W 	cfincludeY template[ GetContextRoot] �
 ^ "/CFIDE/administrator/forbidden.cfm` %class$coldfusion$tagext$lang$AbortTag coldfusion.tagext.lang.AbortTagcb �	 e coldfusion/tagext/lang/AbortTagg (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTagji �	 l "coldfusion/tagext/lang/ImportedTagn l10np 
../cftags/r admint :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V �v
ow &coldfusion/runtime/AttributeCollectiony id{ err_seedLength} var ([Ljava/lang/Object;)V �
z� setAttributecollection (Ljava/util/Map;)V��  coldfusion/tagext/lang/ModuleTag�
��
� 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;��
 � !Seed must be minimum 8 characters�
� _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;��
 � #javax/servlet/jsp/tagext/TagSupport�
�
�%
�( password_oldpassword_error� Old password is incorrect� LOCALE� REQUEST.LOCALE� en� checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V��
 � 
LOCALEFILE� java/lang/StringBuffer� resources/security_�  �
�� append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;��
�� .cfm� toString� �
 ��.



<SCRIPT TYPE="text/javascript">
<!--
// Check whether seed entered is mimimum 8 characters

function validateSeed()
{
	var seedField = document.security.seed;
	var seedval = seedField.value.replace(/^\s+|\s+$/g,"")
	var length = seedval.length;

	if (length > 0 && length <8 )
	{
		� alert('� ');�S
		seedField.focus();
		seedField.select();
		return false;
	}
	else
    {
        transformPasswordFields();
		return true;
    }
}

function transformPasswordFields()
{
    var pwdFields = [document.security.cfadmin_oldpassword, document.security.cfadmin_Newpassword, document.security.cfadmin_NewpasswordConfirm];
    for(var i=0; i < pwdFields.length; i++)
    {
        var value = pwdFields[i].value.replace(/^\s+|\s+$/gm,'');
        var length = value.length;
        if(length > 0)
            pwdFields[i].value = hex_sha1(value);
    }
}
// -->
</SCRIPT>


� false� 2(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)V��
 � ArrayNew (I)Ljava/util/List;��
 � _Array 2(Ljava/lang/Object;)Lcoldfusion/runtime/FastArray;��
 �� setArray !(Lcoldfusion/runtime/FastArray;)V��
 �� password_confirm_error� \Your password could not be changed because the new and confirmation passwords did not match.� password_oldpassword_error1� ?Password could not be changed as the old password is incorrect.� password_empty_error� Password can not be blank.� 	component� CFIDE.adminapi.security� ADMINSUBMIT� FORM.ADMINSUBMIT�  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z��
 � _Object (Z)Ljava/lang/Object;��
 �� REQUEST.SECURITY�  � 	CSRFTOKEN� FORM.CSRFTOKEN� checkCSRFToken� SECTABKEYNAME� 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;��
 � CFADMIN_OLDPASSWORD� Trim �
  CFADMIN_NEWPASSWORD CFADMIN_NEWPASSWORDCONFIRM Len (Ljava/lang/Object;)I	
 
 (I)Ljava/lang/Object;�
 � _compare (Ljava/lang/Object;D)D
  _List $(Ljava/lang/Object;)Ljava/util/List;
 � ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z
  FORM.CFADMIN_NEWPASSWORD FORM.CFADMIN_NEWPASSWORDCONFIRM checkAdminPassword Compare '(Ljava/lang/String;Ljava/lang/String;)I!"
 # setAdminPassword% BRESETCOOKIE' _factor0 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object;)*
 + VARIABLES.BRESETCOOKIE- isAllowConcurrentAdminLogin/ *class$coldfusion$tagext$security$LogoutTag $coldfusion.tagext.security.LogoutTag21 �	 4 $coldfusion/tagext/security/LogoutTag6 current8 
setSession: �
7; all= 	loginuser? %coldfusion/runtime/ArgumentCollectionA adminPasswordC )([Ljava/lang/Object;[Ljava/lang/Object;)V E
BF b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object;�H
 I *coldfusion/runtime/TransientVariableHolderK &(Lcoldfusion/runtime/NeoPageContext;)V M
LN SEEDP 	FORM.SEEDR '(Ljava/lang/Object;Ljava/lang/String;)DT
 U setSeedW 	logactionY "has set the ColdFusion server seed[ unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;]^ coldfusion/runtime/NeoException`
a_ t28 [Ljava/lang/String; Anyecd	 g findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)Iij
ak bind '(Ljava/lang/String;Ljava/lang/Object;)Vmn
Lo 
					q error_set_seeds 
						There was an error while updating passwords with new seed.<br/>
						Please check logs for more details.</br>
						u MESSAGEw D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; �y
 z EncodeForHTML| �
 } <br/>
						 DETAIL� 
				� 

				� unbind� 
L� _factor1�*
 � FORM.ALLOWCONCLOGIN� SECURITYAPI� setAllowConcurrentAdminLogin� Nhas updated concurrent login sessions configuration for Administrator console.� t29�d	 � error_allowconclogin� �
						There was an error while updating concurrent login sessions flag.<br/>
						Please check logs for more details.</br>
						� 	ADMINAUTH� FORM.ADMINAUTH� none� setAdminSecurityEnabled� t30�d	 � error_toggle� G
						Unable to set Administrator authentication switch.<br/>
						� _factor2�*
 � username� setLoginUserIdRequired� t31�d	 �  error_toggle_singleadminpassword� E
						Unable to set Administrator authentication type.<br/>
						� #class$coldfusion$tagext$lang$LogTag coldfusion.tagext.lang.LogTag�� �	 � coldfusion/tagext/lang/LogTag� audit� setFile� �
�� setApplication� �
�� cflog� text� User � ] has set Administrator authentication type to: Separate user name and password authentication� setText� �
�� H has set Administrator authentication type to: No authentication needed � password� J has set Administrator authentication type to: Use a single password only � _factor3�*
 � adminpasswordpagename� pagename� !ColdFusion Administrator password� ../header.cfm� )class$coldfusion$tagext$html$form$FormTag #coldfusion.tagext.html.form.FormTag�� �	 � #coldfusion/tagext/html/form/FormTag� security�
� � cfform� action� 	setAction� �
�� POST� 	setMethod� �
�� return validateSeed()� setOnSubmit� �
��
� ../include/buttonbar.cfm  ../include/margintop.cfm ../include/errors.cfm \
	<script language="javaScript">
	top.frame_nav.document.location.reload();
	</script>
	 

 1

<input type="hidden" name="csrftoken" value="
 getCSRFToken ">

<h2 class="pageHeader"> pageHeader_adminpassword 
Security &gt; Administrator 4
</h2>
<br>

<label for="cfadmin_password">
<b> cfadmin_password (ColdFusion Administration Authentication </b><br/>
</label>
	 cfadmin_password_explanation�
		You should restrict access to the ColdFusion Administrator to trusted
		users. By default the ColdFusion Administrator requires authentication to access
		these pages. However, if you configure your web server to restrict access to
		these pages, you can disable this authentication and
		rely on your web server's security instead. (Consult your web server
		documentation for details on securing pages.)
	 
<br/>
<br/>
  cfadmin_username_explanation" 7
		Select the type of Administrator authentication:
	$ �<br/>
<table width="100%">
<tr width="100%"><td>&nbsp;&nbsp;&nbsp;</td><td colspan="2">
<input name="AdminAuth" type="RADIO" value="password"
& 
	checked
( 0
>
<b>
<label for="cfadmin_singlepassword">
* cfadmin_singlepassword, $Use a single password only (default). _factor40*
 1 </label>
</b>
</td></tr>

3 IsAdminRolesAvailable5 z
	<tr width="100%"><td>&nbsp;&nbsp;&nbsp;</td><td colspan="2">
	<input name="AdminAuth" type="RADIO" value="username"
	7 
		checked
	9 /
	>
	<b>
	<label for="cfadmin_usernames">
	; cfadmin_usernames= FSeparate user name and password authentication (allows multiple users)? </label>
	</b>
	</td></tr>
A �

<tr width="100%"><td>&nbsp;&nbsp;&nbsp;</td><td colspan="2">
<input name="AdminAuth" type="RADIO" value="none" id="cfadmin_password"
	C 2
>
<b>
<label for="cfadmin_securitydisabled">
E cfadmin_securitydisabledG *No authentication needed (not recommended)I �</label>
</b>
</td></tr>

</table>

<br/> <br/>

<table border="0" cellpadding="5" cellspacing="0" width="100%">
<tr>
	<td bgcolor="#K 	GRAYLIGHTM &" class="cellBlueTopAndBottom">
		<b>O errorheaderQ Root Administrator PasswordS &</b>
	</td>
</tr>
</table>

<p>
U cfadmin_changePasswordW �
To change the ColdFusion Administrator password for the root administrative user,
enter old password, new password and then confirm
Y _factor5[*
 \ v
</p>
<table border="0" cellpadding="5" cellspacing="0">
<tr><td valign="top">
<label for="cfadmin_oldpassword">
^ cfadmin_oldpassword` Old Passwordb �</label></td><td>
<input name="cfadmin_oldpassword" id="cfadmin_oldpassword" type="password" size=15 maxlength="50" onFocus="select()" value="" autocomplete="off" style="width:99%">
</td></tr>
<tr><td valign="top">
<label for="cfadmin_Newpassword">
d cfadmin_Newpasswordf New Passwordh</label></td><td>
<input name="cfadmin_Newpassword" id="cfadmin_Newpassword" type="password" size=15 class="password" maxlength="50" onFocus="select()" value="" autocomplete="off" style="width:99%">
</td></tr>
<tr><td valign="top">
<label for="cfadmin_NewpasswordConfirm">
j cfadmin_NewpasswordConfirml Confirm Passwordn �</label></td><td>
<input name="cfadmin_NewpasswordConfirm" id="cfadmin_NewpasswordConfirm" type="PASSWORD" size=15 maxlength="50" onFocus="select()" value="" autocomplete="off" style="width:99%">
<br>
p cfadmin_passwordlengthr (50-character limit.)t 
</td></tr>
</table>
<br/><br/>
<p>
<table border="0" cellpadding="5" cellspacing="0" width="100%">
<tr>
	<td bgcolor="#v 
seedHeaderx Password Seedz _factor6|*
 } cfadmin_changeSeed @
To specify a new seed value to encrypt data source passwords
� !
</p>

<label for="newSeed">
� newSeed� New Seed� r</label>
<input name="seed" id="seed" type="text" size="50" maxlength="500" onFocus="select()" value=""> &nbsp;
� cfadmin_seedlength� .(8-character minimum and 500-character limit.)� j

<br/><br/>


<table border="0" cellpadding="5" cellspacing="0" width="100%">
<tr>
	<td bgcolor="#� concurrentloginheader� Concurrent Login Session� �</b>
	</td>
</tr>
</table>

<p>
		<input name="allowconclogin" type="CHECKBOX" class="text" value="true" id="allowconclogin" � checked� !>
		<label for="allowconclogin">� allowconcloginLabel� @<b>Allow concurrent login sessions for Administrator Console</b>� _factor7�*
 � "</label><br>
</p>
<br/><br/>

� _factor8�*
 � ../include/marginbottom.cfm� ../footer.cfm�
�
�
�%
�( _factor9�*
 � metaData Ljava/lang/Object;��	 � getMetadata ()Ljava/lang/Object; this !Lcfcfadminpassword2ecfm258757826; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; __factorParent out Ljavax/servlet/jsp/JspWriter; 	include29 #Lcoldfusion/tagext/lang/IncludeTag; 	include30 	include31 output32  Lcoldfusion/tagext/io/OutputTag; mode32 I t9 t10 Ljava/lang/Throwable; t11 t12 output52 mode52 t15 t16 t17 t18 t19 t20 t21 t22 LineNumberTable java/lang/Throwable� cookie0 !Lcoldfusion/tagext/net/CookieTag; output1 mode1 t7 t8 include2 include3 include4 abort5 !Lcoldfusion/tagext/lang/AbortTag; module6 $Lcoldfusion/tagext/lang/ImportedTag; mode6 module7 mode7 t25 t26 t27 output9 mode9 t33 t34 t35 t36 module11 mode11 t39 t40 t41 t42 t43 t44 module12 mode12 t47 t48 t49 t50 t51 t52 module13 mode13 t55 t56 t57 t58 t59 t60 module27 mode27 t63 t64 t65 t66 t67 t68 	include28 form56 %Lcoldfusion/tagext/html/form/FormTag; mode56 t72 	include53 t74 	include54 t76 	include55 t78 t79 t80 t81 t82 t83 t84 module42 mode42 t6 module43 mode43 t14 module44 mode44 t23 t24 module45 mode45 t32 module46 mode46 t38 module47 mode47 module48 mode48 module49 mode49 module50 mode50 module51 mode51 logout14 &Lcoldfusion/tagext/security/LogoutTag; logout15 ,Lcoldfusion/runtime/TransientVariableHolder; #Lcoldfusion/runtime/AbortException; Ljava/lang/Exception; __cfcatchThrowable0 output17 mode17 module16 mode16 !coldfusion/runtime/AbortExceptionL java/lang/ExceptionN runPage module33 mode33 module34 mode34 module35 mode35 module36 mode36 module37 mode37 module38 mode38 module39 mode39 module40 mode40 module41 mode41 t4 t5 __cfcatchThrowable1 output19 mode19 module18 mode18 t13 __cfcatchThrowable2 output21 mode21 module20 mode20 t37 <clinit> __cfcatchThrowable3 output23 mode23 module22 mode22 log24 Lcoldfusion/tagext/lang/LogTag; log25 log26 1     )                 "     &     *     .     2     6     :     >     B     F     J     N     R     V     Z     ^     b     f     j     n     r     v     z     ~     �     � �    �   , �   b �   i �   1 �   cd   �d   �d   �d   � �   � �   ��    �� �   "     ���   �       ��      �  �    W*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )**++,� � -**/+,� � 1**3+,� � 5**7+,� � 9**;+,� � =**?+,� � A**C+,� � E**G+,� � I**K+,� � M**O+,� � Q**S+,� � U**W+,� � Y**[+,� � ]**_+,� � a**c+,� � e**g+,� � i**k+,� � m**o+,� � q**s+,� � u**w+,� � y**{+,� � }**+,� � �**�+,� � ��   �       W��    W��   W��     �   #     *� 
�   �       ��   �* �  2    �*�0+� ��2:*� ��7� �� � �*�0+� ��2:*� ��7� �� � �*�0+� ��2:*� ��7� �� � �**� U����Y�L� W**� qC���L� y*� +� ��:*$� �� ��Y6� ,������"� :	� #	�� � #:

�&� � :� �:�)�*,	�=*,	�=*�4+� ��:*,� �� ��Y6� b*,�2� :� ��*,�]� :� l�*,�~� :� X�*,��� :� D�,�������"� :� #�� � #:�&� � :� �:�)�*�  � ��� � �����Tm��s�������������������Tm��s��������������������������� �   �   ���    �� �   ���   � ��   ���   ���   ���   ���   ���   ��� 	  ��� 
  ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ��� �   � &     F F . t t \ �! �! �! �! �! �! �! �! �! �! �! �! �! �! �! �! �! �! �! �! �! �! �! �! �! �! �$ �!8, �* �  � 
 U  
�*� �+� �� �:*� ��� ���*�� �Y�S� �� �� ʶ �� ����*� �*� ڶ �� ʶ �� �� � �*� A*� �*�� � �*� *	� �***� A� ��� ��� �*� Y*
� �***� � �� ��� �,�*�+� ��:*� �� ��Y6� ,**� Y�� ƶ�����"� :� #�� � #:�&� � :	� 	�:
�)�
,+�*�0+� ��2:*� �4�7� �� � �*,9�=*�0+� ��2:*� �?�7� �� � �,A�*� �**o� �YCS�FH� ��Y�L� %W*� �**o� �YCS�FN� ���L� �*� �**o� �YCS�FP� ���L�� }*o� �YRST�X*�0+� ��2:*� �Z\*� �*�_a� �� ʶ7� �� � �*�f+� ��h:*� �� �� � �*�m+� ��o:*!� �qsu�x�zY� �Y|SY~SY�SY~S����� ���Y6� 6*,��M,�������� � :� �:*,��M���� :� #�� � #:��� � :� �:���*�m+� ��o:*"� �qsu�x�zY� �Y|SY�SY�SY�S����� ���Y6� 6*,��M,�������� � :� �:*,��M���� :� #�� � #:��� � :� �:���**� q�����*o� �Y�S��Y���*o� �Y�S� �� ƶ�������X,��*�	+� ��:*>� �� ��Y6 � (,��,**� -�� ƶ,�������"� :!� #!�� � #:""�&� � :#� #�:$�)�$,��**� �ö�*,9�=*� e*Z� �*�ʸζ�*�m+� ��o:%*\� �%qsu�x%�zY� �Y|SY�SY�SY�S����%� �%��Y6&� 6*%&,��M,ֶ%������ � :'� '�:(*&,��M�(%��� :)� #)�� � #:*%*��� � :+� +�:,%���,*�m+� ��o:-*]� �-qsu�x-�zY� �Y|SY�SY�SY�S����-� �-��Y6.� 6*-.,��M,ڶ-������ � :/� /�:0*.,��M�0-��� :1� #1�� � #:2-2��� � :3� 3�:4-���4*�m+� ��o:5*^� �5qsu�x5�zY� �Y|SY�SY�SY�S����5� �5��Y66� 6*56,��M,޶5������ � :7� 7�:8*6,��M�85��� :9� #9�� � #::5:��� � :;� ;�:<5���<*� u*`� �*�� � �**� U����Y�L� W**� qC���L� '*+,��� �*+,��� �*+,��� �*� !*� �**o� �Y�S�F0� ��� �*�m+� ��o:=*� �=qsu�x=�zY� �Y|SY�SY�SY�S����=� �=��Y6>� 6*=>,��M,�=������ � :?� ?�:@*>,��M�@=��� :A� #A�� � #:B=B��� � :C� C�:D=���D*�0+� ��2:E*� �E�7E� �E� � �*��8+� ���:F*� �F��F��*�� �Y�S� �� �� ʶ�F���F���F� �F��Y6G� �*FG,��M*F,��� :H� Ҩ
H�*,	�=*�05F� ��2:I*�� �I��7I� �I� � :J� �� �J�*�06F� ��2:K*�� �K�7K� �K� � :L� X� �L�*�07F� ��2:M*�� �M��7M� �M� � :N� � WN�F����1� � :O� O�:P*G,��M�PF��� :Q� #Q�� � #:RFR��� � :S� S�:TF���T*� P ��� �(�(�%(�(-(�����6B�<?B��6Q�<?Q�BNQ�QVQ�����������
�
�����
��������������������������������������������������������Rnq�qvq�G�������G���������������69�9>9�Ye�_be�Yt�_bt�eqt�tyt�w�������l�������l���������������	p	�
R�	�	�
R�	�

R�

>
R�
D
O
R�
R
W
R�	e	�
~�	�	�
~�	�

~�

>
~�
D
r
~�
x
{
~�	e	�
��	�	�
��	�

��

>
��
D
r
��
x
{
��
~
�
��
�
�
�� �  T U  
���    
�� �   
���   
� ��   
���   
���   
���   
���   
���   
��� 	  
��� 
  
���   
���   
���   
���   
���   
���   
���   
���   
���   
���   
���   
���   
���   
���   
���   
���   
���   
�c�   
���   
���   
���   
���    
��� !  
��� "  
��� #  
��� $  
��� %  
��� &  
��� '  
��� (  
��� )  
��� *  
��� +  
��� ,  
��� -  
��� .  
� � /  
�� 0  
�� 1  
�� 2  
�� 3  
�� 4  
�� 5  
�� 6  
�� 7  
�	� 8  
�
� 9  
�� :  
�� ;  
�� <  
�� =  
�� >  
�� ?  
�� @  
�� A  
�� B  
�� C  
�� D  
�� E  
� F  
�� G  
�� H  
�� I  
�� J  
�� K  
�� L  
�� M  
� � N  
�!� O  
�"� P  
�#� Q  
�$� R  
�%� S  
�&� T�  Z �                 E  E  L  L  L  L  E  E     j  u  u  w  w  t  t  t  t  j  � 	 � 	 � 	 � 	 � 	 � 	  	 � 
 � 
 � 
 � 
 � 
 � 
 � 
 j  �  �  �  �  �  � V V @ � � t � � � � � � � � � � � � � � � � - - - -     U U U U Y Y U U 3 v � � � !� !� !� !� !� "� "� "� "b "5 +5 +L -L -R -R -R -R -h -h -H -H -H -H -; -; ,� >� >� >� >� >{ >
 Y
 Y# Z# Z" Z" Z" Z" Z Z Zc \c \o \o \- \+ ]+ ]7 ]7 ]� ]� ^� ^� ^� ^� ^� `� `� `� `� `� `� `� `� `� `� a� a� a� a� a� a� a� a� a� a� a� a� a� a� a� a� a� a� a� a� a� a� a� a� a� a� a������PP\\���	(	(	6	6	6	6	Q	Q	Y	Y	��	��	��	��	��	��
$�
$�
�	 |* �  X  ,  �,_�*�m*+� ��o:*�� �qsu�x�zY� �Y|SYaS����� ���Y6� 6*,��M,c������� � :� �:*,��M���� :� #�� � #:		��� � :
� 
�:���,e�*�m++� ��o:*�� �qsu�x�zY� �Y|SYgS����� ���Y6� 6*,��M,i������� � :� �:*,��M���� :� #�� � #:��� � :� �:���,k�*�m,+� ��o:*�� �qsu�x�zY� �Y|SYmS����� ���Y6� 6*,��M,o������� � :� �:*,��M���� :� #�� � #:��� � :� �:���,q�*�m-+� ��o:*�� �qsu�x�zY� �Y|SYsS����� ���Y6� 6*,��M,u������� � :� �:*,��M���� : � # �� � #:!!��� � :"� "�:#���#,w�,*o� �YNS� �� ƶ,P�*�m.+� ��o:$*�� �$qsu�x$�zY� �Y|SYyS����$� �$��Y6%� 6*$%,��M,{�$������ � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)��� � :*� *�:+$���+*� ( Y u x� x } x� N � �� � � �� N � �� � � �� � � �� � � ��9<�<A<�\h�beh�\w�bew�htw�w|w��� �  �� ,�&),�� ;�&);�,8;�;@;����������������������������������������|�������|��������������� �  � ,  ���    �� �   ���   � ��   �'�   �(�   �)�   ���   ���   ��� 	  ��� 
  ���   �*�   �+�   �,�   ���   ���   ���   ���   ���   �-�   �.�   ���   �/�   �0�   ���   ���   ���   �1�   �2�   ���   ���   �3�    ��� !  ��� "  ��� #  �4� $  �5� %  �6� &  ��� '  ��� (  ��� )  ��� *  ��� +�   R  >� >� ��� ������������S������l�l�5� �* �  �  ,  ,V�*�m/+� ��o:*�� �qsu�x�zY� �Y|SY�S����� ���Y6� 6*,��M,�������� � :� �:*,��M���� :� #�� � #:		��� � :
� 
�:���,��*�m0+� ��o:*�� �qsu�x�zY� �Y|SY�S����� ���Y6� 6*,��M,�������� � :� �:*,��M���� :� #�� � #:��� � :� �:���,��*�m1+� ��o:*�� �qsu�x�zY� �Y|SY�S����� ���Y6� 6*,��M,�������� � :� �:*,��M���� :� #�� � #:��� � :� �:���,��,*o� �YNS� �� ƶ,P�*�m2+� ��o:*�� �qsu�x�zY� �Y|SY�S����� ���Y6� 6*,��M,�������� � :� �:*,��M���� : � # �� � #:!!��� � :"� "�:#���#,��**� !��L� 
,��,��*�m3+� ��o:$*�� �$qsu�x$�zY� �Y|SY�S����$� �$��Y6%� 6*$%,��M,��$������ � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)��� � :*� *�:+$���+*� ( Y u x� x } x� N � �� � � �� N � �� � � �� � � �� � � ��9<�<A<�\h�beh�\w�bew�htw�w|w��� �  �� ,�&),�� ;�&);�,8;�;@;����������������"�������������������������������� �  � ,  ��    � �   ��    ��   7�   8�   )�   ��   ��   �� 	  �� 
  ��   9�   :�   ,�   ��   ��   ��   ��   ��   ;�   <�   ��   /�   0�   ��   ��   ��   =�   >�   ��   ��   3�    �� !  �� "  �� #  ?� $  @� %  6� &  �� '  �� (  �� )  �� *  �� +�   ^  >� >� ��� ��������T�T�T�T�S�����q�5�5�5�����Q� )* �  �    �*� I� �**� U���� *� I*S� �Y�S� �� �*k� �**� %� ��*� �Y**� I�SY*o� �Y�S� �S��W*S� �Y S*p� �*S� �Y S� �� Ƹ�X*S� �YS*q� �*S� �YS� �� Ƹ�X*S� �YS*r� �*S� �YS� �� Ƹ�X*s� �*S� �Y S� �����t|��Y�L� -W*s� �*S� �YS� �����~���L� **� �T� �*v� �**� e��**� i��W**� U���Y�L� W**� U���Y�L� -W*y� �*S� �YS� �����t|��L�%*{� �***� u� � � �Y*S� �Y S� �SYTS��L�� **� �T� �*~� �**� e��**� ��W* �� �*S� �YS� �� �*S� �YS� �� Ƹ$���~��� +*� �T� �* �� �**� e��**� M��W**� ���L�� J* �� �***� u� �&� �Y*S� �YS� �SYTS�W*{� �Y(ST�X*�   �   *   ���    �� �   ���   � �� �  b �  f  f  f  f   f  g  g  g  g  g  g  g  g 
 g 
 g  i  i  i  i  i 
 g 8 k 8 k J k J k U k U k 8 k 8 k 8 k } p } p } p } p } p } p } p } p j p � q � q � q � q � q � q � q � q � q � r � r � r � r � r � r � r � r � r � s � s � s � s
 s
 s � s � s � s � s% s% s% s% s; s; s% s% s% s% s � s � sR uR uR uR uN u^ v^ v^ v^ vi vi v^ v^ v^ v � sv xv xv xv xz xz x} x} xu xu xu xu x� x� x� x� x� x� x� x� x� x� x� x� xu xu xu xu x� y� y� y� y� y� y� y� y� y� yu yu y� {� {� {� { { {� {� {� {� {� {� { } } } } }  ~  ~  ~  ~+ ~+ ~  ~  ~  ~� {> �> �> �> �Q �Q �Q �Q �> �> �j �j �> �> �> �> �> �> �} �} �} �} �y �� �� �� �� �� �� �� �� �� �> �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �u x �* �      *+,�,� �**� ���L���Y�L� W**� }(.���Y�L� W*{� �Y(S� ��L� �*� )* �� �**o� �YCS�F0� ��� �**� )��L� 4*�5+� ��7:* �� �9�<� �� � �� 1*�5+� ��7:* �� �>�<� �� � �*� 5* �� �**� y� �@*�BY� �YDS� �Y*S� �YS� �S�G�J� ��LY*� ��O:**� UQS���Y�L� .W* �� �*S� �YQS� �� Ƹ�V�~��L� Z* �� �**o� �YCS�FX� �Y*S� �YQS� �S�W* �� �**� m� �Z*� �Y\S��W�"�(:�:�b:		�h�l�  �           7	�p*� �T� �*�+� ��:
* �� �
� �
�Y6�@*,r�=*�m
� ��o:* �� �qsu�x�zY� �Y|SYtSY�SYtS����� ���Y6� �*,��M,v�,* �� �**� 9� �YxS�{� Ƹ~�,��,* �� �**� 9� �Y�S�{� Ƹ~�*,r�=������ � :� �:*,��M���� :� )� q� ��� � #:��� � :� �:���*,��=
����
�"� :� &� o�� � #:
�&� � :� �:
�)�*,��=*� �* �� �**� e��**� ]���� �� �� � :� �:���*� ��"��CO�ILO��C^�IL^�O[^�^c^�7C��I�������7C��I���������������;��M;��O;����C��I����������� �     ��    � �   ��    ��   AB   CB   )D   �E   �F   G� 	  H� 
  I�   J�   K�   ,�   ��   ��   ��   ��   ��   ��   ��   ��   /�   0�   �� �  6 �   c  �  �  �  �  �  �  �  � % � % � % � % � ) � ) � , � , � $ � $ � $ � $ �  �  �  �  � = � = � = � = �  �  � ^ � ^ � ^ � ^ � S � S � | � | � � � � � � � � � � � � � � � | � � � � � � � � � � � � � � � � � � �  �< �< �< �< �@ �@ �C �C �; �; �; �; �[ �[ �[ �[ �[ �[ �q �q �[ �[ �[ �[ �; �; �� �� �� �� �� �� �� �� �� �� �� �� �; �; � � � � � � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �J � �� �� �� �� �� �� �� �� �� �� �� �� �. � P� �   c     *� �� �L*� �N*-+��� ��   �   *    ��     ��     ��     � � �        0* �  �  ,  I,�,*.� �**� E� �*� �Y*o� �Y�S� �S��� ƶ,�*�m!+� ��o:*0� �qsu�x�zY� �Y|SYS����� ���Y6� 6*,��M,������� � :� �:*,��M���� :� #�� � #:		��� � :
� 
�:���,�*�m"+� ��o:*6� �qsu�x�zY� �Y|SYS����� ���Y6� 6*,��M,������� � :� �:*,��M���� :� #�� � #:��� � :� �:���,�*�m#+� ��o:*8� �qsu�x�zY� �Y|SYS����� ���Y6� 6*,��M,������� � :� �:*,��M���� :� #�� � #:��� � :� �:���,!�*�m$+� ��o:*B� �qsu�x�zY� �Y|SY#S����� ���Y6� 6*,��M,%������� � :� �:*,��M���� : � # �� � #:!!��� � :"� "�:#���#,'�*H� �**o� �YCS�FN� ���L�� 
,)�,+�*�m%+� ��o:$*N� �$qsu�x$�zY� �Y|SY-S����$� �$��Y6%� 6*$%,��M,/�$������ � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)��� � :*� *�:+$���+*� ( � � �� � � �� � � �� � � �� � � �� � � �� � � �� � � ��Xtw�w|w�M�������M���������������8;�;@;�[g�adg�[v�adv�gsv�v{v���������+�%(+��:�%(:�+7:�:?:������ ���'�!$'��6�!$6�'36�6;6� �  � ,  I��    I� �   I��   I ��   IQ�   IR�   I)�   I��   I��   I�� 	  I�� 
  I��   IS�   IT�   I,�   I��   I��   I��   I��   I��   IU�   IV�   I��   I/�   I0�   I��   I��   I��   IW�   IX�   I��   I��   I3�    I�� !  I�� "  I�� #  IY� $  IZ� %  I6� &  I�� '  I�� (  I�� )  I�� *  I�� +�   ~  . . !. !. . . . . . y0 y0 B0=6=6688�8�B�B�BYHYHYHYHYHYHYH�N�N�N [* �  �  $  �,4�*R� �**� 1� �6*� ����L�,8�*U� �**o� �YCS�FN� ���L� 
,:�,<�*�m&+� ��o:*[� �qsu�x�zY� �Y|SY>S����� ���Y6� 6*,��M,@������� � :� �:*,��M���� :� #�� � #:		��� � :
� 
�:���,B�,D�*b� �**o� �YCS�FH� ���L�� 
,:�,F�*�m'+� ��o:*h� �qsu�x�zY� �Y|SYHS����� ���Y6� 6*,��M,J������� � :� �:*,��M���� :� #�� � #:��� � :� �:���,L�,*o� �YNS� �� ƶ,P�*�m(+� ��o:*s� �qsu�x�zY� �Y|SYRS����� ���Y6� 6*,��M,T������� � :� �:*,��M���� :� #�� � #:��� � :� �:���,V�*�m)+� ��o:*y� �qsu�x�zY� �Y|SYXS����� ���Y6� 6*,��M,Z������� � :� �:*,��M���� : � # �� � #:!!��� � :"� "�:#���#*�   � � �� � � �� � �� � �� � �� � ��������������������������������������������������������_{~�~�~�T�������T��������������� �  j $  ���    �� �   ���   � ��   �[�   �\�   �)�   ���   ���   ��� 	  ��� 
  ���   �]�   �^�   �,�   ���   ���   ���   ���   ���   �_�   �`�   ���   �/�   �0�   ���   ���   ���   �a�   �b�   ���   ���   �3�    ��� !  ��� "  ��� #�   �   R R R R 5U 5U 5U �[ �[ d[ R6b6b6b6b6b6b6b�h�hgh,r,r,r,r+r�s�sIsDyDyy �* �  �  ,  ĻLY*� ��O:**� U'����Y�L� -W* �� �*S� �Y'S� �� Ƹ�V�~��L� W* �� �**o� �Y�S�F�� �YTS�W* �� �**� m� �Z*� �Y�S��W� ,* �� �**o� �Y�S�F�� �Y�S�W�#�):�:�b:���l�   �           7�p*� �T� �*�+� ��:* Ŷ �� ��Y6	�@*,r�=*�m� ��o:
* ƶ �
qsu�x
�zY� �Y|SY�SY�SY�S����
� �
��Y6� �*
,��M,��,* ɶ �**� 9� �YxS�{� Ƹ~�,��,* ʶ �**� 9� �Y�S�{� Ƹ~�*,r�=
������ � :� �:*,��M�
��� :� )� q� ��� � #:
��� � :� �:
���*,��=�����"� :� &� o�� � #:�&� � :� �:�)�*,��=*� �* ζ �**� e��**� =���� �� �� � :� �:����LY*� ��O:**� U�����Y�L� #W*S� �Y�S� ���V�~���L� 6* ֶ �**o� �YCS�F�� �Y�S�W� ,* ض �**o� �YCS�F�� �YTS�W�#�):�:�b:���l�   �           7�p*� �T� �*�+� ��:* ߶ �� ��Y6�@*,r�=*�m� ��o:* � �qsu�x�zY� �Y|SY�SY�SY�S����� ���Y6� �*,��M,��,* � �**� 9� �YxS�{� Ƹ~�,��,* � �**� 9� �Y�S�{� Ƹ~�*,r�=������ � : �  �:!*,��M�!��� :"� )� q� �"�� � #:##��� � :$� $�:%���%*,��=�����"� :&� &� o&�� � #:''�&� � :(� (�:)�)�)*,��=*� �* � �**� e��**� Q���� �� �� � :*� *�:+���+*� .�
���3?�9<?��3N�9<N�?KN�NSN�'3��9~������'3��9~��������������  � �M  � �O  ��� �3��9~����������e�������Z���Z�������V�JV�PSV���e�Je�PSe�Vbe�eje���M��O�������J��P������� �  � ,  ���    �� �   ���   � ��   �cD   �dE   �)F   �e�   �f�   �g� 	  �h� 
  �i�   ���   �j�   �,�   ���   ���   ���   ���   ���   ���   ���   ���   �/�   �0D   ��E   ��F   �k�   �l�   �m�   �n�   �o�   �3�    ��� !  ��� "  ��� #  ��� $  �p� %  �6� &  ��� '  ��� (  ��� )  ��� *  ��� +�  � �  �  �  �  �  �  �  �  �  �  �  �  � , � , � , � , � , � , � A � A � , � , � , � , �  �  � u � u � [ � [ � [ � � � � � � � � � � � � � � � � � � � � � � � � �  �  � � � � � � �r �r �~ �~ �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �: � �� �� �� �� �� �� �� �� �� �� �� �� �   � � � � � � � � � � � � � � �, �, � � � � � � �b �b �H �H �H �� �� �t �t �t � � �� �� �� �� �� �� �> �> �J �J �~ �~ �~ �~ �~ �~ �~ �~ �v �� �� �� �� �� �� �� �� �� � �� �� �� �� �� �� �� �� �� �� �� �~ �~ �� � q  �   �     ��� �� �� ��.� ��0d� ��fk� ��m3� ��5� �YfS�h� �YfS��� �YfS��� �YfS���� ���� ���zY� ������   �       ���   �* �  	�    ̻LY*� ��O:**� U�����Y�L� #W*S� �Y�S� ���V�~���L� 6* � �**o� �Y�S�F�� �YTS�W� ,* � �**o� �Y�S�F�� �Y�S�W�%�+:�:�b:���l�     �           7�p*� �T� �*�+� ��:* �� �� ��Y6	�@*,r�=*�m� ��o:
* �� �
qsu�x
�zY� �Y|SY�SY�SY�S����
� �
��Y6� �*
,��M,��,* �� �**� 9� �YxS�{� Ƹ~�,��,* �� �**� 9� �Y�S�{� Ƹ~�*,r�=
������ � :� �:*,��M�
��� :� )� q� ��� � #:
��� � :� �:
���*,��=�����"� :� &� o�� � #:�&� � :� �:�)�*,��=*� �*� �**� e��**� a���� �� �� � :� �:���**� ���L���**� U�����Y�L� #W*S� �Y�S� ���V�~���L� j*��+� ���:*� �������˻�Yͷ�*� �*� ڶ�϶���� ʶ�� �� � ��J**� U�����Y�L� #W*S� �Y�S� ���V�~���L� j*��+� ���:*� �������˻�Yͷ�*� �*� ڶ�Զ���� ʶ�� �� � �� �**� U�����Y�L� #W*S� �Y�S� �ָV�~���L� g*��+� ���:*� �������˻�Yͷ�*� �*� ڶ�ض���� ʶ�� �� � �*� q�������f��f&�&�#&�&+&� �b�Vb�\_b� �q�Vq�\_q�bnq�qvq�  � �M  � �O  ��� ���V��\������� �     ���    �� �   ���   � ��   �cD   �dE   �)F   �r�   �s�   �t� 	  �u� 
  �v�   ���   �j�   �,�   ���   ���   ���   ���   ���   ���   ���   ���   �/�   �wx   �yx   �zx �   �  �  �  �  �  �  �  �  �  �  �  �  � & � & � 6 � 6 � & � & � & � & �  �  � l � l � R � R � R � � � � � ~ � ~ � ~ �  �  � � � � � � � � � � � � �J �J �V �V �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � � �������������   ���������������������������44LLYYYY``HH�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�����������))))--00((((AAQQAAAA((~~����������f(�
��       �    �