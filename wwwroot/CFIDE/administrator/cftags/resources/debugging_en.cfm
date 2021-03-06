����  -� 
SourceFile 6/CFIDE/administrator/cftags/resources/debugging_en.cfm cfdebugging_en2ecfm2052911279  coldfusion/runtime/CFPage  <init> ()V  
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
  � ColdFusion Administrator � write (Ljava/lang/String;)V � � java/io/Writer �
 � � $Server has been updated successfully � 'Click the button on the right to update � ALERT! � &Important notice about last submission � 8Click arrow on left to return without submitting changes � Submit Changes � Debug Output Settings � 2Debugging &amp; Logging &gt; Debug Output Settings � #Enable Robust Exception Information �"
Allow visitors to see the following information in the exceptions page:
<ul>
<li>Physical path of template</li>
<li>URI of template</li>
<li>Line number and line snippet</li>
<li>SQL statement used (if any)</li>
<li>Data source name (if any)</li>
<li>Java stack trace</li>
</ul>
 � Enable AJAX Debug Log Window � �
Allows display of the AJAX debug log window when the cfdebug flag is passed
in the URL. If you disable this option, the AJAX debug log window does not
display, even if the cfdebug flag is specified.
 � Enable Request Debugging Output � �
Enables the page-level debugging output on CFML pages.
Uncheck this box to override all of the settings below.
Debugging information is appended to the end of each request.
 � Custom Debugging Output � Select Debugging Output Format �K
ColdFusion offers several debugging output formats: <br />
<b>classic.cfm</b> - The format available in ColdFusion 5 and earlier. It provides a basic view and few browser restrictions. <br />
<b>dockable.cfm</b> - A dockable tree-based debugging panel. For details about the panel and browser restrictions, see the online Help. � Report Execution Times � 5Highlight templates taking longer than the following  � 1(in milliseconds) using the following output mode � summary � tree �
Execution times for templates, includes, modules, custom tags, and component method calls. Template execution times over this minimum highlight time appear in red. The default is 250 ms. ColdFusion offers the following template modes:
<br />
<b>summary</b> - A summary of each page called. Columns include Total Time, Avg Time, Count, and Template. Sorted by highest total time. <br />
<b>tree</b> - Hierarchical tree view of individual page executions. <i>Note: Processing time and output will be longer than summary.</i>
 � General Debug Information � �
Select this option to show general information about this request.
General items are ColdFusion Server Version, Template, Time Stamp, User Locale, User Agent, User IP, and Host Name.
 � Database Activity � �
Select this option to show the database activity for the SQL Query events and Stored Procedure events in the debugging output.
 � Exception Information � k
Select this option to collect all ColdFusion exceptions raised for the request in the debugging output.
 � Tracing Information � �
Select this option to show trace event information in the debugging output.
Tracing lets a developer track program flow and efficiency through the use of the CFTRACE tag.
 � Timer Information � �
Select this option to show timer event information in the debugging output.
Timers let a developer track the execution time of the code between the start and end tags of the CFTIMER tag.
 � 	Variables � T
Select this option to enable variable reporting. Select the following variables:
 � Application � Cookie � Server � CGI � Form � Session � Client � Request � URL � Enable Performance Monitoring � �
Select this option so the standard NT Performance Monitor application shows information about a running ColdFusion application server.
 � Enable Metrics Logging � <
Select this option to enable ColdFusion Metrics Logging.
 � Metrics Frequency � <
The ColdFusion Metrics will be logged at this frequency.
 � Enable CFSTAT �
The cfstat command-line utility provides real-time performance metrics for ColdFusion.
Using a socket connection to obtain metric data, cfstat displays the information
that ColdFusion writes to System Monitor without actually using the System Monitor application.
 � Connector Port � s
The cfstat command-line utility performance metrics for ColdFusion will read performance metrics for this port.
 � >For these changes to take effect, you must restart ColdFusion. � �Enabling request debugging is not recommended for secure profile. If enabled site-wide error handler will be switched to the default one. Click OK to proceed. � Debugging IP Address � 3Debugging &amp; Logging &gt; Debugging IP Addresses �b
Specify the IP addresses that should receive debugging messages, including messages for the
AJAX Debug Log window.
To include an IP address in the list, enter the address and click Add.
To delete an IP address from the list, select the address and click Remove Selected.
When no IP addresses are selected, all users receive debugging information.
 $Select IP Addresses for Debug Output 
IP Address Add Add Current	 4View / Remove Selected IP Addresses for Debug Output Remove Selected bTo ensure that the changes that you specify on this page take effect, you must restart ColdFusion. hWarning: Specifying a debugger port that is already in use prevents the ColdFusion server from starting. Debugger Settings .Debugging &amp; Logging &gt; Debugger Settings Line Debugger Settings Allow Line Debugging Debugger Port: �You must specify this debugger port in the JVM settings of your application server, for example:
 <br>-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address= , and restart the server. (Maximum Simultaneous Debugging Sessions:! Debugging Server#The debugging server runs as a process separate from the ColdFusion Server. 
You can start, stop or restart the debugging server from this page, however, this is usually not necessary because the debug process is managed automatically when a debug session is started.% Start Debugger Server' Stop Debugger Server) Restart Debugger Server+ �Enable the Allow Line Debugging option to use the ColdFusion Debugger that runs in Eclipse(ColdFusion Builder). Specify the port and the maximum number of simultaneous debugging sessions.- �The port number that you specifed for the debugger is currently being used, possibly by the ColdFusion debugger. If you use this port for any purpose other than debugging this ColdFusion server, enter an available port number and restart the server./ $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag21 4	 4 coldfusion/tagext/io/OutputTag6
7 T .
Unable to update debugging settings.<br />
9 CFCATCH; MESSAGE= _String &(Ljava/lang/Object;)Ljava/lang/String;?@ coldfusion/runtime/CastB
CA EncodeForHTML &(Ljava/lang/String;)Ljava/lang/String;EF
 G <br />
I DETAILK
7 c coldfusion/tagext/QueryLoopN
O j
O p
7 s 0
Unable to retrieve debugging settings.<br />
S &Flash Form Compile Errors and MessagesU �
 (Development use only) Select this option to have ColdFusion display ActionScript errors in
 the browser when compiling Flash forms; this affects the display time of the page.
W 4
The IP you attempted to add should not be blank.
Y 
The IP you attempted to add ([ FORM] IPTOBEADDED_ 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; }a
 b �) is not valid.
IPs are four sets of numbers from 0 to 255 separated by periods (e.g., 127.0.0.1) in IPv4 addressing format
or eight sets of hexadecimal numbers from 0 to FFFF seperated by colon (e.g., 0:0:0:0:0:0:0:1) in IPv6 addressing format.
d ) is not valid.
IPs are four sets of numbers from 0 to 255 separated by periods (e.g., 127.0.0.1) in IPv4 addressing format
or eight sets of hexadecimal numbers from 0 to FFFF seperated by colon (e.g., 0:0:0:0:0:0:0:1) in IPv6 addressing format. <br />
f 	 <br />
h 
j _whitespace %(Ljava/io/Writer;Ljava/lang/String;)Vlm
 n 6
An error occurred attempting to add the current IP (p REMOTE_ADDRr %)
to the Debugging Service. <br />
t b
An error occurred attempting to remove the requested IP(s).
from the Debugging Service.<br />
v q
An error occurred attempting to retrieve a list of restricted IP addresses
from the Debugging Service.<br />
x 2Port number must be numeric and greater than zero.z 7Maximum sessions must be numeric and greater than zero.| $Unable to update debugging settings.~ false� set (Ljava/lang/Object;)V�� coldfusion/runtime/Variable�
�� coldfusion/runtime/SwitchTable�
� 	 ENABLE_CFSTAT_DESC� addStringCase 5(Ljava/lang/String;I)Lcoldfusion/runtime/SwitchTable;��
�� DA_TIP� 
ENABLE_TIP� IP_ERROR_INVALID� TIMER� TRACE� DS_MSG_SELECTUNUSEDPORT� GENERAL_TIP� IP_ERROR_REMOVE� ENABLE� STATMESS� URLVAR� CUSTOMDEBUGOUTPUT� 
SESSIONVAR� OPTIONS_PAGENAME� 	TRACE_TIP� DS_MSG_RESTARTSERVER� TEMPLATE_TIP� AJAX_ENABLED� DEBUGGER_SERVER� IP_ERROR_ADD� !CFSTAT_CONNECTOR_PORT_CHANGE_DESC� CLICK_NORMAL� SELECTIP� PORT_IN_USE_WARNING� SUBMIT_CHANGES� PAGEHEADER_DEBUGGING� 	COOKIEVAR� ENABLE_METRICS� AJAX_ENABLED_TIP� ENABLE_METRICS_DESC� VARS_TIP� DEBUG_ERROR_UPDATE� 	SERVERVAR� PAGEHEADER_IPLIST� RESTART_DEBUGGER_SERVER� ENABLE_PERFMON_DESC� CGIVAR� ENABLE_CFSTAT� DEBUG_IP_ERROR_EMPTY� EXCEPTION_TIP� IP_DEBUGGER_PORT� 	CLIENTVAR� DEBUGGER_SERVER_DESC� CF_METRICS_FREQUENCY_DESC� PAGEHEADER_LINEDEBUGGER� VARS� STOP_DEBUGGER_SERVER� HF_APPLY� LINEDEBUG_ERROR_UPDATE� DS_ERROR_PORTNUM� LINEDEBUGGER_DEBUGPORT_WARNING� METRICS_FREQUENCY� 	TIMER_TIP� IP_PAGENAME� 
ADD_BUTTON� DS_ERROR_MAXSESSIONS� DA IMPORTANT_NOTICE FLASHFORMCOMPILEERRORS $LINEDEBUGGER_DEBUGPORT_WARNING_PART2 ENABLE_ROBUST	 GENERAL FORMVAR DEBUG_APPLY DEFAULT_PAGENAME LINEDEBUGSETTINGS VIEWDELETEIP TEMPLATE_MODE_SUMMARY FLASHFORMCOMPILEERRORS_TIP ALLOW_LINE_DEBUGGING CLICK_RETURN IP_ERROR_GET ADD_CURRENT_BUTTON! REMOVE_BUTTON# START_DEBUGGER_SERVER% 
IP_ADDRESS' DEBUGSLOWTEMPLATHIGHLIGHT) ENABLE_PERFMON+ IP_ERROR_ADD_CURRENT- MAX_DEBUGGING_SESSIONS/ ALERT1 DEBUG_TEMPLATE_OUTPUT3 TEMPLATE5 CFSTAT_CONNECTOR_PORT_CHANGE7 OPTIONS_PAGENAME_LINEDEBUG9 	PAGE_DESC; IP_WELCOMETEXT= TEMPLATE_MODE_TREE? 	EXCEPTIONA TEMPLATE_USINGC DEBUG_TEMPLATE_TIPE APPLICATIONVARG DEBUG_ERROR_GETI 
REQUESTVARK ENABLE_ROBUST_DESCM 
O
 D p
 D s metaData Ljava/lang/Object;ST	 U &coldfusion/runtime/AttributeCollectionW java/lang/ObjectY ([Ljava/lang/Object;)V [
X\ getMetadata ()Ljava/lang/Object; this Lcfdebugging_en2ecfm2052911279; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage out Ljavax/servlet/jsp/JspWriter; value processingdirective8 /Lcoldfusion/tagext/lang/ProcessingDirectiveTag; mode8 I silent0  Lcoldfusion/tagext/io/SilentTag; mode0 t8 Ljava/lang/Throwable; t9 t10 t11 t12 t13 output1  Lcoldfusion/tagext/io/OutputTag; mode1 t16 t17 t18 t19 output2 mode2 t22 t23 t24 t25 output3 mode3 t28 t29 t30 t31 output4 mode4 t34 t35 t36 t37 output5 mode5 t40 t41 t42 t43 output6 mode6 t46 t47 t48 t49 output7 mode7 t52 t53 t54 t55 t56 t57 t58 t59 LineNumberTable java/lang/Throwable� <clinit> 1                      3 4    V 4    u v   1 4   ST    ^_ c   "     �V�   b       `a      c   ]     +*+,� **+,� � **+,� � **+,� � !�   b        +`a     +de    +fg  h_ c  y  <  �*� (� .L*� 2N*� >-� B� D:*� H� L� Q� UY6�r*� Z� B� \:*� H� Q� ]Y6� /*+� aL� d���� � :� �:	*+� hL�	� m� :
� &�>
�� � #:� q� � :� �:� t�� x**� � zY|S� �� ��  
�       _  �  �  �  �  �  �  �  �  �  �  �  �  �          &  /  8  A  J  S  \  e  n  w  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �        "  +  4  =  F  O  X  a  j  s  |  �  �  �  �  �  �  �  �  �  �  �  �  �        #  -  7  A  K  U  _  i  s  }  �  �  e  9  C  M  W  �  �  �  	�  
�  
�  
�+�� ��	)+�� ��	 +�� ��	+�� ��	+�� ��	+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ��~+�� ��u+�� ��l+�� ��c+�� ��Z+�� ��Q+�� ��H+�� ��?+¶ ��6+Ķ ��-+ƶ ��$+ȶ ��+ʶ ��+̶ ��	+ζ �� +ж ���+Ҷ ���+Զ ���+ֶ ���+ض ���+ڶ ���+ܶ ���+޶ ���+� ���+� ���+� ���+� ���+� ���+� ���+� ��y+� ��p+� ��g+� ��^+�� ��U+�� ��L+�� ��C+�� ��:+�� ��1+�� ��(+ � ��+� ��+� ��
+� �� +� ���+
� ���+� ���+� ���+� ���+� ���+� ���+� ���+� ���+� ���+� ���+� ���+ � ��~+"� ��t+$� ��j+&� ��`+(� ��V+*� ��L+,� ��B+.� ��8+0� ��.*�5� B�7:* �� H� Q�8Y6� r+:� �+* �� H**� � zY<SY>S� ��D�H� �+J� �+* �� H**� � zY<SYLS� ��D�H� �+J� ��M����P� :� &���� � #:�Q� � :� �:�R��Z*�5� B�7:* �� H� Q�8Y6� r+T� �+*� H**� � zY<SY>S� ��D�H� �+J� �+*� H**� � zY<SYLS� ��D�H� �+J� ��M����P� :� &���� � #:�Q� � :� �:�R���+V� ��|+X� ��r+Z� ��h*�5� B�7:*� H� Q�8Y6� ;+\� �+*� H*^� zY`S�c�D�H� �+e� ��M����P� :� &�6�� � #:�Q� � :� �:�R���*�5� B�7: *� H � Q �8Y6!� �+\� �+*� H*^� zY`S�c�D�H� �+g� �+*� H**� � zY<SY>S� ��D�H� �+i� �+*� H**� � zY<SYLS� ��D�H� �*+k�o �M��j �P� :"� &�8"�� � #:# #�Q� � :$� $�:% �R�%��*�5� B�7:&*� H&� Q&�8Y6'� �+q� �+*�� zYsS�c�D� �+u� �+*!� H**� � zY<SY>S� ��D�H� �+i� �+*"� H**� � zY<SYLS� ��D�H� �*+k�o&�M��u&�P� :(� &�E(�� � #:)&)�Q� � :*� *�:+&�R�+��*�5� B�7:,*%� H,� Q,�8Y6-� s+w� �+*(� H**� � zY<SY>S� ��D�H� �+i� �+*)� H**� � zY<SYLS� ��D�H� �*+k�o,�M���,�P� :.� &�o.�� � #:/,/�Q� � :0� 0�:1,�R�1�*�5� B�7:2*,� H2� Q2�8Y63� s+y� �+*/� H**� � zY<SY>S� ��D�H� �+J� �+*0� H**� � zY<SYLS� ��D�H� �*+k�o2�M���2�P� :4� &� �4�� � #:525�Q� � :6� 6�:72�R�7� .+{� �� $+}� �� +� �� *� !���� *+P�o� d���� m� :8� #8�� � #:99�Q� � ::� :�:;�R�;� H ] r u� u z u� R � �� � � �� R � �� � � �� � � �� � � ������,�,�),�,1,�\�������\� ��� ��� �  �N�������N����������������������������������������	�	��	�	�	���	�	��	�	�	��	�	�	��	�	�	��	�
g
s�
m
p
s�	�
g
��
m
p
��
s

��
�
�
��
�=I�CFI�
�=X�CFX�IUX�X]X� - ��� ���������������	���	�
g��
m=��C������� - ��� ���������������	���	�
g��
m=��C��������������� b  Z <  �`a    �ij   �kT   � / 0   �lm   �no   �pq   �ro   �st   �uT 	  �vT 
  �wt   �xt   �yT   �z{   �|o   �}T   �~t   �t   ��T   ��{   ��o   ��T   ��t   ��t   ��T   ��{   ��o   ��T   ��t   ��t   ��T   ��{    ��o !  ��T "  ��t #  ��t $  ��T %  ��{ &  ��o '  ��T (  ��t )  ��t *  ��T +  ��{ ,  ��o -  ��T .  ��t /  ��t 0  ��T 1  ��{ 2  ��o 3  ��T 4  ��t 5  ��t 6  ��T 7  ��T 8  ��t 9  ��t :  ��T ;�  � � 8  �  �  �  � h q z � � �  � "� $� &� (� *� 6� 8� >� @� F� H J
 O Q S% U. W7 Y@ `I bR g[ id mm ov s u� z� |� �� �� �� �� �� �� �� �� �� �� �� � � � �! �* �3 �< �E �N �W �` �i �r �| �� �� �� �� �� �� �� �� �� �� �� �� �� � � � �& �0 �: �D �N �X �b �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �l �l �vvvvvvvvn���������@ �@ �(hhhhhhhh`22�........&^^^^^^^^V�������	!!	!!	!!	!!	!!	!!	!!	!!	!	Q"	Q"	Q"	Q"	Q"	Q"	Q"	Q"	I"��	�(	�(	�(	�(	�(	�(	�(	�(	�(
')
')
')
')
')
')
')
')
)	�%	�%
�/
�/
�/
�/
�/
�/
�/
�/
�/
�0
�0
�0
�0
�0
�0
�0
�0
�0
�,
�,l3v5�7�:�:�:�:�:�:�: �          c   #     *� 
�   b       `a   �  c  J    ,6� <� >X� <� Z3� <�5��Y���4���������X��� ������C������[���������,������)���������B���������L���Y���6������<���R���������%���/������0���#���S���&���:���P���.���'���3���W������H���*���M���2���E���"���O���7���_���]���I���1���!���9���>�� ^������U��J��
	����(��8����F��@����V��G���� \��"?��$A��&N��(=��*��,-��.Z��0K��2��4��6��85��:D��<Q��>;��@��B��D��F��H$��JT��L+��N
��� x�XY�Z�]�V�   b      ,`a         "    #