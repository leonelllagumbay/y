����  -Z 
SourceFile 1/CFIDE/administrator/cftags/resources/mail_en.cfm cfmail_en2ecfm586461644  coldfusion/runtime/CFPage  <init> ()V  
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
 � � $Server has been updated successfully � 'Click the button on the right to update � ALERT! � &Important notice about last submission � 8Click arrow on left to return without submitting changes � Submit Changes � Mail Settings � #Connection Verification Successful. � Connection Verification Failed! � Server Settings &gt; Mail � Mail Server Settings � Mail Server � � Specifies the server for
sending SMTP mail messages. You can specify an Internet address (for
example, mail.company.com) or the IP address of the mail server (for example,
127.0.0.1).
 � 	User name � Password � b
If your mail server requires authentication, you can specify a
user name and password to use.
 � Sign the mail � ;
Select this check box to have ColdFusion Sign the Mail.
 � Browse Server � Keystore � �
"Location of the Keystore" - Keystore containing the private key and certificate. The supported type is JKS (java key store) and pkcs12.
     � KeystorePassword � !
Password of the Keystore.
     � KeyAlias � �
     Alias of the key with which the certificate and private key is stored in Keystore. If it is not specified then the first entry in the Keystore will be picked up.
     � KeyPassword � �
Password with which the private key is stored. If it is not specified, KeystorePassword will be used as KeyPassword as well.
     � Verify mail server connection � v Select this check box
to have ColdFusion verify that it can connect to this mail server when you
submit this form.  � Server Port � V The default port number for
mail servers. The standard SMTP mail server port is 25.  � Backup Mail Servers ��
  <br>Specifies backup servers for sending SMTP mail messages. Use a comma to separate
    the names of multiple servers. To specify a port number other than the default,
    use a colon (for example, mail.company.com:123). If your mail server requires
    authentication different from the default server, you can specify a user name and password in the format <strong>
            user:password@mail.company.com</strong>.
     � "Maintain connection to mail server � y Select
this check box to keep the connection to a mail server open for reuse
after delivering a message (recommended). � Connection Timeout(in seconds) � T Specifies the time that ColdFusion should wait for a response from the mail server. � ,Enable SSL socket connections to mail server � USelect this check box to enable SSL encryption on the connections to the mail server. � $Enable TLS connection to mail server � e Select this check box to enable Transport Level Security (TLS) on the connection to the mail server. � Mail Spool Settings � Spool Interval(in seconds) � E Specifies the time the
mail spooler waits to process spooled mail.  � Mail
Delivery Threads � �
Specifies the maximum number of simultaneous threads that ColdFusion uses to deliver
spooled mail. A higher number indicates an increase in the volume of mail
messages that are delivered.
 � #Spool mail messages
  for delivery � to � Disk � Memory � � Select this check
box to spool messages for delivery by the mail spooler (recommended). When
not selected, the mail spooler attempts to deliver messages during page
processing. � Spooling to disk is more robust, because
the messages are written to disk and are delivered even if you restart
ColdFusion. Spooling to memory substantially increases performance,
but it requires additional memory and places the messages in volatile
storage.  � -Maximum
number of messages spooled to memory � {
Specifies the maximum number of messages that ColdFusion holds in memory before switching
to spooling messages to disk.  � 9Allow downloading the attachments for undelivered emails. � � Select this check
box to allow downloading attachments for undelivered emails. It is recommended not to enable it in case undelivered email functionality is not being used.  � View Undelivered Mail � Mail Logging Settings � Error Log Severity Debug Information Warning :
Select the type of SMTP-related error messages to log.
	 )Log all mail messages sent
by ColdFusion \ Select this check box
to save the To, From, and Subject fields of messages to a log file.  Mail Charset Setting '<strong>Default CFMail Charset</strong> Subject Sender To 	File Size Date Delete Respool message(s) successfully deleted! !message(s) successfully respooled# )Server Settings > Mail > Undelivered Mail% 6
Server port must be numeric and greater than zero.
' 8
Timeout value must be numeric and greater than zero.
) 9
Spool interval must be numeric and greater than zero.
+ Q
Maximum number of simultaneous threads must be numeric and greater than zero.
- W
Maximum number of messages spooled to memomy must be numeric and greater than zero.
/ $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag21 4	 4 coldfusion/tagext/io/OutputTag6
7 T )
Unable to update mail settings.<br />
9 CFCATCH; MESSAGE= _String &(Ljava/lang/Object;)Ljava/lang/String;?@ coldfusion/runtime/CastB
CA EncodeForHTML &(Ljava/lang/String;)Ljava/lang/String;EF
 G <br />
I DETAILK
7 c coldfusion/tagext/QueryLoopN
O j
O p
7 s 4
The mail server connection was not tested.<br />
S +
Unable to retrieve mail settings.<br />
U ErrorW falseY set (Ljava/lang/Object;)V[\ coldfusion/runtime/Variable^
_] coldfusion/runtime/SwitchTablea
b 	 BUTTON_BROWSEd addStringCase 5(Ljava/lang/String;I)Lcoldfusion/runtime/SwitchTable;fg
bh SEVERITY_TIPj MESSAGE_RESPOOLEDl KEYPASSWORDn 
SERVER_TIPp KEYALIASr STATMESSt VIEW_UNDELIVERED_MAILv 	CONN_FAILx SCHEDULER_TIPz MESSAGE_DELETED| SS_ERROR_MAIL_TIMEOUT~ SEVERITY_DEBUG� CLICK_NORMAL� KEYSTOREPASSWORD_TIP� SENDER� SUBMIT_CHANGES� MAXMESSAGESINMEMORY� SPOOLSETTINGS� KEYALIAS_TIP� SS_ERROR_MAIL_SCHEDULE� CHARSETSETTING� SERVER_PORT� LOGSENT� ALLOWDOWNLOAD_TIP� SPOOLTOMEMORY_TIP� FILESIZE� MAILLOGGING� SPOOLENABLE� LOGSENT_TIP� 	ENABLESSL� VERIFY� 
MAILSERVER� ENABLETLS_TIP� PAGEHEADER_UNDELIVEREDMAIL� USERNAME_TIP� BACKUPMAILSERVERS� 	SCHEDULER� 	ERROR_GET� SUBJECT� 	ENABLETLS� CONNECTIONTIMEOUT_SEC� DELETE� ERROR_UPDATE� SEVERITY_WARNING� KEYSTOREPASSWORD� SEVERITY� CONN_OK� SEVERITY_INFORMATION� KEYPASSWORD_TIP� IMPORTANT_NOTICE� MAXMESSAGESINMEMORY_TIP�  SS_ERROR_MAIL_MAXDELIVERYTHREADS� KEYSTORE_TIP� DEFAULT_PAGENAME� SIGN_TIP� PAGEHEADER_MAIL� CLICK_RETURN� !SS_ERROR_MAIL_MAXMESSAGESINMEMORY� MAINTAINCONNECTIONS� SEVERITY_ERROR� DATE� ALLOWDOWNLOAD� SS_ERROR_MAIL_SMTPPORT� SPOOLTO_MEMORY� SPOOLTO_DISK� 
CONNECTION� PORT_TIP� ALERT� 
VERIFY_TIP� MAILSERVERPASSWORD� MAXDELIVERYTHREADS_TIP� SPOOLTOMEMORY� MAXDELIVERYTHREADS� SPOOLENABLE_TIP� MAILSERVERUSERNAME� TIMEOUT_TIP  RESPOOL MAINTAINCONNECTIONS_TIP SIGN TO CHARSET
 ENABLESSL_TIP PAGENAME_MAILSET ERROR_NOTEST BACKUPMAILSERVERS_TIP KEYSTORE 
 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V
 
 D p
 D s metaData Ljava/lang/Object;	   &coldfusion/runtime/AttributeCollection" java/lang/Object$ ([Ljava/lang/Object;)V &
#' getMetadata ()Ljava/lang/Object; this Lcfmail_en2ecfm586461644; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage out Ljavax/servlet/jsp/JspWriter; value processingdirective3 /Lcoldfusion/tagext/lang/ProcessingDirectiveTag; mode3 I silent0  Lcoldfusion/tagext/io/SilentTag; mode0 t8 Ljava/lang/Throwable; t9 t10 t11 t12 t13 output1  Lcoldfusion/tagext/io/OutputTag; mode1 t16 t17 t18 t19 output2 mode2 t22 t23 t24 t25 t26 t27 t28 t29 LineNumberTable java/lang/ThrowableW <clinit> 1                      3 4    V 4    u v   1 4       )* .   "     �!�   -       +,      .   ]     +*+,� **+,� � **+,� � **+,� � !�   -        ++,     +/0    +12  3* .  �    [*� (� .L*� 2N*� >-� B� D:*� H� L� Q� UY6��*� Z� B� \:*� H� Q� ]Y6� /*+� aL� d���� � :� �:	*+� hL�	� m� :
� &��
�� � #:� q� � :� �:� t�� x**� � zY|S� �� ��   *       V  j  s  |  �  �  �  �  �  �  �  �  �  �  �  �  �  �          '  0  9  B  K  T  ]  f  o  x  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �        #  ,  5  >  G  P  Y  b  k  t  ~  �  �  �  �  �  �  �  �  �  �  �  �     
      (  2  <  F  P  Z  d  n  B  L   +�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ��+�� ��v+�� ��m+�� ��d+�� ��[+�� ��R+�� ��I+�� ��@+�� ��7+�� ��.+�� ��%+�� ��+�� ��+�� ��
+�� ��+�� ���+�� ���+�� ���+�� ���+¶ ���+Ķ ���+ƶ ���+ȶ ���+ʶ ���+̶ ���+ζ ���+ж ���+Ҷ ���+Զ ���+ֶ ��z+ض ��q+ڶ ��h+ܶ ��_+޶ ��V+� ��M+� ��D+� ��;+� ��2+� ��)+� �� +� ��+� ��+� ��+� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+ � ���+� ���+� ���+� ���+� ���+
� ���+� ���+� ��v+� ��l+� ��b+� ��X+� ��N+� ��D+� ��:+� ��0+� ��&+ � ��+"� ��+$� ��+&� ���+(� ���+*� ���+,� ���+.� ���+0� ���*�5� B�7:* �� H� Q�8Y6� r+:� �+* �� H**� � zY<SY>S� ��D�H� �+J� �+* �� H**� � zY<SYLS� ��D�H� �+J� ��M����P� :� &�c�� � #:�Q� � :� �:�R�� �+T� �� �*�5� B�7:*� H� Q�8Y6� r+V� �+*� H**� � zY<SY>S� ��D�H� �+J� �+*� H**� � zY<SYLS� ��D�H� �+J� ��M����P� :� &� ��� � #:�Q� � :� �:�R�� +X� �� *� !Z�`� *+�� d��� m� :� #�� � #:�� � :� �:���   \ q tX t y tX Q � �X � � �X Q � �X � � �X � � �X � � �Xd��X���Xd�X��X�XXB��X���XB��X���X���X���X , �9X ��9X��9X�-9X369X , �HX ��HX��HX�-HX36HX9EHXHMHX -  .   [+,    [45   [6   [ / 0   [78   [9:   [;<   [=:   [>?   [@ 	  [A 
  [B?   [C?   [D   [EF   [G:   [H   [I?   [J?   [K   [LF   [M:   [N   [O?   [P?   [Q   [R   [S?   [T?   [U V  2 � 7  �  �  �  � D M V _ h q  z "� $� &� (� *� ,� .� 0� 6� 8� :� ?� A� E� G I
 M O S% U. Y7 [@ _I aR e[ gd jm lv t v� z� |� ~� �� �� �� �� �� �� �� �� �� �� � � � �! �* �3 �< �E �N �X �b �l �v �� �� �� �� �� �� �� �� �� �� �� �� �� � � � �  �* �4 �> �~ �~ �~ �~ �~ �~ �~ �~ �v �� �� �� �� �� �� �� �� �� �H �H � �\\\\\\\\T���������&&� �          .   #     *� 
�   -       +,   Y  .      �6� <� >X� <� Z3� <�5�bY�ce�ik?�imL�io�iq�is�iu�iw9�iy	�i{,�i}K�iO�i�<�i��i��i�E�i��i�5�i�*�i��i�P�i�B�i��i�@�i�8�i�4�i�G�i�:�i�/�i�A�i�&�i��i��i�)�i�M�i��i� �i�+�i�U�i�D�i�(�i�$�i�I�i�S�i�>�i��i�;�i��i�=�i��i��i�6�i�Q�i��i��i��i�
�i��i�R�i�"�i�V�i�H�i�7�i�N�i�2�i�1�i��i��i��i��i��i�.�i�0�i�-�i�3�i��i%�iJ�i#�i�i	F�iC�i'�i�iT�i!�i�i� x�#Y�%�(�!�   -      �+,         "    #