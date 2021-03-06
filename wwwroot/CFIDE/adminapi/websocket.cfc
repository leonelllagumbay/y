����  - 
SourceFile /CFIDE/adminapi/websocket.cfc (cfwebsocket2ecfc43454964$funcSETPROPERTY  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - PROPERTYNAME / getVariable  (I)Lcoldfusion/runtime/Variable; 1 2 %coldfusion/runtime/ArgumentCollection 4
 5 3 _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; 7 8
  9 PROPERTYVALUE ; _setCurrentLineNo (I)V = >
   ? 	component A CFIDE.adminapi.accessmanager C CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; E F coldfusion/runtime/CFPage H
 I G set (Ljava/lang/Object;)V K L coldfusion/runtime/Variable N
 O M _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; Q R
   S checkAdminRoles U java/lang/Object W coldfusion.serversettings Y _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; [ \
   ] 	__HTSWT_1 Lcoldfusion/util/FastHashtable; _ `	  a java/lang/String c _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; e f
   g _String &(Ljava/lang/Object;)Ljava/lang/String; i j coldfusion/runtime/Cast l
 m k Trim &(Ljava/lang/String;)Ljava/lang/String; o p
 I q __caseValue 4(Lcoldfusion/util/FastHashtable;Ljava/lang/Object;)I s t
   u 	VARIABLES w WEBSOCKETSERVICE y _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; { |
   } setWebSocketServiceEnabled  setProxyEnabled � setNormalPortListenerEnabled � setPort � setMaxFrameSize � setFlashFallBackEnabled � setClusterEnabled � setMulticastPort � setSSLEnabled � 
setSSLPort � setKeyStorePath � setKeyStorePassword � coldfusion/runtime/SwitchTable �
 � 	 ENABLESECUREWEBSOCKET � addStringCase 5(Ljava/lang/String;I)Lcoldfusion/runtime/SwitchTable; � �
 � � MULTICASTPORT � PORT � ENABLEWEBSOCKETSERVER � ENABLENORMALPORTLISTENER � STARTFLASHPOLICYSERVER � KEYSTOREPATH � MAXDATASIZE � ENABLEPROXYPORT � KEYSTOREPASSWORD � SSLPORT � ENABLEWEBSOCKETCLUSTER � setProperty � metaData Ljava/lang/Object; � �	  � any � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � /Sets the value of a WebSocket property setting. � 
Parameters � REQUIRED � Yes � HINT ��<br><br>Valid Properties are:
			<UL>
			<LI>EnableWebSocketServer</LI>
			<LI>EnableProxyPort</LI>
            <LI>EnableNormalPortListener</LI>
			<LI>Port</LI>            
			<LI>MaxDataSize</LI>
			<LI>StartFlashPolicyServer</LI>
			<LI>EnableWebSocketCluster</LI>
			<LI>MulticastPort</LI>
			<LI>EnableSecureWebSocket</LI>
			<LI>SSLPort</LI>
			<LI>KeyStorePath</LI>
			<LI>KeyStorePassword</LI>
			</UL> � NAME � propertyName � ([Ljava/lang/Object;)V  �
 � � (Value to set for the specified property. � propertyValue � getMetadata ()Ljava/lang/Object; this *Lcfwebsocket2ecfc43454964$funcSETPROPERTY; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       _ `    � �   	  � �  �   "     � ��    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   !     ��    �        � �    � �  �   -     � dY0SY<S�    �        � �    � �  �  $    f+� � :+� ,� :	+� :
-� $� *:-� .:*0� 6� ::*<� 6� ::
-|� @-BD� J� P-}� @--
� TV� XYZS� ^W� b- �� @-� dY0S� h� n� r� v�    �          ?   u   �   �    M  �  �  �  %  [  �- �� @--x� dYzS� ~�� XY-� dY<S� hS� ^��U- �� @--x� dYzS� ~�� XY-� dY<S� hS� ^��- �� @--x� dYzS� ~�� XY-� dY<S� hS� ^���- �� @--x� dYzS� ~�� XY-� dY<S� hS� ^���- �� @--x� dYzS� ~�� XY-� dY<S� hS� ^��}- �� @--x� dYzS� ~�� XY-� dY<S� hS� ^��G- �� @--x� dYzS� ~�� XY-� dY<S� hS� ^��- �� @--x� dYzS� ~�� XY-� dY<S� hS� ^�� �- �� @--x� dYzS� ~�� XY-� dY<S� hS� ^�� �- �� @--x� dYzS� ~�� XY-� dY<S� hS� ^�� o- �� @--x� dYzS� ~�� XY-� dY<S� hS� ^�� 9- �� @--x� dYzS� ~�� XY-� dY<S� hS� ^�� �    �   �   f � �    f � �   f � �   f � �   f � �   f � �   f � �   f + ,   f  �   f  � 	  f  � 
  f / �   f ; �  �  " �   j L | U | U | W | W | T | T | T | T | L | L | f } f } t } t } e } e } e } e } � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �1 �1 � � � � � �E �H �g �g �O �O �O �O �O �{ �~ �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �	 �	 �� �� �� �� �� � �  �? �? �' �' �' �' �' �S �V �u �u �] �] �] �] �] �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � �� �� �� �� �� �+ �. �M �M �5 �5 �5 �5 �5 �a � { � {      �   #     *� 
�    �        � �       �  $    � �Y� ��� ��� ��� ��� ��� ��� ��
� ��� ��� ��� ��	� ��� �� b� �Y� XY�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� XY� �Y� XY�SY�SY�SY�SY�SY�S� �SY� �Y� XY�SY�SY�SY�SY�SY�S� �SS� � ��    �       � �    �  �   !     ��    �        � �        ����  - � 
SourceFile /CFIDE/adminapi/websocket.cfc cfwebsocket2ecfc43454964  coldfusion/runtime/CFComponent  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   REQUEST Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   FACTORY   	   com.macromedia.SourceModTime  R^�� pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	  # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	  - LOCALE / REQUEST.LOCALE 1 _setCurrentLineNo (I)V 3 4
  5 java 7 java.util.Locale 9 CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; ; < coldfusion/runtime/CFPage >
 ? = 
getDefault A java/lang/Object C _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; E F
  G getLanguage I checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V K L
  M 	VARIABLES O java/lang/String Q  coldfusion.server.ServiceFactory S _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V U V
  W WEBSOCKETSERVICE Y _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; [ \
  ] getWebsocketService _ setProperty Lcoldfusion/runtime/UDFMethod; (cfwebsocket2ecfc43454964$funcSETPROPERTY c
 d 	 a b	  f SETPROPERTY h registerUDF 3(Ljava/lang/String;Lcoldfusion/runtime/UDFMethod;)V j k
  l getProperty (cfwebsocket2ecfc43454964$funcGETPROPERTY o
 p 	 n b	  r GETPROPERTY t metaData Ljava/lang/Object; v w	  x &coldfusion/runtime/AttributeCollection z _implicitMethods Ljava/util/Map; | }	  ~ displayname � 	websocket � extends � base � hint � Manages websocket settings. � Name � 	Functions �	 d x	 p x ([Ljava/lang/Object;)V  �
 { � getMetadata ()Ljava/lang/Object; this Lcfwebsocket2ecfc43454964; LocalVariableTable Code _setImplicitMethods (Ljava/util/Map;)V implicitMethods varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; 
getExtends ()Ljava/lang/String; registerUDFs runPage out Ljavax/servlet/jsp/JspWriter; value LineNumberTable _getImplicitMethods ()Ljava/util/Map; <clinit> 1                 a b    n b    v w   
 | }   	  � �  �   "     � y�    �        � �    � �  �   -     +� �    �        � �      � }      �   Q     *+,� **+,� � **+,� � �    �         � �      � �     � �   � �  �   !     ��    �        � �    �   �   1     *i� g� m*u� s� m�    �        � �    � �  �  Q 	    �*� $� *L*� .N**� 02*� 6**� 6**� 6*8:� @B� D� HJ� D� H� N*P� RYS*� 6*8T� @� X*P� RYZS*� 6***� � ^`� D� H� X�    �   *    � � �     � � �    � � w    � + ,  �   �     +  +  -  -  *  *  #  #          Z  Z  \  \  Y  Y  Y  Y  G  G  w  w  v  v  v  v  d  d         �   #     *� 
�    �        � �    � �  �   "     � �    �        � �    �   �   � 	    h� dY� e� g� pY� q� s� {Y
� DY�SY�SY�SY�SY�SY�SY�SY�SY�SY	� DY� �SY� �SS� �� y�    �       h � �   �     V j V j \  \            ����  - � 
SourceFile /CFIDE/adminapi/websocket.cfc (cfwebsocket2ecfc43454964$funcGETPROPERTY  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - PROPERTYNAME / getVariable  (I)Lcoldfusion/runtime/Variable; 1 2 %coldfusion/runtime/ArgumentCollection 4
 5 3 _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; 7 8
  9 _setCurrentLineNo (I)V ; <
   = 	component ? CFIDE.adminapi.accessmanager A CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; C D coldfusion/runtime/CFPage F
 G E set (Ljava/lang/Object;)V I J coldfusion/runtime/Variable L
 M K _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; O P
   Q checkAdminRoles S java/lang/Object U coldfusion.serversettings W _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; Y Z
   [ 	__HTSWT_0 Lcoldfusion/util/FastHashtable; ] ^	  _ java/lang/String a _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; c d
   e _String &(Ljava/lang/Object;)Ljava/lang/String; g h coldfusion/runtime/Cast j
 k i Trim &(Ljava/lang/String;)Ljava/lang/String; m n
 G o __caseValue 4(Lcoldfusion/util/FastHashtable;Ljava/lang/Object;)I q r
   s 	VARIABLES u WEBSOCKETSERVICE w _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; y z
   { isWebSocketServiceEnabled } isProxyEnabled  isNormalPortListenerEnabled � getPort � getMaxFrameSize � isFlashFallBackEnabled � isClusterEnabled � getMulticastPort � isSSLEnabled � 
getSSLPort � getKeyStorePath � getKeyStorePassword � coldfusion/runtime/SwitchTable �
 � 	 ENABLESECUREWEBSOCKET � addStringCase 5(Ljava/lang/String;I)Lcoldfusion/runtime/SwitchTable; � �
 � � MULTICASTPORT � PORT � ENABLEWEBSOCKETSERVER � ENABLENORMALPORTLISTENER � STARTFLASHPOLICYSERVER � KEYSTOREPATH � MAXDATASIZE � ENABLEPROXYPORT � KEYSTOREPASSWORD � SSLPORT � ENABLEWEBSOCKETCLUSTER � getProperty � metaData Ljava/lang/Object; � �	  � any � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � 2Returns the value of a WebSocket property setting. � 
Parameters � REQUIRED � Yes � HINT ��<br><br>Valid Properties are:
			<UL>
			<LI>EnableWebSocketServer</LI>
			<LI>EnableProxyPort</LI>
            <LI>EnableNormalPortListener</LI>
			<LI>Port</LI>
			<LI>MaxDataSize</LI>
			<LI>StartFlashPolicyServer</LI>
			<LI>EnableWebSocketCluster</LI>
			<LI>MulticastPort</LI>
			<LI>EnableSecureWebSocket</LI>
			<LI>SSLPort</LI>
			<LI>KeyStorePath</LI>
			<LI>KeyStorePassword</LI>            
			</UL> � NAME � propertyName � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this *Lcfwebsocket2ecfc43454964$funcGETPROPERTY; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       ] ^    � �   	  � �  �   "     � ��    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   !     ��    �        � �    � �  �   (     
� bY0S�    �       
 � �    � �  �  �    r+� � :+� ,� :	+� :
-� $� *:-� .:*0� 6� ::
-/� >-@B� H� N-0� >--
� RT� VYXS� \W� `-4� >-� bY0S� f� l� p� t�     �          @   c   �   �   �   �    5  X  {  �  �-7� >--v� bYxS� |~� V� \���-;� >--v� bYxS� |�� V� \��a-?� >--v� bYxS� |�� V� \��>-C� >--v� bYxS� |�� V� \��-G� >--v� bYxS� |�� V� \�� �-K� >--v� bYxS� |�� V� \�� �-O� >--v� bYxS� |�� V� \�� �-S� >--v� bYxS� |�� V� \�� �-W� >--v� bYxS� |�� V� \�� l-Z� >--v� bYxS� |�� V� \�� I-]� >--v� bYxS� |�� V� \�� &-`� >--v� bYxS� |�� V� \�� �    �   z   r � �    r � �   r � �   r � �   r � �   r � �   r � �   r + ,   r  �   r  � 	  r  � 
  r / �  �  � p    < / E / E / G / G / D / D / D / D / < / < / V 0 V 0 d 0 d 0 U 0 U 0 U 0 U 0 t 4 t 4 t 4 t 4 t 4 t 4 � 6 � 7 � 7 � 7 � 7 � 7 � 8 � : � ; � ; � ; � ; � ; < > ? ? ? ? ?2 @5 B; C; C; C; C; CU DX F^ G^ G^ G^ G^ Gx H{ J� K� K� K� K� K� L� N� O� O� O� O� O� P� R� S� S� S� S� S� T� V� W� W� W� W� W X Y Z Z Z Z Z' [* \0 ]0 ]0 ]0 ]0 ]J ^M _S `S `S `S `S `m a k 4 k 1     �   #     *� 
�    �        � �    �   �   �     ٻ �Y� ��� ��� ��� ��� ��� ��� ��
� ��� ��� ��� ��	� ��� �� `� �Y� VY�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� VY� �Y� VY�SY�SY�SY�SY�SY�S� �SS� ޳ ��    �       � � �    � �  �   !     ��    �        � �        