����  -� 
SourceFile %/CFIDE/administrator/entman/index.cfm cfindex2ecfm128596131  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   PROCESSSERVER Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   RETVAL   	   REMOTESERVERNAME   	    CHECKCSRFTOKEN " " 	  $ UPDATEDSUCCESSFULLY & & 	  ( HOST_NOT_FOUND * * 	  , URL . . 	  0 ONEROW 2 2 	  4 ENCODEFORHTMLSMART 6 6 	  8 REGKEY : : 	  < 
EXCEPTIONS > > 	  @ ASTATUSMESSAGES B B 	  D DELETE F F 	  H SREMOTE J J 	  L CFCATCH N N 	  P GETCSRFTOKEN R R 	  T TOKEN V V 	  X CLUSTERMANAGER Z Z 	  \ FORM ^ ^ 	  ` 	BAD_CHAR1 b b 	  d SLOCAL f f 	  h SVCNAME j j 	  l CLUSTERNAME n n 	  p 
ISSERVERUP r r 	  t TEMP v v 	  x BSTATUSEXIST z z 	  | REQUEST ~ ~ 	  � BOOL � � 	  � INETOBJ � � 	  � REFRESHCLUSTERSETTINGS � � 	  � CFEXE � � 	  � THREAD � � 	  � S1 � � 	  � _sCt0 Lcoldfusion/runtime/RWLock; coldfusion/runtime/RWLock �
 � 	 � �	  � com.macromedia.SourceModTime  R^�Z pageContext #Lcoldfusion/runtime/NeoPageContext; � �	  � getOut ()Ljavax/servlet/jsp/JspWriter; � � javax/servlet/jsp/JspContext �
 � � parent Ljavax/servlet/jsp/tagext/Tag; � �	  � LOCALE � REQUEST.LOCALE � en � checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V � �
  � java/lang/String � 
LOCALEFILE � java/lang/StringBuffer � resources/entman_ � (Ljava/lang/String;)V  �
 � � _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 � � .cfm � toString ()Ljava/lang/String; � � java/lang/Object �
 � � _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � 	ADDREMOTE � URL.ADDREMOTE �  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z � �
  � _Object (Z)Ljava/lang/Object; � �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � 
SERVERTYPE � URL.SERVERTYPE � local � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
  � remote � ACTION � 
URL.ACTION � delete start stop restart  	 set (Ljava/lang/Object;)V coldfusion/runtime/Variable
 	CSRFTOKEN FORM.CSRFTOKEN URL.CSRFTOKEN _setCurrentLineNo (I)V
  _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object;
  checkCSRFToken _autoscalarize!
 " ENTMANTABKEYNAME$ 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;&'
 ( *coldfusion/runtime/TransientVariableHolder* &(Lcoldfusion/runtime/NeoPageContext;)V ,
+- &(Ljava/lang/String;)Ljava/lang/Object;!/
 0 _Map #(Ljava/lang/Object;)Ljava/util/Map;23
 �4 action6 StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z89
 : $class$coldfusion$tagext$lang$LockTag Ljava/lang/Class; coldfusion.tagext.lang.LockTag> forName %(Ljava/lang/String;)Ljava/lang/Class;@A java/lang/ClassC
DB<=	 F _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag;HI
 J coldfusion/tagext/lang/LockTagL 
setTimeoutN
MO setGeneratedLock (Lcoldfusion/runtime/RWLock;)VQR
MS 	hasEndTag (Z)VUV coldfusion/tagext/GenericTagX
YW 
doStartTag ()I[\
M] SERVER_ cfusiona "ColdFusion 2016 Application Serverc #ColdFusion 2016 Application Server e concat &(Ljava/lang/String;)Ljava/lang/String;gh
 �i (class$coldfusion$tagext$lang$RegistryTag "coldfusion.tagext.lang.RegistryTaglk=	 n "coldfusion/tagext/lang/RegistryTagp GETALLr 	setActiont �
qu regkeyw setNamey �
qz 
cfregistry| branch~ 5HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\� _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;��
 � 	setBranch� �
q� _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z��
 � unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;�� coldfusion/runtime/NeoException�
�� t34 [Ljava/lang/String; (coldfusion.tagext.lang.RegistryException���	 � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I��
�� bind '(Ljava/lang/String;Ljava/lang/Object;)V��
+� unbind� 
+� 	__HTSWT_0 Lcoldfusion/util/FastHashtable;��	 � __caseValue 4(Lcoldfusion/util/FastHashtable;Ljava/lang/Object;)I��
 � &class$coldfusion$tagext$lang$ObjectTag  coldfusion.tagext.lang.ObjectTag��=	 �  coldfusion/tagext/lang/ObjectTag� java.lang.Boolean� setClass� �
�� CREATE�
�u java� setType� �
�� bool�
�z _factor7 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object;��
 � getClusterName� _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;��
 � false� removeCluster� TRUE� D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; ��
 � true� _factor5��
 � setServerName� deleteServer� isDefinedCanonicalVariable  (Lcoldfusion/runtime/Variable;)Z��
 � 'class$coldfusion$tagext$lang$ExecuteTag !coldfusion.tagext.lang.ExecuteTag��=	 � !coldfusion/tagext/lang/ExecuteTag� 	cfexecute� 	arguments� 	-remove "� "� \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;��
 � setArguments�
�� name� 
COLDFUSION� ROOTDIR� /bin/coldfusionsvc.exe�
�z
�] doAfterBody\
Y doEndTag\ #javax/servlet/jsp/tagext/TagSupport
 doCatch (Ljava/lang/Throwable;)V

Y 	doFinally 
Y _factor6�
  refreshClusterSettings _factor8�
  _factor9�
  _ HOST HTTPS  (Ljava/lang/Object;D)D �"
 # #class$coldfusion$tagext$net$HttpTag coldfusion.tagext.net.HttpTag&%=	 ( coldfusion/tagext/net/HttpTag* Get, 	setMethod. �
+/ onerow1 	setResult3 �
+4 cfhttp6 url8 https://: :< 	ADMINPORT> /AdminServlet?server=@ &servicename=B &command=startServer&port=D HTTPPORTF 
&username=H getRemoteServerCredentialsJ adminusernameL _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;NO
 P 
&password=R adminpasswordT setUrlV �
+W 	_factor10Y�
 Z http://\ 	_factor11^�
 _ 	_factor13a�
 b FILECONTENTd Len (Ljava/lang/Object;)Ifg
 h (I)Ljava/lang/Object; �j
 �k %class$coldfusion$tagext$lang$ThrowTag coldfusion.tagext.lang.ThrowTagnm=	 p coldfusion/tagext/lang/ThrowTagr cfthrowt messagev XmlParse 0(Ljava/lang/String;)Lcoldfusion/xml/XmlNodeList;xy
 z SMERRMESSAGE| XMLTEXT~ 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; ��
 � 
setMessage� �
s� 	_factor12��
 � _factor0��
 � net.exe�
�O cfexe� setVariable� �
��  start "� 	_factor14��
 � startServer� 
isServerup� 	_factor15��
 � 	_factor16��
 � get� &command=stopServer&port=� 	_factor17��
 � 	_factor18��
 � 	_factor20��
 � 	_factor19��
 � _factor1��
 � sc.exe�  query "� 	_factor22��
 � RUNNING� 
FindNoCase '(Ljava/lang/String;Ljava/lang/String;)I��
 � (D)Z ��
 ��  stop "� 	_factor21��
 � 
stopServer� 	_factor23��
 � 	_factor24��
 � &command=restartServer&port=� 	_factor25��
 � 	_factor26��
 � 	_factor28��
 � 	_factor27��
 � _factor2��
 � java.lang.Thread� CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;��
 � currentThread� sleep� 4000� restartServer� $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag��=	 � coldfusion/tagext/io/OutputTag�
�] write� � java/io/Writer�
��
� coldfusion/tagext/QueryLoop 


� 

				   	 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V
 	 _factor3�
  

                    	_factor29�
  _factor4�
  
                 coldfusion/runtime/SwitchTable
 	 addStringCase 5(Ljava/lang/String;I)Lcoldfusion/runtime/SwitchTable;
 RESTART STOP! START# 	_factor30%�
 & 

        (
M
M
M 	_factor31-�
 . t36 any10�	 3 %class$coldfusion$tagext$lang$ParamTag coldfusion.tagext.lang.ParamTag65=	 8 coldfusion/tagext/lang/ParamTag: 	form.host<
;z string?
;� form.remoteservernameB [^[:alnum:]\\._-]D REFindNoCase 9(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;FG
 H 
REMOTEPORTJ 	StructNew !()Lcoldfusion/util/FastHashtable;LM
 N 
			P (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTagSR=	 U "coldfusion/tagext/lang/ImportedTagW l10nY 
../cftags/[ admin] :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Vy_
X` &coldfusion/runtime/AttributeCollectionb idd 	bad_char1f varh ([Ljava/lang/Object;)V j
ck setAttributecollection (Ljava/util/Map;)Vmn  coldfusion/tagext/lang/ModuleTagp
qo
q] 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;tu
 v �
				Your remote server contains invalid characters. None of the form fields can be zero length and Server name cannot cannot be punctuation or other non-alphanumeric characters.
			x
q _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;{|
 }
q
q 
		� MESSAGE� E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V ��
 � DETAIL� invalid char in name� FORM.ADDREMOTE� java.net.InetAddress� 	getByName� t37��	 � 	
							� host_not_found� T
								Hostname or IP address provided for the remote server is invalid.
							� 
						� Invalid hostname or IP address.� StructIsEmpty (Ljava/util/Map;)Z��
 � 	_factor32��
 � 
FORM.HTTPS� addRemoteServer� JVMROUTE� ADMINUSERNAME� ADMINPASSWORD� LBFACTOR� 	_factor33��
 � t38��	 � 	_factor34��
 � 	_factor35��
 � entman_pagename_instanceManager� pagename� Instance Manager� 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTag��=	 � !coldfusion/tagext/lang/IncludeTag� ../header.cfm� setTemplate� �
�� ../include/margintop.cfm� 	_factor36��
 � 
<p class="errorText">
� entman_error� -
        There was a problem<br />
        � "
                <b>Message</b>: � encodeForHTMLSmart� <br />
        <b>Detail</b>: � 
� 
</p>
� 
SERVERNAME� FORM.SERVERNAME� server_updatedSuccessfully� updatedSuccessfully� !
                        server � EncodeForHTML�h
 � n updated successfully.For these changes to take effect,you must restart the server instance.
                � ArrayNew (I)Ljava/util/List;��
 � _Array 2(Ljava/lang/Object;)Lcoldfusion/runtime/FastArray;��
 �� setArray !(Lcoldfusion/runtime/FastArray;)V��
� _List $(Ljava/lang/Object;)Ljava/util/List; 
 � ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z
  


 
	
 ../include/status.cfm 
<h2 class="pageHeader"> instance_manager (Enterprise Manager &gt; Instance Manager </h2>
<br>
<p>
 entman_welc �
        ColdFusion Enterprise lets you create and manage new server instances. These can be created and run locally (on this machine)
        or they can be remote servers that you can register with clusters.
 �
        <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                        <td>
                                <form name="addloc" action="addserver.cfm?servertype=addlocal&csrftoken= getCSRFToken :" method="post">
                                         slocal  Add New Instance" F
                                        <input type="submit" title="$ " name="slocal" value="&
" class="buttn">
                                </form>
                        </td>
                        <td>&nbsp;</td>
                        <td>
                                <form name="addloc" action="addserver.cfm?servertype=addremote&csrftoken=( sremote* Register Remote Instance, " name="sremote" value=". �" class="buttn">
                                </form>
                        </td>
                </tr>
                <tr>
                        <td height="20" colspan="2">&nbsp;</td>
                </tr>
        </table>
0 



2 serverlist.cfm4 ../include/marginbottom.cfm6 ../footer.cfm8 metaData Ljava/lang/Object;:;	 < this Lcfindex2ecfm128596131; __factorParent out Ljavax/servlet/jsp/JspWriter; value LocalVariableTable LineNumberTable Code 	execute12 #Lcoldfusion/tagext/lang/ExecuteTag; mode12 I t6 t7 Ljava/lang/Throwable; t8 t9 java/lang/ThrowableP 	execute11 mode11 http13 Lcoldfusion/tagext/net/HttpTag; http14 throw15 !Lcoldfusion/tagext/lang/ThrowTag; runPage ()Ljava/lang/Object; module33 $Lcoldfusion/tagext/lang/ImportedTag; mode33 output32  Lcoldfusion/tagext/io/OutputTag; mode32 t10 t11 t12 t13 t14 t15 t16 t17 output35 mode35 module34 mode34 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 output37 mode37 	include36 #Lcoldfusion/tagext/lang/IncludeTag; t35 t39 module38 mode38 t42 t43 t44 t45 t46 t47 module39 mode39 t50 t51 t52 t53 t54 t55 output42 mode42 module40 mode40 t60 t61 t62 t63 t64 t65 module41 mode41 t68 t69 t70 t71 t72 t73 t74 t75 t76 t77 	include43 	include44 	include45 getMetadata varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; t4 ,Lcoldfusion/runtime/TransientVariableHolder; 	registry1 $Lcoldfusion/tagext/lang/RegistryTag; #Lcoldfusion/runtime/AbortException; Ljava/lang/Exception; __cfcatchThrowable0 !coldfusion/runtime/AbortException� java/lang/Exception� lock20  Lcoldfusion/tagext/lang/LockTag; mode20 http4 object27 "Lcoldfusion/tagext/lang/ObjectTag; 	execute28 mode28 http5 t5 __cfcatchThrowable2 output26 mode26 module25 mode25 t18 t19 t20 t21 throw6 __cfcatchThrowable3 param21 !Lcoldfusion/tagext/lang/ParamTag; param22 output24 mode24 module23 mode23 __cfcatchThrowable1 module29 mode29 	include30 	include31 execute7 mode7 execute3 mode3 object2 http8 http9 throw10 <clinit> 	execute16 mode16 	execute17 mode17 	execute18 mode18 output19 mode19 1     2                 "     &     *     .     2     6     :     >     B     F     J     N     R     V     Z     ^     b     f     j     n     r     v     z     ~     �     �     �     �     �     �     � �   <=   k=   ��   ��   �=   �=   %=   m=   �=   0�   5=   R=   ��   ��   �=   :;   * �� F   	    v*� !� �Y*/� �Y`S� ʸ з �� �*/� �YS� ʸ ж Զ ܶ*/� �Y!S� ��$�� *+,��� �� *+,��� �*�   D   *    v>?     v@ �    vAB    vC; E   Z   c  c  c  c  c  c $ c $ c $ c $ c  c  c  c  c   c   c @ d @ d P d P d h g @ d �� F  �  
   �*��+�K��:*t��� �������� �YǷ �**� m�#� ж �� Զ ������Z�Y6� �����	� :� #�� � #:�� � :� �:	��	*�  b � �Q � � �Q b � �Q � � �Q � � �Q � � �Q D   f 
   �>?     �@ �    �AB    �C;    �GH    �IJ    �K;    �LM    �NM    �O; 	E   >   t  t & t & t 8 t 8 t > t > t > t > t L t L t 4 t 4 t   t �� F  �  
   �*��+�K��:*r��� �������� �Y�� �**� m�#� ж �� Զ ������Z�Y6� �����	� :� #�� � #:�� � :� �:	��	*�  b � �Q � � �Q b � �Q � � �Q � � �Q � � �Q D   f 
   �>?     �@ �    �AB    �C;    �RH    �SJ    �K;    �LM    �NM    �O; 	E   >   r  r & r & r 8 r 8 r > r > r > r > r L r L r 4 r 4 r   r �� F  o     �**� =�� l*+,��� �*s��**� ��#� и�ř *+,��� �� 0*v�***� ��� �Y*/� �Y`S� �S��W� 0*y�***� ��� �Y*/� �Y`S� �S��W*�   D   *    �>?     �@ �    �AB    �C; E   � "  q  q  q  q   q   q  s  s   s   s   s   s  s  s K v K v \ v \ v J v J v J v J v D u  s { y { y � y � y z y z y z y z y t x   q �� F   �     W**� 1��� � �Y� � !W*/� �Y�S� ��� ��~�� � � *+,��� �� *+,��� �*�   D   *    W>?     W@ �    WAB    WC; E   b   b  b  b  b  b  b  b  b   b   b   b   b  b  b & b & b  b  b  b  b   b   b I p   b �� F  �    @*�)+�K�+:* ��-�02�579� �Y;� �*/� �YS� ʸ ж �=� �*/� �Y?S� ʸ ж �A� �*/� �Y`S� ʸ ж �C� �**� m�#� ж �Զ �*/� �YGS� ʸ ж �I� �* ��***� �K� �Y**� !�#S��M�Q� ж �S� �* ��***� �K� �Y**� !�#S��U�Q� ж Զ ����X�Z��� �*�   D   4   @>?    @@ �   @AB   @C;   @TU E   A  �  �   �   � 2 � 2 � 8 � 8 � 8 � 8 � N � N � T � T � T � T � j � j � p � p � p � p � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � . � . �   � �� F  �    @*�)+�K�+:* ��-�02�579� �Y]� �*/� �YS� ʸ ж �=� �*/� �Y?S� ʸ ж �A� �*/� �Y`S� ʸ ж �C� �**� m�#� ж �Զ �*/� �YGS� ʸ ж �I� �* ��***� �K� �Y**� !�#S��M�Q� ж �S� �* ��***� �K� �Y**� !�#S��U�Q� ж Զ ����X�Z��� �*�   D   4   @>?    @@ �   @AB   @C;   @VU E   A  �  �   �   � 2 � 2 � 8 � 8 � 8 � 8 � N � N � T � T � T � T � j � j � p � p � p � p � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � . � . �   � �� F   �     q*�q+�K�s:* ��uw** ��***� 5� �YeS�ո ж{�5� �Y}SYS��� ������Z��� �*�   D   4    q>?     q@ �    qAB    qC;    qWX E   .  ' � ' � ' � ' � & � & �  �  �  �  �   � �� F   	    v*� !� �Y*/� �Y`S� ʸ з �� �*/� �YS� ʸ ж Զ ܶ*/� �Y!S� ��$�� *+,��� �� *+,��� �*�   D   *    v>?     v@ �    vAB    vC; E   Z   �  �  �  �  �  � $ � $ � $ � $ �  �  �  �  �   �   � @ � @ � P � P � h � @ � � F       _**� 1��� � �Y� � !W*/� �Y�S� ��� ��~�� � � *+,��� �� *+,�� �*,�
*�   D   *    _>?     _@ �    _AB    _C; E   b   �  �  �  �  �  �  �  �   �   �   �   �  �  � & � & �  �  �  �  �   �   � I �   � YZ F     Q  	�*� �� �L*� �N*-+��� �**� A�� �Y� � W* ��***� A�#�5���� � ��+ֶ�*�V!-�K�X:* ��Z\^�a�cY� �YeSY�S�l�r�Z�sY6�.*+�wL+ڶ�*�� �K��:* ���Z��Y6� �+ܶ�+* ��**� 9��*� �Y**� A� �Y�S��S�)� ж�+��+* ��**� 9��*� �Y**� A� �Y�S��S�)� ж�*+)�
����y�� :� )� M� ��� � #:		�� � :
� 
�:��*+�
�z���� � :� �:*+�~L��	� :� #�� � #:�� � :� �:���+����**� a�� ��*��#-�K��:*��Z��Y6�V*+�
*�V"�K�X:*�Z\^�a�cY� �YeSY�SYiSY�S�l�r�Z�sY6� ^*+�wL+��+*�*_� �Y�S� ʸ и��+���z��̨ � :� �:*+�~L��	� :� &� ��� � #:�� � :� �:���*+�
*� E*	�*������*� }׶*�**� E�#�**� )�#�W*+)�
������� :� #�� � #:�� � :� �:��*+	�
*+�
*��%-�K��: *� �Z ��Y6!� Q*+�
*��$ �K��:"*�"��"�Z"��� :#� E#�*+�
 ����� �� :$� #$�� � #:% %�� � :&� &�:' ��'+��*�V&-�K�X:(*�(Z\^�a(�cY� �YeSYS�l�r(�Z(�sY6)� 6*()+�wL+��(�z���� � :*� *�:+*)+�~L�+(�	� :,� #,�� � #:-(-�� � :.� .�:/(���/+��*�V'-�K�X:0*�0Z\^�a0�cY� �YeSYS�l�r0�Z0�sY61� 6*01+�wL+��0�z���� � :2� 2�:3*1+�~L�30�	� :4� #4�� � #:505�� � :6� 6�:70���7+��*��*-�K��:8* �8�Z8��Y69��+��+*$�**� U�*� �Y*� �Y%S� �S�)� ж�+��*�V(8�K�X::*%�:Z\^�a:�cY� �YeSY!SYiSY!S�l�r:�Z:�sY6;� 6*:;+�wL+#��:�z���� � :<� <�:=*;+�~L�=:�	� :>� &��>�� � #:?:?�� � :@� @�:A:���A+%��+**� i�#� ж�+'��+**� i�#� ж�+)��+*+�**� U�*� �Y*� �Y%S� �S�)� ж�+��*�V)8�K�X:B*,�BZ\^�aB�cY� �YeSY+SYiSY+S�l�rB�ZB�sY6C� 6*BC+�wL+-��B�z���� � :D� D�:E*C+�~L�EB�	� :F� &� �F�� � #:GBG�� � :H� H�:IB���I+%��+**� M�#� ж�+/��+**� M�#� ж�+1��8����~8�� :J� #J�� � #:K8K�� � :L� L�:M8��M*+3�
*��+-�K��:N*9�N5��N�ZN��� �*��,-�K��:O*;�O7��O�ZO��� �*��--�K��:P*<�P9��P�ZP��� �� S �{�Q���Q �{�Q���Q���Q���Q �{�Q���Q���Q �{�Q���Q���Q �{�Q���Q���Q���Q���Q���Q���Q�(Q"%(Q�7Q"%7Q(47Q7<7Q@�Q"��Q���Q@�Q"��Q���Q���Q���QEsQKgsQmpsQE�QKg�Qmp�Qs�Q���Q�QQ�+7Q147Q�+FQ14FQ7CFQFKFQ���Q���Q���Q���Q��
Q��
Q�
Q

Q�	Q		Q�,8Q258Q�,GQ25GQ8DGQGLGQ%ADQDIDQgsQmpsQg�Qmp�Qs�Q���Q>,�Q2g�Qm��Q���Q>,�Q2g�Qm��Q���Q���Q���Q D  , Q  	�>?    	�AB   	�C;   	� � �   	�[\   	�]J   	�^_   	�`J   	�N;   	�OM 	  	�aM 
  	�b;   	�cM   	�d;   	�e;   	�fM   	�gM   	�h;   	�i_   	�jJ   	�k\   	�lJ   	�mM   	�n;   	�o;   	�pM   	�qM   	�r;   	�s;   	�tM   	�uM   	�v;   	�w_    	�xJ !  	�yz "  	�{; #  	�0; $  	��M %  	��M &  	�|; '  	�}\ (  	�~J )  	�M *  	��; +  	��; ,  	��M -  	��M .  	��; /  	��\ 0  	��J 1  	��M 2  	��; 3  	��; 4  	��M 5  	��M 6  	��; 7  	��_ 8  	��J 9  	��\ :  	��J ;  	��M <  	��; =  	��; >  	��M ?  	��M @  	��; A  	��\ B  	��J C  	��M D  	��; E  	��; F  	��M G  	��M H  	��; I  	��; J  	��M K  	��M L  	��; M  	��z N  	��z O  	��z PE  � �  �  �  �  �  �  �  �  � 4 � 4 � 4 � 4 � 3 � 3 � 3 � 3 � 3 � 3 � 3 � 3 �  �  � � � � � � � � �  �  � � � � � � � � � � �+ �+ �= �= �+ �+ �+ �+ �# � � � T ��������������S\	\	[	[	[	[	P	j
j
j
j
f
wwww��wwwP$  �..������^X$X$j$j$X$X$X$X$P$�%�%�%�%�%`&`&`&`&_&v&v&v&v&u&�+�+�+�+�+�+�+�+�+�,�,
,
,�,�-�-�-�-�-�-�-�-�-�-" 	&9	&9	9	T;	T;	<;	�<	�<	j<    �Z F   "     �=�   D       >?      F  �    �*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )**++,� � -**/+,� � 1**3+,� � 5**7+,� � 9**;+,� � =**?+,� � A**C+,� � E**G+,� � I**K+,� � M**O+,� � Q**S+,� � U**W+,� � Y**[+,� � ]**_+,� � a**c+,� � e**g+,� � i**k+,� � m**o+,� � q**s+,� � u**w+,� � y**{+,� � }**+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � ��   D       �>?    ���   ���  %� F      ~*/� �Y`S� �b� ��� *� md�� #*� mf*/� �Y`S� ʸ жj��+Y*� ��.:*�o+�K�q:*"�s�vx�{}�**� m�#� жj�����Z��� :� S�� M� S:�:��:		�����                  O	��� �� � :
� 
�:�����*/� �Y�S� ʸ��   a             ,   ;   J*+,�� �� 8*+,��� �� )*+,��� �� *+,�� �*,�
� *�  U � �� � � �� U � �� � � �� U � �Q � � �Q � � �Q � � �Q D   z   ~>?    ~@ �   ~AB   ~C;   ~��   ~��   ~K;   ~L�   ~N�   ~�M 	  ~aM 
  ~b; E   � /                       ,  ,  /  /  /  /  ,  ,  ,  ,  (  (  (     k " k " s " s " � " � " � " � " � " � " � " � " U " H !	 *	 *	 *	 *8 +G DV ae  *    F   #     *� 
�   D       >?   -� F  j     �*�G+�K�M:*���P� ��T�Z�^Y6� '*,�'� :� E�*,)�
�����*� :� #�� � #:�+� � :	� 	�:
�,�
*�  + D rQ J f rQ l o rQ + D �Q J f �Q l o �Q r ~ �Q � � �Q D   p    �>?     �@ �    �AB    �C;    ���    ��J    �K;    �L;    �NM    �OM 	   �a; 
E            Y� F  �    <*�)+�K�+:*I�-�02�579� �Y;� �*/� �YS� ʸ ж �=� �*/� �Y?S� ʸ ж �A� �*/� �Y`S� ʸ ж �C� �**� m�#� ж �E� �*/� �YGS� ʸ ж �I� �*J�***� �K� �Y**� !�#S��M�Q� ж �S� �*J�***� �K� �Y**� !�#S��U�Q� ж Զ ����X�Z��� �*�   D   4   <>?    <@ �   <AB   <C;   <�U E   A  I  I  J  J 0 J 0 J 6 J 6 J 6 J 6 J L J L J R J R J R J R J h J h J n J n J n J n J � J � J � J � J � J � J � J � J � J � J � J � J � J � J � J � J � J � J � J � J � J � J � J � J � J � J � J � J � J � J J J � J � J J J � J � J � J � J , J , J   I �� F      �**� 1� � � �Y� � "W*/� �Y�S� �� ��~�� � �F*��+�K��:* Զ�������������Z��� �*� q* ֶ***� ]��� �Y*/� �Y`S� �S�̶*� Iζ**� q�#
� ��� [* ڶ***� ]��� �Y**� q�#SY*/� �Y`S� �SY**� �� �Y�S��S��W*� I׶* ݶ***� ��� �Y*/� �Y`S� �S��W* ޶***� ��� ۶�W**� =�� �*��+�K��:* ���� �Y� �**� m�#� ж �� Զ �������*`� �Y�SY�S� ʸ ���j��� �Z�Y6� �����	� :� #�� � #:�� � :	� 	�:
��
**� I�#� � /*� * �**� ��*� �Y**� q�#S�)�*� �%Q"%Q�4Q"4Q%14Q494Q D   p   �>?    �@ �   �AB   �C;   ���   ��H   ��J   �L;   �NM   �OM 	  �a; 
E  � w  �  �  �  �  �  �  �  �   �   �   �   �  �  � ' � ' �  �  �  �  �   �   � T � T � \ � \ � d � d � l � l � < � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �
 �
 � � � � � � �% �% �% �% �! � � �3 �3 �D �D �2 �2 �2 �a �a �` �` �` � � �u �u �u �u �t �t �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � �t �E �E �^ �^ �p �p �^ �^ �^ �^ �S �S �E �   � ^� F  �    <*�)+�K�+:*L�-�02�579� �Y]� �*/� �YS� ʸ ж �=� �*/� �Y?S� ʸ ж �A� �*/� �Y`S� ʸ ж �C� �**� m�#� ж �E� �*/� �YGS� ʸ ж �I� �*M�***� �K� �Y**� !�#S��M�Q� ж �S� �*M�***� �K� �Y**� !�#S��U�Q� ж Զ ����X�Z��� �*�   D   4   <>?    <@ �   <AB   <C;   <�U E   A  L  L  M  M 0 M 0 M 6 M 6 M 6 M 6 M L M L M R M R M R M R M h M h M n M n M n M n M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M M M � M � M M M � M � M � M � M , M , M   L �� F  �    �**� a��� � �Y� � W*_� �Y�S� ʸ � @*_� �YS*_� �YS� ʸ ��j*_� �YS� ʸ жj� �*� A* ���O��+Y*� ��.:*� �* ö*����*� y* Ķ***� ���� �Y*_� �YS� �S�̶�Χ�:�:��:�����     �           O��*��+�K��:* ƶ�Z��Y6	� �*,��
*�V�K�X:
* Ƕ
Z\^�a
�cY� �YeSY�SYiSY�S�l�r
�Z
�sY6� 6*
,�wM,���
�z���� � :� �:*,�~M�
�	� :� )� q� ��� � #:
�� � :� �:
���*,��
������ :� &� w�� � #:�� � :� �:��*,��
**� A� �Y�S**� -�#��**� A� �Y�S���� �� � :� �:���* Ѷ***� A�#�5����*+,��� �**� a!�� � �* �***� ��
� �Y*_� �YS� �SY*_� �YS� �SY*_� �Y�S� �SY*_� �YKS� �SY*_� �YGS� �SY*_� �Y?S� �SY*_� �Y�S� �SY*_� �Y�S� �SY*_� �Y�S� �SY	*_� �Y!S� �S��W� �* �***� ��
� �Y*_� �YS� �SY*_� �YS� �SY*_� �Y�S� �SY*_� �YKS� �SY*_� �YGS� �SY*_� �Y?S� �SY*_� �Y�S� �SY*_� �Y�S� �SY*_� �Y�S� �SY	�S��W*� ���Q���Q���Q���Q���Q���Q���Q� �Q)�7Q�+7Q147Q)�FQ�+FQ14FQ7CFQFKFQ � � �� � � �� � ��Q ���Q�+�Q1��Q���Q D   �   �>?    �@ �   �AB   �C;   ���   ���   �K�   ��M   ��_   ��J 	  ��\ 
  ��J   �cM   �d;   �e;   �fM   �gM   �h;   ��;   ��M   ��M   ��;   �mM   �n; E  n �  �  �  �  �  �  �  �  �   �   �   �   �  �  �  �  �   �   � 9 � 9 � 9 � 9 � K � K � 9 � 9 � 9 � 9 � Q � Q � Q � Q � 9 � 9 � 9 � 9 � - � - �   � u � u � u � u � j � j � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �t �t �� �� �< � �n �n �n �n �_ �_ �� �� �� �� �y �y � { �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � �  �  �3 �3 �F �F �Y �Y �m �m �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �  �  � � �& �& �9 �9 �M �M �a �a �u �u �� �� �� �� �� �� �� �� �� � �� F   �     o*�q+�K�s:*P�uw**P�***� 5� �YeS�ո ж{�5� �Y}SYS��� ������Z��� �*�   D   4    o>?     o@ �    oAB    oC;    o�X E   .  % P % P % P % P $ P $ P  P  P  P  P   P �� F  m     ��+Y*� ��.:*+,��� :� b�� \� b:�:��:�����      /           O��*� A**� Q�#�� �� � :	� 	�:
���
*�    &�   # &�   +�   # +�   tQ   # tQ & q tQ t y tQ D   p    �>?     �@ �    �AB    �C;    ���    ��;    �K�    �L�    ��M    �OM 	   �a; 
E     ] � ] � ] � ] � Y � Y �   � � F  m     �*+,��� �*8�***� ��� �Y*/� �Y`S� �S��W*9�***� ��� ۶�W**� =�� *+,�� �**� I�#� � .*� *?�**� ��*� �Y**� q�#S�)�*�   D   *    �>?     �@ �    �AB    �C; E   � !  8  8 $ 8 $ 8  8  8  8 @ 9 @ 9 ? 9 ? 9 ? 9   0 T ; T ; T ; T ; S ; S ; S ; j > j > � ? � ? � ? � ? � ? � ? � ? � ? x ? x ? j > a� F   	    v*� !� �Y*/� �Y`S� ʸ з �� �*/� �YS� ʸ ж Զ ܶ*/� �Y!S� ��$�� *+,�[� �� *+,�`� �*�   D   *    v>?     v@ �    vAB    vC; E   Z   G  G  G  G  G  G $ G $ G $ G $ G  G  G  G  G   G   G @ H @ H P H P H h K @ H �� F  �    �*�9+�K�;:* ��=�>@�A�Z��� �*�9+�K�;:* ��C�>@�A�Z��� �*� �* ��E*_� �YS� ʸ иI�**� ��#Y� � -W* ��*_� �YS� ʸi�l�$�~�� �Y� � .W* ��*_� �YKS� ʸi�l�$�~�� �Y� � .W* ��*_� �YS� ʸi�l�$�~�� � ��*� A* ���O�*��+�K��:* ���Z��Y6� �*,Q�
*�V�K�X:* ��Z\^�a�cY� �YeSYgSYiSYgS�l�r�Z�sY6	� 6*	,�wM,y���z���� � :
� 
�:*	,�~M��	� :� &� k�� � #:�� � :� �:���*,��
������ :� #�� � #:�� � :� �:��*,��
**� A� �Y�S**� e�#��**� A� �Y�S���� *+,��� �*� ���Q���Q�"Q"Q�1Q1Q".1Q161QbjQ^jQdgjQbyQ^yQdgyQjvyQy~yQ D   �   �>?    �@ �   �AB   �C;   ���   ���   ��_   ��J   ��\   ��J 	  �aM 
  �b;   �c;   �dM   �eM   �f;   �g;   �hM   ��M   ��; E  r \  �  �   �   �   � N � N � V � V � 6 � w � w � z � z � z � z � w � w � w � w � l � l � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �" �" � � � � � � � � �@ �@ �@ �@ �5 �5 �� �� �� �� �u �F �� �� �� �� �� �� �� �� �� �� �� �� �� � � � �� F  �    �**� ����� �*� �Y�S� �Y÷ �*� �Y�S� ʸ ж �ֶ Զ ܶ �**� 1�� � �Y� � ]W**� 1��� � �Y� � FW*/� �Y�S� ��� ��~�� �Y� � !W*/� �Y�S� ��� ��~�� �Y� � �W**� 1� � � �Y� � �W*/� �Y�S� �� ��~�� �Y� � "W*/� �Y�S� �� ��~�� �Y� � "W*/� �Y�S� �� ��~�� �Y� � "W*/� �Y�S� �� ��~�� � � �*� Y
�**� a� � �Y� � W**� 1� � � � >*� Y**� a� � */� �YS� ʧ *_� �YS� ʶ*�**� %� *� �Y**� Y�#SY*� �Y%S� �S�)W�+Y*� ��.:*�**/�1�57�;� *+,�/� :� _�� Y� _:�:��:�4���   ,           O��*� A**� Q�#�� �� � :	� 	�:
���
**� 1�� � *+,��� �*�V+�K�X:* ��Z\^�a�cY� �YeSY�SYiSY�S�l�r�Z�sY6� 6*,�wM,ö��z���� � :� �:*,�~M��	� :� #�� � #:�� � :� �:���*��+�K��:* ��̶��Z��� �*��+�K��:* ��Ѷ��Z��� �*� #IU�ORU�#IZ�ORZ�#I�QOR�QU��Q���Q*FIQINIQiuQoruQi�Qor�Qu��Q���Q D   �   �>?    �@ �   �AB   �C;   ���   ��;   �K�   �L�   ��M   �OM 	  �a; 
  ��\   ��J   �dM   �e;   �f;   �gM   �hM   ��;   ��z   ��z E  � �    	  	      #  #  #  #  8  8              D  D  D  D  H  H  J  J  C  C  C  C  [  [  [  [  _  _  a  a  Z  Z  Z  Z  q  q  �  �  q  q  q  q  �  �  �  �  �  �  �  �  q  q  q  q  Z  Z  Z  Z  C  C  C  C  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �    �  �  �  �  �  �  �  �   . .      �  �  �  � E E T T E E E E  �  �  �  �  �  �  �  �  C  C m m m m i t t t t x x { { s s s s � � � � � � � � � � � � s s � � � � � � � � � � � � � � � � � � � s � � � �   � � �  C  C * * * * 3 3 ) ) ) � �� �� �� �� �� � � �� �� �� �� �� �� �� �� �� �� � � � � �� �� �� �� �� �� �� � � F   �     +**� 1�� ��� *+,��� �*+,�� �*�   D   *    +>?     +@ �    +AB    +C; E   >   -  -  -  -  -  -  -  -   -   -   -   -   -   -   - �� F  �  
   �*��+�K��:*V��� #�������� �Y�� �**� m�#� ж �� Զ ������Z�Y6� �����	� :� #�� � #:�� � :� �:	��	*�  b � �Q � � �Q b � �Q � � �Q � � �Q � � �Q D   f 
   �>?     �@ �    �AB    �C;    ��H    ��J    �K;    �LM    �NM    �O; 	E   >   V  V & V & V 8 V 8 V > V > V > V > V L V L V 4 V 4 V   V � F  � 	 
   �*��+�K��:*<���� �Y� �**� m�#� ж �� Զ �������*`� �Y�SY�S� ʸ ���j��� �Z�Y6� �����	� :� #�� � #:�� � :� �:	��	*�  y � �Q � � �Q y � �Q � � �Q � � �Q � � �Q D   f 
   �>?     �@ �    �AB    �C;    ��H    ��J    �K;    �LM    �NM    �O; 	E   N    <   < & < & < & < & < 4 < 4 <  <  < L < L < L < L < f < f < L < L <   < �� F       v**� =�� *+,��� �� ]*X�***� ��� �Y*/� �Y`S� �S��W*Z�**� u��*� �Y*/� �Y`S� �S�)W*�   D   *    v>?     v@ �    vAB    vC; E   b   U  U  U  U   U   U ! X ! X 2 X 2 X   X   X   X   X M Z M Z _ Z _ Z M Z M Z M Z M Y  W   U �� F   �     F*��+�K��:*/��������������Z��� �*�   D   4    F>?     F@ �    FAB    FC;    F�� E   & 	  /  /  /  / & / & / . / . /   / �� F   �     W**� 1��� � �Y� � !W*/� �Y�S� ��� ��~�� � � *+,��� �� *+,��� �*�   D   *    W>?     W@ �    WAB    WC; E   b   E  E  E  E  E  E  E  E   E   E   E   E  E  E & E & E  E  E  E  E   E   E I S   E �� F  �    =*�)+�K�+:*e���02�579� �Y;� �*/� �YS� ʸ ж �=� �*/� �Y?S� ʸ ж �A� �*/� �Y`S� ʸ ж �C� �**� m�#� ж ��� �*/� �YGS� ʸ ж �I� �*f�***� �K� �Y**� !�#S��M�Q� ж �S� �*f�***� �K� �Y**� !�#S��U�Q� ж Զ ����X�Z��� �*�   D   4   =>?    =@ �   =AB   =C;   =�U E   A  e  e  f  f 1 f 1 f 7 f 7 f 7 f 7 f M f M f S f S f S f S f i f i f o f o f o f o f � f � f � f � f � f � f � f � f � f � f � f � f � f � f � f � f � f � f � f � f � f � f � f � f � f � f � f � f � f � f	 f	 f � f � f f f � f � f � f � f - f - f   e �� F  �    =*�)	+�K�+:*h���02�579� �Y]� �*/� �YS� ʸ ж �=� �*/� �Y?S� ʸ ж �A� �*/� �Y`S� ʸ ж �C� �**� m�#� ж ��� �*/� �YGS� ʸ ж �I� �*i�***� �K� �Y**� !�#S��M�Q� ж �S� �*i�***� �K� �Y**� !�#S��U�Q� ж Զ ����X�Z��� �*�   D   4   =>?    =@ �   =AB   =C;   =�U E   A  h  h  i  i 1 i 1 i 7 i 7 i 7 i 7 i M i M i S i S i S i S i i i i i o i o i o i o i � i � i � i � i � i � i � i � i � i � i � i � i � i � i � i � i � i � i � i � i � i � i � i � i � i � i � i � i � i � i	 i	 i � i � i i i � i � i � i � i - i - i   h �� F   �     o*�q
+�K�s:*m�uw**m�***� 5� �YeS�ո ж{�5� �Y}SYS��� ������Z��� �*�   D   4    o>?     o@ �    oAB    oC;    o�X E   .  % m % m % m % m $ m $ m  m  m  m  m   m �� F   �     A*+,�c� �*O�**� 5� �YeS�ոi�l�$�� *+,��� �*�   D   *    A>?     A@ �    AAB    AC; E      O  O  O  O * O * O  O �� F   �     A*+,��� �*l�**� 5� �YeS�ոi�l�$�� *+,��� �*�   D   *    A>?     A@ �    AAB    AC; E      l  l  l  l * l * l  l � F   J     *+,�� �*�   D   *    >?     @ �    AB    C;  �� F  y     �*� q*1�***� ]��� �Y*/� �Y`S� �S�̶*� Iζ**� q�#
� ��� Z*5�***� ]��� �Y**� q�#SY*/� �Y`S� �SY**� �� �Y�S��S��W*� I׶*�   D   *    �>?     �@ �    �AB    �C; E   � #  1  1  1  1 
 1 
 1 
 1 
 1   1 7 2 7 2 7 2 7 2 3 2 = 3 = 3 E 3 E 3 W 5 W 5 h 5 h 5 s 5 s 5 � 5 � 5 V 5 V 5 V 5 � 6 � 6 � 6 � 6 � 6 = 3 �� F   �     B*+,��� �* ��**� 5� �YeS�ոi�l�$�� *+,��� �*�   D   *    B>?     B@ �    BAB    BC; E      �  �  �  � + � + �  � �  F   �     ̻ �Y� �� �?�E�Gm�E�o� �Y�S����E���E��'�E�)o�E�q��E���Y�G� �"�$���� �Y2S�47�E�9T�E�V� �Y2S��� �Y2S��ƸE�ȻcY� ۷l�=�   D       �>?   � F  7    **� =���*��+�K��:* ���� �������� �Y�� �**� m�#� ж �� Զ ������Z�Y6� �����	� :� #�� � #:�� � :� �:	��	* ���**� ��#� и�ř �*��+�K��:
* ��
�� 
��
���
��� �YǷ �**� m�#� ж �� Զ �����
�Z
�Y6� 
����
�	� :� #�� � #:
�� � :� �:
��� 1* ��***� ��� �Y*/� �Y`S� �S��W*� �* ��*���* ��** ��***� ���� ۶��� �Y�S��W*��+�K��:* ���� �������� �Y�� �**� m�#� ж �� Զ ������Z�Y6� �����	� :� #�� � #:�� � :� �:��� �*� * ��***� ��� �Y*/� �Y`S� �S�̶**� �#� ��� �*��+�K��:* ���Z��Y6� ,**� �#� ж�������� :� #�� � #:�� � :� �:��*,�
*,�
*�  n � �Q � � �Q n � �Q � � �Q � � �Q � � �Q;ZfQ`cfQ;ZuQ`cuQfruQuzuQe��Q���Qe��Q���Q���Q���QAMQGJMQA\QGJ\QMY\Q\a\Q D     >?    @ �   AB   C;   �H   �J   K;   LM   NM   O; 	  �H 
  �J   c;   dM   eM   f;   �H   �J   �;   �M   �M   �;   �_   �J   o;   pM   qM   r; E  � q  �  �  �  �   �   � # � # � 2 � 2 � D � D � J � J � J � J � X � X � @ � @ �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �% �% � � � � �� �� �� �� �� �� �� �� �� � � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � �) �) �; �; �A �A �A �A �O �O �7 �7 � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � � � � �� �� �� �   �       �    �