����  -� 
SourceFile :/CFIDE/administrator/monitor/launch-multiservermonitor.cfm *cflaunch2dmultiservermonitor2ecfm299981704  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   REQUEST Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   FEATURE_NOT_AVAILABLE_MSG   	   PROTOCOL   	    ISSERVERMONITORINGAVAILABLE " " 	  $ AERRORMESSAGES & & 	  ( BERRORSEXIST * * 	  , ALTERNATECONTENT_CF . . 	  0 com.macromedia.SourceModTime  R���Q pageContext #Lcoldfusion/runtime/NeoPageContext; 5 6	  7 getOut ()Ljavax/servlet/jsp/JspWriter; 9 : javax/servlet/jsp/JspContext <
 = ; parent Ljavax/servlet/jsp/tagext/Tag; ? @	  A $class$coldfusion$tagext$io$SilentTag Ljava/lang/Class; coldfusion.tagext.io.SilentTag E forName %(Ljava/lang/String;)Ljava/lang/Class; G H java/lang/Class J
 K I C D	  M _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; O P
  Q coldfusion/tagext/io/SilentTag S _setCurrentLineNo (I)V U V
  W 	hasEndTag (Z)V Y Z coldfusion/tagext/GenericTag \
 ] [ 
doStartTag ()I _ `
 T a 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; c d
  e CGI g java/lang/String i SERVER_PORT_SECURE k _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; m n
  o 	IsBoolean (Ljava/lang/Object;)Z q r
  s _Object (Z)Ljava/lang/Object; u v coldfusion/runtime/Cast x
 y w _boolean { r
 y | https:// ~ set (Ljava/lang/Object;)V � � coldfusion/runtime/Variable �
 � � http:// � doAfterBody � `
 ] � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � doEndTag � ` #javax/servlet/jsp/tagext/TagSupport �
 � � doCatch (Ljava/lang/Throwable;)V � �
 ] � 	doFinally � 
 ] � LOCALE � REQUEST.LOCALE � en � checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V � �
  � 
LOCALEFILE � java/lang/StringBuffer � resources/monitor_ � (Ljava/lang/String;)V  �
 � � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 y � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 � � .cfm � toString ()Ljava/lang/String; � � java/lang/Object �
 � � _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � false � 2(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)V � �
  � ArrayNew (I)Ljava/util/List; � �
  � _Array 2(Ljava/lang/Object;)Lcoldfusion/runtime/FastArray; � �
 y � setArray !(Lcoldfusion/runtime/FastArray;)V � �
 � � _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � IsServerMonitoringAvailable � 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTag � � D	  � !coldfusion/tagext/lang/IncludeTag � ../header.cfm � setTemplate � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � ../include/margintop.cfm � ../include/errors.cfm � $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag � � D	  � coldfusion/tagext/io/OutputTag �
 � a 
	<h2 class="pageHeader"> � write � � java/io/Writer �
 � � (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag  D	  "coldfusion/tagext/lang/ImportedTag l10n 
../cftags/	 admin setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
 &coldfusion/runtime/AttributeCollection id pageHeader_clientvars1_multi ([Ljava/lang/Object;)V 
 setAttributecollection (Ljava/util/Map;)V  coldfusion/tagext/lang/ModuleTag

 a *Server Monitoring &gt; Multiserver Monitor!
 �
 �
 � </h2>
	
	<br>
	& _autoscalarize( �
 )
 � � coldfusion/tagext/QueryLoop,
- �
- �
 � � 
	1 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V34
 5 ../include/marginbottom.cfm7 ../footer.cfm9 %class$coldfusion$tagext$lang$AbortTag coldfusion.tagext.lang.AbortTag<; D	 > coldfusion/tagext/lang/AbortTag@ N


<!-- saved from url=(0014)about:internet -->
<html lang="en">
<head>
B  <LINK REL="SHORTCUT ICON" href="D SERVER_NAMEF :H SERVER_PORTJ GetContextRootL �
 M "/CFIDE/administrator/cf_icon.ico">O

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Multiserver Monitor</title>
<script src="AC_OETags.js" language="javascript"></script>
<style>
body { margin: 0px; overflow:hidden }
</style>
<script language="JavaScript" type="text/javascript">
<!--
// -----------------------------------------------------------------------------
// Globals
// Major version of Flash required
var requiredMajorVersion = 9;
// Minor version of Flash required
var requiredMinorVersion = 0;
// Minor version of Flash required
var requiredRevision = 0;
// -----------------------------------------------------------------------------

    function thisMovie(movieName) {
		return (isIE) ? window[movieName] : document[movieName];
	}

    // Logout from all server before unloading.
    window.onbeforeunload = function() {
	    var fxControl = thisMovie('MultiServerMonitor');
        fxControl.closeApplication();
        return;
    }
    // -->
  </script>
</head>

<body scroll="no" >

Q alternatecontent_cfS varU i
    This content requires the Adobe Flash Player. <a href=http://www.adobe.com/go/getflash/>Get Flash
W 

<script>
 
    Y $class$coldfusion$tagext$lang$WddxTag coldfusion.tagext.lang.WddxTag\[ D	 ^ coldfusion/tagext/lang/WddxTag` cfml2jsb 	setActiond �
ae cfwddxg inputi _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;kl
 m setInputo �
ap alternatecontent_jsr setToplevelvariablet �
au=
</script>        

<script language="JavaScript" type="text/javascript">
<!--
// Version check for the Flash Player that has the ability to start Player Product Install (6.0r65)
var hasProductInstall = DetectFlashVer(6, 0, 65);

// Version check based upon the values defined in globals
var hasRequestedVersion = DetectFlashVer(requiredMajorVersion, requiredMinorVersion, requiredRevision);


// Check to see if a player with Flash Product Install is available and the version does not meet the requirements for playback
if ( hasProductInstall && !hasRequestedVersion ) {
	// MMdoctitle is the stored document.title value used by the installation process to close the window that started the process
	// This is necessary in order to close browser windows that are still utilizing the older version of the player after installation has completed
	// DO NOT MODIFY THE FOLLOWING FOUR LINES
	// Location visited after installation is complete if installation is required
	var MMPlayerType = (isIE == true) ? "ActiveX" : "PlugIn";
	var MMredirectURL = window.location;
    document.title = document.title.slice(0, 47) + " - Flash Player Installation";
    var MMdoctitle = document.title;

	AC_FL_RunContent(
		"src", "playerProductInstall",
		"FlashVars", "MMredirectURL="+MMredirectURL+'&MMplayerType='+MMPlayerType+'&MMdoctitle='+MMdoctitle+"",
		"width", "100%",
		"height", "100%",
		"align", "middle",
		"id", "MultiServerMonitor",
		"quality", "high",
		"bgcolor", "#869ca7",
		"name", "MultiServerMonitor",
		"allowScriptAccess","sameDomain",
		"type", "application/x-shockwave-flash",
		"pluginspage", "http://www.adobe.com/go/getflashplayer"
	);
} else if (hasRequestedVersion) {
	// if we've detected an acceptable version
	// embed the Flash Content SWF when all tests are passed
	AC_FL_RunContent(
			"src", "MultiServerMonitor",
			"width", "100%",
			"height", "100%",
			"align", "middle",
			"id", "MultiServerMonitor",
			"quality", "high",
			"bgcolor", "#869ca7",
			"name", "MultiServerMonitor",
			"allowScriptAccess","sameDomain",
			"type", "application/x-shockwave-flash",
			"pluginspage", "http://www.adobe.com/go/getflashplayer"
	);
  } else {  // flash is too old or we can't detect the plugin
  // var alternateContent = 'Alternate HTML content should be placed here. '
  //	+ 'This content requires the Adobe Flash Player. '
  // 	+ '<a href=http://www.adobe.com/go/getflash/>Get Flash</a>';
    document.write(alternatecontent_js);  // insert non-flash content
  }
// -->
</script>

<noscript>
  	<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
			id="MultiServerMonitor" width="100%" height="100%"
			codebase="http://fpdownload.macromedia.com/get/flashplayer/current/swflash.cab">
			<param name="movie" value="MultiServerMonitor.swf" />
			<param name="quality" value="high" />
			<param name="bgcolor" value="#869ca7" />
			<param name="allowScriptAccess" value="sameDomain" />
			<embed src="MultiServerMonitor.swf" quality="high" bgcolor="#869ca7"
				width="100%" height="100%" name="MultiServerMonitor" align="middle"
				play="true"
				loop="false"
				quality="high"
				allowScriptAccess="sameDomain"
				type="application/x-shockwave-flash"
				pluginspage="http://www.adobe.com/go/getflashplayer">
			</embed>
	</object>
</noscript>
</body>
</html>
w metaData Ljava/lang/Object;yz	 { getMetadata ()Ljava/lang/Object; this ,Lcflaunch2dmultiservermonitor2ecfm299981704; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage out Ljavax/servlet/jsp/JspWriter; value silent0  Lcoldfusion/tagext/io/SilentTag; mode0 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 include3 #Lcoldfusion/tagext/lang/IncludeTag; include4 include5 output7  Lcoldfusion/tagext/io/OutputTag; mode7 module6 $Lcoldfusion/tagext/lang/ImportedTag; mode6 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 include8 include9 abort10 !Lcoldfusion/tagext/lang/AbortTag; output11 mode11 t34 t35 t36 t37 module12 mode12 t40 t41 t42 t43 t44 t45 wddx13  Lcoldfusion/tagext/lang/WddxTag; LineNumberTable java/lang/Throwable� <clinit> 1                      "     &     *     .     C D    � D    � D     D   ; D   [ D   yz    }~ �   "     �|�   �       �      �   �     [*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )**++,� � -**/+,� � 1�   �        [�     [��    [��  �~ �    
 /  �*� 8� >L*� BN*� N-� R� T:*� X� ^� bY6� |*+� fL*	� X*h� jYlS� p� t� zY� }� W*h� jYlS� p� }� *� !� �� *� !�� �� ����� � :� �:*+� �L�� �� :� #�� � #:		� �� � :
� 
�:� ��**� ���� �*� jY�S� �Y�� �*� jY�S� p� �� ��� �� �� �**� -ö �*� )*� X*� ʸ ζ �*� X**� %� ��*� �� ܸ }��M*� �-� R� �:*� X� �� ^� � �*� �-� R� �:*� X� �� ^� � �*� �-� R� �:*� X� �� ^� � �*� �-� R� �:* � X� ^� �Y6� �+�� �*�� R�:*!� X
��Y� �YSYS��� ^� Y6� 6*+� fL+"� ��#���� � :� �:*+� �L�� �� :� &� y�� � #:�$� � :� �:�%�+'� �+**� �*� �� ��+���.� :� #�� � #:�/� � :� �:�0�*+2�6*� �-� R� �:*%� X8� �� ^� � �*� �	-� R� �:*&� X:� �� ^� � �*�?
-� R�A:*'� X� ^� � �+C� �*� �-� R� �: *.� X � ^ � �Y6!� k+E� �+**� !�*� �� �+*h� jYGS� p� �� �+I� �+*h� jYKS� p� �� �+*.� X*�N� �+P� � �+��� �.� :"� #"�� � #:# #�/� � :$� $�:% �0�%+R� �*�-� R�:&*Q� X&
�&�Y� �YSYTSYVSYTS��&� ^&� Y6'� 6*&'+� fL+X� �&�#���� � :(� (�:)*'+� �L�)&� �� :*� #*�� � #:+&+�$� � :,� ,�:-&�%�-+Z� �*�_-� R�a:.*W� X.c�f.hj**� 1�*�n�q.s�v.� ^.� � �+x� �� & 1 � �� � � �� & � �� � � �� & � �� � � �� � � �� � � ��c������X�������X��������������� ������ ���������O[�UX[��Oj�UXj�[gj�joj���������*�$'*��9�$'9�*69�9>9� �  � /  ��    ���   ��z   � ? @   ���   ���   ���   ��z   ��z   ��� 	  ��� 
  ��z   ���   ���   ���   ���   ���   ���   ���   ���   ��z   ��z   ���   ���   ��z   ��z   ���   ���   ��z   ���   ���   ���   ���    ��� !  ��z "  ��� #  ��� $  ��z %  ��� &  ��� '  ��� (  ��z )  ��z *  ��� +  ��� ,  ��z -  ��� .�  : �   A 	 A 	 A 	 A 	 A 	 A 	 ^ 	 ^ 	 ^ 	 ^ 	 A 	 A 	 w 
 w 
 w 
 w 
 s 
 s 
 �  �  �  �        A 	   �  �  �  �  �  �  �  �  �  �  �  �  �            �  �  �  �  �  � & & & & * * % % % : : 9 9 9 9 / / J J J J J J J J z z d � � � � � � H !H ! !� $� $� $� $� $�  F %F %/ %s &s &\ &� 'J � .� .� .� .� .� .� .� .� .� . . . . . .- .- .- .- .& .� .� Q� Q� Q� Q� Qh Wh Wv Xv Xv Xv X� Y� YQ W       �   #     *� 
�   �       �   �  �   `     BF� L� N߸ L� �� L� �� L�=� L�?]� L�_�Y� ���|�   �       B�         2    3