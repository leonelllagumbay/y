����  -� 
SourceFile 4/CFIDE/administrator/cftags/resources/monitor_en.cfm cfmonitor_en2ecfm1307554811  coldfusion/runtime/CFPage  <init> ()V  
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
  � ColdFusion Administrator � write (Ljava/lang/String;)V � � java/io/Writer �
 � � $Server has been updated successfully � 'Click the button on the right to update � ALERT! � &Important notice about last submission � 8Click arrow on left to return without submitting changes � Submit Changes � 7Invalid snapshot file or snapshot file does not exist : � \
Flash remoting should be enabled to run either of Server Monitor or Multiserver Monitor.
 � %Server Monitoring &gt; Server Monitor ��
The Server Monitor is an Adobe Flash application that provides information about ColdFusion server operation. To use the Server Monitor, you must have Adobe Flash Player 9 installed.<br>
<br>
Use the buttons at the top of the Server Monitor to do the following:
&nbsp;&nbsp;&nbsp;&nbsp;<table cellpadding="0" cellspacing="0">
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Start Monitoring - Turns on all monitoring.</td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Start Profiling - Turns on monitoring of all tags, functions, and query execution times.</td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Start Memory Tracking - Turns on tracking of memory by different scopes. If Profiling is also on, tracks memory used by individual tags, functions, and queries.</td></tr>
</table>
<br>
Memory usage information displayed in the Server Monitor is estimated and may vary from actual memory usage. Use the information as an indicator rather than an absolute measure.<br>
 � D
Click the button on the right to launch the Server Monitor ...
   � Launch Server Monitor � *Server Monitoring &gt; Multiserver Monitor �H
The Multiserver Monitor is an Adobe Flash application that you can use to remotely monitor multiple ColdFusion instances. To use the Multiserver Monitor, you must have Adobe Flash Player 9 installed.<br>
<br>
Use the tabs at the top of the Multiserver Monitor to do the following:
&nbsp;&nbsp;&nbsp;&nbsp;<table cellpadding="0" cellspacing="0">
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Quick View - Displays the status of all registered servers in an icon view format.</td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Detailed View - Displays the status of all registered servers in a tabular format.</td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Add Server - Displays the registration panel for adding new servers.</td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Errors - Displays the last connection error for each registered server.</td></tr>
</table>
 � G
Click the button on the right to launch the Multiserver Monitor ...
 � Launch Multiserver Monitor � Server Manager � �
The Server Manager is an AIR application which allows management of multiple servers.
You can download this application from the <a href="http://www.adobe.com/go/cf_downloads"> ColdFusion downloads</a> page.
<br>
 � M
Click the button on the right to launch the ColdFusion Server Manager ...
 � Launch Server Manager � �
                  This content requires the Adobe Flash Player. <a href=http://www.adobe.com/go/getflash/>Get Flash
                 � Monitoring Settings � Server Monitoring &gt; Settings � Enable Monitoring � c
When checked, indicates that monitoring is enabled. 
If unchecked, it will disable monitoring.
 � Enable Profiling � a
When checked, indicates that profiling is enabled. 
If unchecked, it will disable profiling.
 � Enable Memory Tracking � m
When checked, indicates that memory tracking is enabled. 
If unchecked, it will disable memory tracking.
 � Monitoring Server Settings � Enable Monitoring Server � �
When checked, indicates that separate monitoring server is enabled. 
If unchecked, it will disable separate monitoring server.
 � Monitoring Server Port  � SThere was an error while setting up the server. Please check logs for more details. � $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag � � 4	  � coldfusion/tagext/io/OutputTag �
 � T 2
Unable to update template handler information.
 � CFCATCH � MESSAGE � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � EncodeForHTML &(Ljava/lang/String;)Ljava/lang/String; � �
  � <br />
 � DETAIL �
 � c coldfusion/tagext/QueryLoop �
 � j
 � p
 � s false � set (Ljava/lang/Object;)V � � coldfusion/runtime/Variable �
 � � coldfusion/runtime/SwitchTable �
 � 	 MS_MONITORINGSERVER_ENABLE_TIP � addStringCase 5(Ljava/lang/String;I)Lcoldfusion/runtime/SwitchTable; 
 � MS_ERROR_TMPUPD SERVERMONITOR REMOTEMONITOR LAUNCH_SMANAGER
 MS_PAGENAME MS_MONITORINGSERVER_ENABLE 	LAUNCH_SM LAUNCH_MULTISERVER_MONITOR SERVERMANAGER ALTERNATECONTENT_CF MONITORINGSETTINGS_HEADER 
LAUNCH_MSM MEMORYTRACKING_ENABLE_TIP IMPORTANT_NOTICE MEMORYTRACKING_ENABLE  CLICK_NORMAL" LAUNCH_SERVER_MONITOR$ INVALIDSNAPSHOTFILE& MS_PROFILING_ENABLE_TIP( MS_MONITOR_ENABLE* CLICK_RETURN, SUBMIT_CHANGES. MS_MONITOR_ENABLE_TIP0 LAUNCH_SERVER_MANAGER2 ALERT4 MONITORING-SERVER-PORT6 MONITORINGSERVERSETTINGS_HEADER8 PAGEHEADER_CLIENTVARS1_MULTI: MS_PROFILING_ENABLE< DEFAULT_PAGENAME> ERROR_SETTINGS@ STATMESSB FLASH_REMOTING_DISABLEDD PAGEHEADER_CLIENTVARS3F PAGEHEADER_CLIENTVARS2H PAGEHEADER_CLIENTVARS1J 
L _whitespace %(Ljava/io/Writer;Ljava/lang/String;)VNO
 P
 D p
 D s metaData Ljava/lang/Object;TU	 V &coldfusion/runtime/AttributeCollectionX java/lang/ObjectZ ([Ljava/lang/Object;)V \
Y] getMetadata ()Ljava/lang/Object; this Lcfmonitor_en2ecfm1307554811; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage out Ljavax/servlet/jsp/JspWriter; value processingdirective2 /Lcoldfusion/tagext/lang/ProcessingDirectiveTag; mode2 I silent0  Lcoldfusion/tagext/io/SilentTag; mode0 t8 Ljava/lang/Throwable; t9 t10 t11 t12 t13 output1  Lcoldfusion/tagext/io/OutputTag; mode1 t16 t17 t18 t19 t20 t21 t22 t23 LineNumberTable java/lang/Throwable� <clinit> 1                      3 4    V 4    u v    � 4   TU    _` d   "     �W�   c       ab      d   ]     +*+,� **+,� � **+,� � **+,� � !�   c        +ab     +ef    +gh  i` d  �    �*� (� .L*� 2N*� >-� B� D:*� H� L� Q� UY6�u*� Z� B� \:*� H� Q� ]Y6� /*+� aL� d���� � :� �:	*+� hL�	� m� :
� &�A
�� � #:� q� � :� �:� t�� x**� � zY|S� �� ��   �       $   �   �   �   �   �   �   �   �   �   �   �           )  2  ;  D  M  V  _  h  q  z  �  �  �  �  �  �  �  �  �  �  �  �+�� ��+�� ��+�� ��+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ��~+�� ��u+�� ��l+�� ��c+�� ��Z+�� ��Q+�� ��H+�� ��?+�� ��6+�� ��-+�� ��$+¶ ��+Ķ ��+ƶ ��	+ȶ �� +ʶ �� �+̶ �� �+ζ �� �+ж �� �*� �� B� �:* �� H� Q� �Y6� k+ڶ �+* �� H**� � zY�SY�S� �� � � �+� �+* �� H**� � zY�SY�S� �� � � �+� �� ���� �� :� &� z�� � #:� � � :� �:� �� *� !�� �� *+M�Q� d���� m� :� #�� � #:�R� � :� �:�S��  \ q t� t y t� Q � �� � � �� Q � �� � � �� � � �� � � ���^j�dgj��^y�dgy�jvy�y~y� , ��� �^��d������� , ��� �^��d��������������� c   �   �ab    �jk   �lU   � / 0   �mn   �op   �qr   �sp   �tu   �vU 	  �wU 
  �xu   �yu   �zU   �{|   �}p   �~U   �u   ��u   ��U   ��U   ��u   ��u   ��U �   G 7  �  �  �  � | � � � � �  � "� $� &� *� ,� 9� =� ?� A M Q S U' [0 _9 aB eK gT i] kf mo rx t� y� {� �� �� �� �� �� �� �� �� �� �� �� �� �� �" �" �" �" �" �" �" �" � �� �� �� �� �� �� �� �� �� � �          d   #     *� 
�   c       ab   �  d  p    R6� <� >X� <� ZӸ <� ջ �Y� ��!�$�
�	��� ���������!�#�%�'�)�+�-�/�1�3�5�7"�9�;�=�?�A#�C�E�G�I�K	�� x�YY�[�^�W�   c      Rab         "    #