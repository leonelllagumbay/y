����  - � 
SourceFile /CFIDE/adminapi/security.cfc .cfsecurity2ecfc1927877911$funcCHECKRDSPASSWORD  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / PASSWORD 1 string 3 getVariable  (I)Lcoldfusion/runtime/Variable; 5 6 %coldfusion/runtime/ArgumentCollection 8
 9 7 3coldfusion/tagext/validation/CFTypeValidatorFactory ; STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; = >	 < ? _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; A B
  C _setCurrentLineNo (I)V E F
 " G 	component I CFIDE.adminapi.accessmanager K CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; M N coldfusion/runtime/CFPage P
 Q O set (Ljava/lang/Object;)V S T coldfusion/runtime/Variable V
 W U java Y  coldfusion.server.ServiceFactory [ getSecurityService ] java/lang/Object _ _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; a b
 " c _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; e f
 " g checkRootAdminUser i checkRdsPassword k java/lang/String m _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; o p
 " q metaData Ljava/lang/Object; s t	  u false w &coldfusion/runtime/AttributeCollection y name { access } public  output � hint � Checks RDS password. � 
Parameters � REQUIRED � Yes � TYPE � HINT � Administrator password. � NAME � password � ([Ljava/lang/Object;)V  �
 z � getMetadata ()Ljava/lang/Object; this 0Lcfsecurity2ecfc1927877911$funcCHECKRDSPASSWORD; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       s t     � �  �   "     � v�    �        � �    � �  �   !     l�    �        � �    � �  �         �    �        � �    � �  �   (     
� nY2S�    �       
 � �    � �  �       �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:*24� :� @� D:
- �� H-JL� R� X- �� H-- �� H-Z\� R^� `� d� X- �� H--
� hj� `� dW- �� H--� hl� `Y-� nY2S� rS� d��    �   �    � � �     � � �    � � t    � � �    � � �    � � �    � � t    � - .    �  �    �  � 	   �  � 
   �  �    � 1 �  �   � (   � G � Q � Q � S � S � P � P � P � P � G � G � [ � m � m � o � o � l � l � d � d � d � d � [ � [ � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �     �   #     *� 
�    �        � �    �   �   �     �� zY
� `Y|SYlSY~SY�SY�SYxSY�SY�SY�SY	� `Y� zY� `Y�SY�SY�SY4SY�SY�SY�SY�S� �SS� �� v�    �       � � �    � �  �   !     x�    �        � �        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc 6cfsecurity2ecfc1927877911$funcGETENABLESANDBOXSECURITY  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / _setCurrentLineNo (I)V 1 2
 " 3 	component 5 CFIDE.adminapi.accessmanager 7 CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; 9 : coldfusion/runtime/CFPage <
 = ; set (Ljava/lang/Object;)V ? @ coldfusion/runtime/Variable B
 C A java E  coldfusion.server.ServiceFactory G getSecurityService I java/lang/Object K _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; M N
 " O _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; Q R
 " S checkAdminRoles U 
enterprise W Ucoldfusion.sandboxsecurity,coldfusion.serversettings,coldfusion.serversettingssummary Y false [ java/lang/String ] SANDBOXSECURITYENABLED _ _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; a b
 " c getEnableSandboxSecurity e metaData Ljava/lang/Object; g h	  i &coldfusion/runtime/AttributeCollection k name m access o public q output s hint u +Checks whether sandbox security is enabled. w 
Parameters y ([Ljava/lang/Object;)V  {
 l | getMetadata ()Ljava/lang/Object; this 8Lcfsecurity2ecfc1927877911$funcGETENABLESANDBOXSECURITY; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       g h     ~   �   "     � j�    �        � �    � �  �   !     f�    �        � �    � �  �         �    �        � �    � �  �   #     � ^�    �        � �    � �  �       �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:
-�� 4-68� >� D-�� 4--�� 4-FH� >J� L� P� D-�� 4--
� TV� LYXS� PW-�� 4--
� TV� LYZSY\S� PW-� ^Y`S� d��    �   z    � � �     � � �    � � h    � � �    � � �    � � �    � � h    � - .    �  �    �  � 	   �  � 
   �  �  �   � 0  � 4� >� >� @� @� =� =� =� =� 4� 4� H� Z� Z� \� \� Y� Y� Q� Q� Q� Q� H� H� u� u� �� �� t� t� t� t� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��     �   #     *� 
�    �        � �    �   �   f     H� lY
� LYnSYfSYpSYrSYtSY\SYvSYxSYzSY	� LS� }� j�    �       H � �    � �  �   !     \�    �        � �        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc +cfsecurity2ecfc1927877911$funcSETRDSENABLED  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / ENABLED 1 boolean 3 getVariable  (I)Lcoldfusion/runtime/Variable; 5 6 %coldfusion/runtime/ArgumentCollection 8
 9 7 3coldfusion/tagext/validation/CFTypeValidatorFactory ; BOOL_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; = >	 < ? _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; A B
  C _setCurrentLineNo (I)V E F
 " G 	component I CFIDE.adminapi.accessmanager K CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; M N coldfusion/runtime/CFPage P
 Q O set (Ljava/lang/Object;)V S T coldfusion/runtime/Variable V
 W U java Y  coldfusion.server.ServiceFactory [ getSecurityService ] java/lang/Object _ _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; a b
 " c _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; e f
 " g checkRootAdminUser i setRdsEnabled k java/lang/String m _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; o p
 " q ACTION s   u _set '(Ljava/lang/String;Ljava/lang/Object;)V w x
 " y _boolean (Ljava/lang/Object;)Z { | coldfusion/runtime/Cast ~
  } enabled � disabled � LOGAUDIT � &(Ljava/lang/String;)Ljava/lang/Object; e �
 " � logaudit � msg � java/lang/StringBuffer �   � (Ljava/lang/String;)V  �
 � � _autoscalarize � �
 " � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
  � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 � �  RDS security. � toString ()Ljava/lang/String; � �
 ` � )([Ljava/lang/Object;[Ljava/lang/Object;)V  �
 9 � 
_invokeUDF b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object; � �
 " � metaData Ljava/lang/Object; � �	  � void � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � (Specifies whether RDS is enabled or not. � 
Parameters � REQUIRED � Yes � TYPE � HINT � Specify true or false. � NAME � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this -Lcfsecurity2ecfc1927877911$funcSETRDSENABLED; LocalVariableTable Code getName 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       � �   	  � �  �   "     � ��    �        � �    � �  �   !     l�    �        � �    � �  �         �    �        � �    � �  �   !     ��    �        � �    � �  �   (     
� nY2S�    �       
 � �    � �  �      <+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:*24� :� @� D:
-� H-JL� R� X-� H--� H-Z\� R^� `� d� X-� H--
� hj� `� dW-� H--� hl� `Y-� nY2S� rS� dW-tv� z-� nY2S� r� �� -t�� z� -t�� z-� H-�� ��-� 9Y� nY�S� `Y� �Y�� �-t� �� �� ��� �� �S� �� �W�    �   �   < � �    < � �   < � �   < � �   < � �   < � �   < � �   < - .   <  �   <  � 	  <  � 
  <  �   < 1 �  �  * J    G Q Q S S P P P P G G [ m m o o l l d d d d [ [ � � � � � � � � � � � � � � � � � � � �
 �
 �
 �
 �
 � � � � � � � � �** � � � �     �   #     *� 
�    �        � �    �   �   �     �� �Y� `Y�SYlSY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� `Y� �Y� `Y�SY�SY�SY4SY�SY�SY�SY�S� �SS� ճ ��    �       � � �    � �  �   !     ��    �        � �        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc +cfsecurity2ecfc1927877911$funcISRAMALLFILES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;  	   getOut ()Ljavax/servlet/jsp/JspWriter;   ! javax/servlet/jsp/JspContext #
 $ " parent Ljavax/servlet/jsp/tagext/Tag; & '	  ( PATH * getVariable  (I)Lcoldfusion/runtime/Variable; , - %coldfusion/runtime/ArgumentCollection /
 0 . _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; 2 3
  4 _setCurrentLineNo (I)V 6 7
  8 _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; : ;
  < _String &(Ljava/lang/Object;)Ljava/lang/String; > ? coldfusion/runtime/Cast A
 B @ Trim &(Ljava/lang/String;)Ljava/lang/String; D E coldfusion/runtime/CFPage G
 H F _set '(Ljava/lang/String;Ljava/lang/Object;)V J K
  L ram:///- N _compare '(Ljava/lang/Object;Ljava/lang/String;)D P Q
  R _Object (Z)Ljava/lang/Object; T U
 B V _boolean (Ljava/lang/Object;)Z X Y
 B Z ram://- \ true ^ false ` java/lang/String b isRAMAllFiles d metaData Ljava/lang/Object; f g	  h boolean j &coldfusion/runtime/AttributeCollection l java/lang/Object n name p access r private t output v 
returntype x hint z -Checks if the argument is ram:///- or ram://- | 
Parameters ~ REQUIRED � HINT � "specifies the path to the ram file � NAME � path � ([Ljava/lang/Object;)V  �
 m � getMetadata ()Ljava/lang/Object; this -Lcfsecurity2ecfc1927877911$funcISRAMALLFILES; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       f g   	  � �  �   "     � i�    �        � �    � �  �   !     e�    �        � �    � �  �         �    �        � �    � �  �   !     k�    �        � �    � �  �   (     
� cY+S�    �       
 � �    � �  �  �     �+� � :+� ,� :	-� � %:-� ):*+� 1� 5:
-+-ڶ 9-+� =� C� I� M-+� =O� S�~�� WY� [� W-+� =]� S�~�� W� [� 	_�� a��    �   p    � � �     � � �    � � g    � � �    � � �    � � �    � � g    � & '    �  �    �  � 	   � * � 
 �   � (  � >� >� >� >� >� >� >� >� 4� M� M� S� S� M� M� M� M� i� i� o� o� i� i� i� i� M� M� �� �� �� �� �� �� �� �� �� �� M� 4�     �   #     *� 
�    �        � �    �   �   �     �� mY� oYqSYeSYsSYuSYwSYaSYySYkSY{SY	}SY
SY� oY� mY� oY�SY_SY�SY�SY�SY�S� �SS� �� i�    �       � � �    � �  �   !     a�    �        � �        ����  -f 
SourceFile /CFIDE/adminapi/security.cfc 4cfsecurity2ecfc1927877911$funcGETDISABLEDDATASOURCES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ALLDSNS  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   PERMISSIONS  ACCESSMANAGER ! SECURITY # I % WEBAPP ' DB ) coldfusion/runtime/CfJspPage + pageContext #Lcoldfusion/runtime/NeoPageContext; - .	 , / getOut ()Ljavax/servlet/jsp/JspWriter; 1 2 javax/servlet/jsp/JspContext 4
 5 3 parent Ljavax/servlet/jsp/tagext/Tag; 7 8	 , 9 	DIRECTORY ; getVariable  (I)Lcoldfusion/runtime/Variable; = > %coldfusion/runtime/ArgumentCollection @
 A ? _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; C D
  E / G set (Ljava/lang/Object;)V I J coldfusion/runtime/Variable L
 M K _setCurrentLineNo (I)V O P
 , Q ArrayNew (I)Ljava/util/List; S T coldfusion/runtime/CFPage V
 W U   Y 1 [ 	component ] CFIDE.adminapi.accessmanager _ CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; a b
 W c java e  coldfusion.server.ServiceFactory g getSecurityService i java/lang/Object k _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; m n
 , o _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; q r
 , s checkAdminRoles u Ucoldfusion.sandboxsecurity,coldfusion.serversettings,coldfusion.serversettingssummary w false y CFIDE.adminapi.datasource { getDatasources } 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object;  �
 W � java/lang/String � CONTEXTS � _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 , � _autoscalarize � r
 , � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
 , � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � _resolveAndAutoscalarize � �
 , � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 W � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 , � coldfusion/tagext/lang/ThrowTag � throw � setCalledName (Ljava/lang/String;)V � � coldfusion/tagext/GenericTag �
 � � cfthrow � message � SANDBOX_NOT_FOUND � &(Ljava/lang/String;)Ljava/lang/Object; � �
 , � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 , � 
setMessage � �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 , � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
 , � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
 , � CLASS � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
 , � #coldfusion.sql.DataSourcePermission � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 , � _Object (Z)Ljava/lang/Object; � �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � TARGET � * � 	StructNew !()Lcoldfusion/util/FastHashtable; � �
 W � StructDelete � �
 W � _double (Ljava/lang/Object;)D � �
 � � (D)Ljava/lang/Object; � �
 � � ArrayLen (Ljava/lang/Object;)I 
 W (I)Ljava/lang/Object; �
 � '(Ljava/lang/Object;Ljava/lang/Object;)D �
 , StructKeyList #(Ljava/util/Map;)Ljava/lang/String;

 W ListToArray $(Ljava/lang/String;)Ljava/util/List;
 W _List $(Ljava/lang/Object;)Ljava/util/List;
 � 
textnocase asc 	ArraySort 7(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
 W getDisabledDatasources metaData Ljava/lang/Object; !	 " array$ &coldfusion/runtime/AttributeCollection& name( access* public, output. 
returntype0 hint2 IReturns an array of data sources that have been disabled for the sandbox.4 
Parameters6 REQUIRED8 true: HINT< MSpecifies the sandbox directory for which disabled data sources are returned.> NAME@ 	directoryB ([Ljava/lang/Object;)V D
'E getMetadata ()Ljava/lang/Object; this 6Lcfsecurity2ecfc1927877911$funcGETDISABLEDDATASOURCES; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw41 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getOutput 1       � �    !   	 GH L   "     �#�   K       IJ   MN L   "     �   K       IJ   OP L         �   K       IJ   QN L   "     %�   K       IJ   RS L   (     
� �Y<S�   K       
IJ   TU L  �    C+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :+(� :+*� :-� 0� 6:-� ::*<� B� F:H� N-L� R-� X� N
Z� NZ� N\� N-Q� R-^`� d� N-R� R--R� R-fh� dj� l� p� N-T� R--� tv� lYxSYzS� pW-V� R-^|� d� N
-W� R-W� R--� t~� l� p� �� N-Y� R--� �Y�S� �-� �� �� �-� �Y<S� �� �� ��� H-� �)� �� �:-[� R�� ���-¶ Ÿ ��� ɶ �� �� ԙ �-`� R--� �Y�S� �� lY-� �SY-<� �S� ׸ �� N\� N� �---� �� ڸ �� �Y�S� �� ��~�� �Y� � .W---� �� ڸ �� �Y�S� �� ��~�� � � 
-i� R� �� N� �� ]---� �� ڸ �� �Y�S� �� ��� 7-n� R--
� �� �---� �� ڸ �� �Y�S� ߸ �� �W-� �� �c� �� N-� �-c� R-� ����	�t|����
-q� R-q� R--
� �� ���� N-r� R-
� ���W-
� ���   K   �   CIJ    CVW   CX!   CYZ   C[\   C]^   C_!   C 7 8   C `   C ` 	  C ` 
  C `   C !`   C #`   C %`   C '`   C )`   C ;`   Cab c  � �  H lK nK nK nK nK lK sL }L }L |L |L |L |L sL �M �M �M �M �M �M �N �N �N �N �N �N �O �O �O �O �O �O �Q �Q �Q �Q �Q �Q �Q �Q �Q �Q �R �R �R �R �R �R �R �R �R �R �R �R �T �T �T �T �T �T �T �T �T �V �V V V �V �V �V �V �VWWWWWWWWW6Y6YEYEY6Y6Y6Y6YQYQYQYQY5Y5Y5Y5Y5Y5Y�[�[�[�[k[5Y�`�`�`�`�`�`�`�`�`�`�`�`�`�c�c�c�c�c�f�f�f�fff�f�f�f�f(f(f$f$f@f@f$f$f$f$f�f�f]i]i]i]iTicjmlmlilil�l�l�n�n�n�n�n�n�n�n�n�n�n�n�nilil�f�c�c�c�c�c�c�c�c�c�c�c�c�c�c�c�c�c�c�c�cqqqqqqqqqqqq�q'r'r'r'r0r0r3r3r'r'r'r:s:s:s:s:s lJ    L   #     *� 
�   K       IJ   d  L   �     ��� �� ��'Y� lY)SYSY+SY-SY/SYzSY1SY%SY3SY	5SY
7SY� lY�'Y� lY9SY;SY=SY?SYASYCS�FSS�F�#�   K       �IJ   eN L   !     z�   K       IJ        ����  - 
SourceFile /CFIDE/adminapi/security.cfc 2cfsecurity2ecfc1927877911$funcGETSECURITYSANDBOXES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ST  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   PERMISSIONS  ACCESSMANAGER ! SECURITY # WEBAPP % coldfusion/runtime/CfJspPage ' pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	 ( + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/JspContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	 ( 5 getVariable  (I)Lcoldfusion/runtime/Variable; 7 8 %coldfusion/runtime/ArgumentCollection :
 ; 9 / = set (Ljava/lang/Object;)V ? @ coldfusion/runtime/Variable B
 C A _setCurrentLineNo (I)V E F
 ( G 	StructNew !()Lcoldfusion/util/FastHashtable; I J coldfusion/runtime/CFPage L
 M K ArrayNew (I)Ljava/util/List; O P
 M Q 	component S CFIDE.adminapi.accessmanager U CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; W X
 M Y java [  coldfusion.server.ServiceFactory ] getSecurityService _ java/lang/Object a _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; c d
 ( e _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; g h
 ( i checkAdminRoles k Ucoldfusion.sandboxsecurity,coldfusion.serversettings,coldfusion.serversettingssummary m false o java/lang/String q CONTEXTS s _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; u v
 ( w _autoscalarize y h
 ( z _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; | }
 ( ~ 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 M � arguments.directory � 	IsDefined (Ljava/lang/String;)Z � �
 M � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � /* � StructDelete %(Ljava/util/Map;Ljava/lang/String;Z)Z � �
 M � 	DIRECTORY � &(Ljava/lang/String;)Ljava/lang/Object; y �
 ( � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 M � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; | �
 ( � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 ( � coldfusion/tagext/lang/ThrowTag � throw � setCalledName (Ljava/lang/String;)V � � coldfusion/tagext/GenericTag �
 � � cfthrow � message � SANDBOX_NOT_FOUND � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 ( � 
setMessage � �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 ( � _resolveAndAutoscalarize � v
 ( � _arraySetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 ( � getSecuritySandboxes � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � access � public � output � hint � 6Returns all security sandboxes or a specified sandbox. � 
Parameters � REQUIRED � HINT � !Sandbox directory to be returned. � NAME � 	directory � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this 4Lcfsecurity2ecfc1927877911$funcGETSECURITYSANDBOXES; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw25 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getOutput 1       � �    � �     �     "     � �                 !     ݰ                       �             	
    (     
� rY�S�          
      �    +� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :-� ,� 2:-� 6:� <:>� D
-ڶ H� N� D-۶ H-� R� D-ݶ H-TV� Z� D-޶ H--޶ H-\^� Z`� b� f� D-߶ H--� jl� bYnSYpS� fW-� H-� rYtS� x-� {� � �� D-� H-�� ��� ,-� H--� {� ��� �W-� {�� �-� H--� rYtS� x-� {� � �-�� �� �� �� 4--� rYtS� x� bY-� {SY-�� �S� �� D� H-� �� �� �:-� H�� ���-Ŷ �� ��� ɶ �� �� ԙ �-
� bY-� rY�S� �S-� H-� {� �� �-
� {��      �           �             �    3 4         	    
       !    #    %    �       �  � T� V� V� V� V� T� [� d� d� d� d� [� j� t� t� s� s� s� s� j� {� �� �� �� �� �� �� �� �� {� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �������������� � �"�"����'�'�'�'�'�9�9�H�H�9�9�9�9�T�T�T�T�8�8�f�f�{�{�����e�e�e�e�c�����������8������������������������� T�       #     *� 
�                  �     }�� �� �� �Y
� bY�SY�SY�SY�SY�SYpSY�SY�SY�SY	� bY� �Y� bY�SYpSY�SY�SY�SY�S� �SS� �� �          }       !     p�                  ����  -� 
SourceFile /CFIDE/adminapi/security.cfc *cfsecurity2ecfc1927877911$funcGETENABLERDS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   SUCCESS  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   ACCESSMANAGER  WEBX ! coldfusion/runtime/CfJspPage # pageContext #Lcoldfusion/runtime/NeoPageContext; % &	 $ ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
 - + parent Ljavax/servlet/jsp/tagext/Tag; / 0	 $ 1 false 3 set (Ljava/lang/Object;)V 5 6 coldfusion/runtime/Variable 8
 9 7   ; _setCurrentLineNo (I)V = >
 $ ? 	component A CFIDE.adminapi.accessmanager C CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; E F coldfusion/runtime/CFPage H
 I G _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; K L
 $ M checkRootAdminUser O java/lang/Object Q _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; S T
 $ U checkAdminRoles W 
standalone Y *coldfusion/runtime/TransientVariableHolder [ &(Lcoldfusion/runtime/NeoPageContext;)V  ]
 \ ^ GetPageContext %()Lcoldfusion/runtime/NeoPageContext; ` a
 I b 
getRequest d getRealPath f /WEB-INF h _String &(Ljava/lang/Object;)Ljava/lang/String; j k coldfusion/runtime/Cast m
 n l web.xml p concat &(Ljava/lang/String;)Ljava/lang/String; r s java/lang/String u
 v t 
FileExists (Ljava/lang/String;)Z x y
 I z PATH | _set '(Ljava/lang/String;Ljava/lang/Object;)V ~ 
 $ � java/lang/StringBuffer � SERVER � 
COLDFUSION � ROOTDIR � _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
 $ � (Ljava/lang/String;)V  �
 � � FS � _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; � �
 $ � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 � � wwwroot � WEB-INF � toString ()Ljava/lang/String; � �
 R � path � 	IsDefined � y
 I � $class$coldfusion$tagext$lang$LockTag Ljava/lang/Class; coldfusion.tagext.lang.LockTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 $ � coldfusion/tagext/lang/LockTag � 
rdsservlet � setName � �
 � � 	EXCLUSIVE � setType � �
 � � 
setTimeout � >
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � 
doStartTag ()I � �
 � � "class$coldfusion$tagext$io$FileTag coldfusion.tagext.io.FileTag � � �	  � coldfusion/tagext/io/FileTag � READ � 	setAction � �
 � � cffile � file � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 $ � setFile � �
 � � webxml � setVariable � �
 � � setAddnewline � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 $ � WEBXML � XmlParse 0(Ljava/lang/String;)Lcoldfusion/xml/XmlNodeList; � �
 I � I � 1 � web-app � servlet-mapping  _arrayGetAt D(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;)Ljava/lang/Object;
 $ _Map #(Ljava/lang/Object;)Ljava/util/Map;
 n XMLNAME
 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; �
 $ _compare '(Ljava/lang/Object;Ljava/lang/String;)D
 $ XMLCHILDREN _resolve
 $ 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 $ XMLTEXT 
RDSServlet true _double (Ljava/lang/Object;)D!"
 n# _Object (D)Ljava/lang/Object;%&
 n' ArrayLen (Ljava/lang/Object;)I)*
 I+ (I)Ljava/lang/Object;%-
 n. '(Ljava/lang/Object;Ljava/lang/Object;)D0
 $1 doAfterBody3 �
 �4 doEndTag6 �
 �7 doCatch (Ljava/lang/Throwable;)V9:
 �; 	doFinally= 
 �> WRITE@ outputB � L
 $D ToStringF k
 IG \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object; �I
 $J 	setOutputL 6
 �M unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;OP coldfusion/runtime/NeoExceptionR
SQ t0 [Ljava/lang/String; AnyWUV	 Y findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I[\
S] CFCATCH_ binda 
 \b unbindd 
 \e getEnableRDSg metaData Ljava/lang/Object;ij	 k booleanm &coldfusion/runtime/AttributeCollectiono nameq accesss publicu 
returntypew hinty Checks whether RDS is enabled.{ 
Parameters} ([Ljava/lang/Object;)V 
p� getMetadata ()Ljava/lang/Object; this ,Lcfsecurity2ecfc1927877911$funcGETENABLERDS; LocalVariableTable Code getName 	getAccess getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t13 ,Lcoldfusion/runtime/TransientVariableHolder; lock14  Lcoldfusion/tagext/lang/LockTag; mode14 file13 Lcoldfusion/tagext/io/FileTag; t17 t18 t19 Ljava/lang/Throwable; t20 t21 lock16 mode16 file15 t25 t26 t27 t28 t29 t30 #Lcoldfusion/runtime/AbortException; t31 Ljava/lang/Exception; __cfcatchThrowable0 t33 t34 LineNumberTable java/lang/Throwable� !coldfusion/runtime/AbortException� java/lang/Exception� <clinit> 	getOutput 1       � �    � �   UV   ij   	 �� �   "     �l�   �       ��   � � �   "     h�   �       ��   � � �         �   �       ��   � � �   "     n�   �       ��   �� �   #     � v�   �       ��   �� �  � 
 #  7+� � :+� ,� :	+� :
+ � :+"� :-� (� .:-� 2:
4� :<� :-� @-BD� J� :-� @--� NP� R� VW-� @--� NX� RYZS� VW� \Y-� (� _:-� @--� @--� @--� @-� ce� R� Vg� RYiS� V� oq� w� {� M-}-� @--� @--� @-� ce� R� Vg� RYiS� V� oq� w� �� �- � @-� �Y-�� vY�SY�S� �� o� �-�� �� o� ��� �-�� �� o� ��� �-�� �� o� �q� �� �� {� ]-}� �Y-�� vY�SY�S� �� o� �-�� �� o� ��� �-�� �� o� ��� �-�� �� o� �q� �� �� �-$� @-�� ���-� �� �� �:-%� @�� ��� �� �� �� �Y6�i-� �� �� �:-&� @ٶ ���-}� �� o� � �� �� �� �� � :�F���-(� @--�� �� o� �� :-��� �� �--� RY�SYSY-�� �S��	� vYS���� ^---� RY�SYSY-�� �S��	� vYS����	� vYS���� 
 � :� M-�-�� ��$c�(� �-�� �-)� @-� RY�SYS��,�/�2�t|���$�5����8� :� &�|�� � #:�<� � :� �:�?�-� �� �� �:-6� @�� ��� �� �� �� �Y6� -� �� �� �:-7� @A� ���-}� �� o� � ��C-7� @--�E�H�K�N� �� �� � :� C� ���5����8� :� &� ��� � #:�<� � :� �:�?�� 

4� :� R� X:�:�T:  �Z�^�   %           ` �c
4� :� �� � :!� !�:"�f�"-
�E�� !)�����������)������������������������������������������������� �������������������� �������������������� �����������������"� �  ` #  7��    7��   7�j   7��   7��   7��   7�j   7 / 0   7 �   7 � 	  7 � 
  7 �   7 !�   7��   7��   7� �   7��   7�j   7�j   7��   7��   7�j   7��   7� �   7��   7�j   7�j   7��   7��   7�j   7��   7��   7��    7�� !  7�j "�     < > > > > < < C E E E E C C J T T V V S S S S J J f f e e e e ~ ~ � � } } } } � � � � � � � � � � � � � � � � � � � � � � � �   � � � � � �7 7 7 7 Q Q Q Q ] ] b b b b n n s s s s   3 3 3 3 2 2 �!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!2  ��$�$�$�$%%%%M&M&X&X&X&X&j&j&4&�(�(�(�(�(�(�(�(�(�)�)�)�)�)�+�+�+�+�+�+�+�+�+�+�-�-�-�---�-�---�-�-2-2-?/?/?/?/=/E0�-�+K)K)K)K)T)T)K)K)K)K)H)\)\)r)r)w)w)i)i)i)i)\)\)�)�'�%�6�6�6�6+7+777777777V7V7U7U7U7U77�6�:�:�:�:�:�:�9�$====
=
= �.@.@.@.@.@    �   #     *� 
�   �       ��   �  �   �     {�� �� �Ӹ �� �� vYXS�Z�pY� RYrSYhSYtSYvSYCSY4SYxSYnSYzSY	|SY
~SY� RS���l�   �       {��   � � �   !     4�   �       ��        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc :cfsecurity2ecfc1927877911$funcSETALLOWCONCURRENTADMINLOGIN  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / ADMINCONCLOGIN 1 boolean 3 getVariable  (I)Lcoldfusion/runtime/Variable; 5 6 %coldfusion/runtime/ArgumentCollection 8
 9 7 3coldfusion/tagext/validation/CFTypeValidatorFactory ; BOOL_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; = >	 < ? _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; A B
  C _setCurrentLineNo (I)V E F
 " G 	component I CFIDE.adminapi.accessmanager K CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; M N coldfusion/runtime/CFPage P
 Q O set (Ljava/lang/Object;)V S T coldfusion/runtime/Variable V
 W U java Y  coldfusion.server.ServiceFactory [ getSecurityService ] java/lang/Object _ _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; a b
 " c _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; e f
 " g checkRootAdminUser i setAllowConcurrentAdminLogin k java/lang/String m _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; o p
 " q LOGAUDIT s &(Ljava/lang/String;)Ljava/lang/Object; e u
 " v logaudit x msg z java/lang/StringBuffer | * set concurrent login sessions allowed to  ~ (Ljava/lang/String;)V  �
 } � _autoscalarize � u
 " � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 } � . � toString ()Ljava/lang/String; � �
 ` � )([Ljava/lang/Object;[Ljava/lang/Object;)V  �
 9 � 
_invokeUDF b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object; � �
 " � metaData Ljava/lang/Object; � �	  � void � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � USpecifies whether concurrent login sessions are allowed for ColdFusion Administrator. � 
Parameters � REQUIRED � Yes � TYPE � HINT � True or False � NAME � adminconclogin � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this <Lcfsecurity2ecfc1927877911$funcSETALLOWCONCURRENTADMINLOGIN; LocalVariableTable Code getName 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       � �   	  � �  �   "     � ��    �        � �    � �  �   !     l�    �        � �    � �  �         �    �        � �    � �  �   !     ��    �        � �    � �  �   (     
� nY2S�    �       
 � �    � �  �  �    +� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:*24� :� @� D:
-.� H-JL� R� X-/� H--/� H-Z\� R^� `� d� X-1� H--
� hj� `� dW-2� H--� hl� `Y-� nY2S� rS� dW-5� H-t� wy-� 9Y� nY{S� `Y� }Y� �-2� �� �� ��� �� �S� �� �W�    �   �    � �     � �    � �    � �    � �    � �    � �    - .     �     � 	    � 
    �    1 �  �   � 8   , G . P . P . R . R . O . O . O . O . G . G . Z / j / j / l / l / i / i / b / b / b / b / Z / Z / � 1 � 1 � 1 � 1 � 1 � 2 � 2 � 2 � 2 � 2 � 2 � 2 � 0 � 5 � 5 � 5 � 5 � 5 � 5 � 5 � 5 � 5 � 5 � 5 � 5 � 5 � 5 � 5 � 5 � 5 � 5     �   #     *� 
�    �        � �    �   �   �     �� �Y� `Y�SYlSY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� `Y� �Y� `Y�SY�SY�SY4SY�SY�SY�SY�S� �SS� ǳ ��    �       � � �    � �  �   !     ��    �        � �        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc 1cfsecurity2ecfc1927877911$funcENABLESECUREPROFILE  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / _setCurrentLineNo (I)V 1 2
 " 3 	component 5 CFIDE.adminapi.accessmanager 7 CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; 9 : coldfusion/runtime/CFPage <
 = ; set (Ljava/lang/Object;)V ? @ coldfusion/runtime/Variable B
 C A _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; E F
 " G checkRootAdminUser I java/lang/Object K _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; M N
 " O java Q  coldfusion.server.ServiceFactory S getSecurityService U enableSecureProfile W java/lang/String Y metaData Ljava/lang/Object; [ \	  ] false _ &coldfusion/runtime/AttributeCollection a name c access e public g output i hint k @Enables secure profile and applies all required settings for it. m 
Parameters o ([Ljava/lang/Object;)V  q
 b r getMetadata ()Ljava/lang/Object; this 3Lcfsecurity2ecfc1927877911$funcENABLESECUREPROFILE; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       [ \     t u  y   "     � ^�    x        v w    z {  y   !     X�    x        v w    | }  y         �    x        v w    ~   y   #     � Z�    x        v w    � �  y  �     �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:
-B� 4-68� >� D-D� 4--
� HJ� L� PW-E� 4--E� 4-RT� >V� L� P� D-F� 4--� HX� L� P��    x   z    � v w     � � �    � � \    � � �    � � �    � � �    � � \    � - .    �  �    �  � 	   �  � 
   �  �  �   � %   A 4 B = B = B ? B ? B < B < B < B < B 4 B 4 B N D N D M D M D M D ^ E n E n E p E p E m E m E f E f E f E f E ^ E � F � F � F � F � F � F � F M C     y   #     *� 
�    x        v w    �   y   f     H� bY
� LYdSYXSYfSYhSYjSY`SYlSYnSYpSY	� LS� s� ^�    x       H v w    � {  y   !     `�    x        v w        ����  - 
SourceFile /CFIDE/adminapi/security.cfc %cfsecurity2ecfc1927877911$funcSETSEED  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  
SEEDLENGTH ! coldfusion/runtime/CfJspPage # pageContext #Lcoldfusion/runtime/NeoPageContext; % &	 $ ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
 - + parent Ljavax/servlet/jsp/tagext/Tag; / 0	 $ 1 SEED 3 string 5 getVariable  (I)Lcoldfusion/runtime/Variable; 7 8 %coldfusion/runtime/ArgumentCollection :
 ; 9 3coldfusion/tagext/validation/CFTypeValidatorFactory = STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; ? @	 > A _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; C D
  E _setCurrentLineNo (I)V G H
 $ I 	component K CFIDE.adminapi.accessmanager M CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; O P coldfusion/runtime/CFPage R
 S Q set (Ljava/lang/Object;)V U V coldfusion/runtime/Variable X
 Y W java [  coldfusion.server.ServiceFactory ] getSecurityService _ java/lang/Object a _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; c d
 $ e LOGAUDIT g _get &(Ljava/lang/String;)Ljava/lang/Object; i j
 $ k logaudit m java/lang/String o msg q $ has set the ColdFusion server seed. s )([Ljava/lang/Object;[Ljava/lang/Object;)V  u
 ; v 
_invokeUDF b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object; x y
 $ z 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; i |
 $ } checkRootAdminUser  _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 $ � Len (Ljava/lang/Object;)I � �
 S � _Object (I)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _autoscalarize � |
 $ �@        _compare (Ljava/lang/Object;D)D � �
 $ � (Z)Ljava/lang/Object; � �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �@@      %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 $ � coldfusion/tagext/lang/ThrowTag � throw � setCalledName (Ljava/lang/String;)V � � coldfusion/tagext/GenericTag �
 � � cfthrow � message � WRONGSEEDLENGTH � � j
 $ � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 $ � 
setMessage � �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 $ � setSeed � metaData Ljava/lang/Object; � �	  � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � hint �  Sets the ColdFusion server seed. � 
Parameters � REQUIRED � Yes � TYPE � HINT � Server seed. � NAME � seed � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this 'Lcfsecurity2ecfc1927877911$funcSETSEED; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw12 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getOutput 1       � �    � �     �     "     � ۰                 !     װ                       �             	
    (     
� pY4S�          
      x    �+� � :+� ,� :	+� :
+ � :+"� :-� (� .:-� 2:*46� <� B� F:
- �� J-LN� T� Z- �� J-- �� J-\^� T`� b� f� Z- �� J-h� ln-� ;Y� pYrS� bYtS� w� {W- �� J--
� ~�� b� fW- �� J-� pY4S� �� �� �� Z-� � �� ��|� �Y� �� W-� � �� ��t|� �� �� H-� �� �� �:- �� J�� ���-�� ¸ ��� ʶ �� �� ՙ �- �� J--� ~�� bY-� pY4S� �S� fW�      �   �    �   � �   �   �   �   � �   � / 0   �    �  	  �  
  �    � !   � 3   �   2 L   � O � Y � Y � [ � [ � X � X � X � X � O � O � c � u � u � w � w � t � t � l � l � l � l � c � c � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �
 �
 � � �
 �
 �
 �
 � � � � �I �I �% � � �r �r �� �� �q �q �q � � �       #     *� 
�                  �     ��� �� �� �Y
� bY�SY�SY�SY�SY�SY�SY�SY�SY�SY	� bY� �Y� bY�SY�SY�SY6SY�SY�SY�SY�S� �SS� �� ۱          �       !     ݰ                  ����  -� 
SourceFile /CFIDE/adminapi/security.cfc .cfsecurity2ecfc1927877911$funcSETSECUREDIPPORT  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ST  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   PERMISSIONS  SUCCESS ! ACCESSMANAGER # SECURITY % I ' WEBAPP ) ARRAYPOS + coldfusion/runtime/CfJspPage - pageContext #Lcoldfusion/runtime/NeoPageContext; / 0	 . 1 getOut ()Ljavax/servlet/jsp/JspWriter; 3 4 javax/servlet/jsp/JspContext 6
 7 5 parent Ljavax/servlet/jsp/tagext/Tag; 9 :	 . ; 	DIRECTORY = getVariable  (I)Lcoldfusion/runtime/Variable; ? @ %coldfusion/runtime/ArgumentCollection B
 C A _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; E F
  G IP I PORT K get (I)Ljava/lang/Object; M N
 C O PORTTYPE Q single S put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; U V
 C W / Y set (Ljava/lang/Object;)V [ \ coldfusion/runtime/Variable ^
 _ ] true a _setCurrentLineNo (I)V c d
 . e ArrayNew (I)Ljava/util/List; g h coldfusion/runtime/CFPage j
 k i 0 m 	StructNew !()Lcoldfusion/util/FastHashtable; o p
 k q 1 s 	component u CFIDE.adminapi.accessmanager w CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; y z
 k { java }  coldfusion.server.ServiceFactory  getSecurityService � java/lang/Object � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
 . � _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
 . � checkAdminRoles � coldfusion.sandboxsecurity � single,higher,lower,range � java/lang/String � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 . � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � ListFind '(Ljava/lang/String;Ljava/lang/String;)I � �
 k � _boolean (D)Z � �
 � � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 . � coldfusion/tagext/lang/ThrowTag � throw � setCalledName (Ljava/lang/String;)V � � coldfusion/tagext/GenericTag �
 � � cfthrow � message � WRONG_PORT_TYPE � _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; � �
 . � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 . � 
setMessage � �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 . � Len (Ljava/lang/Object;)I � �
 k � BADIP � CONTEXTS � _resolve � �
 . � � �
 . � _arrayGetAt � V
 . � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 k � SANDBOX_NOT_FOUND � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
 . � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 k � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
 . � CLASS � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � 
 . java.net.SocketPermission _compare '(Ljava/lang/Object;Ljava/lang/String;)D
 . TARGET	 * _List $(Ljava/lang/Object;)Ljava/util/List;
 � _int �
 � ArrayDeleteAt (Ljava/util/List;I)Z
 k _double (Ljava/lang/Object;)D
 � _Object (D)Ljava/lang/Object;
 � ArrayLen  �
 k! N
 �# '(Ljava/lang/Object;Ljava/lang/Object;)D%
 .& java/lang/StringBuffer(  �
)* :, append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;./
)0 
FORMATPORT2 � �
 .4 
formatPort6 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;89
 .: toString ()Ljava/lang/String;<=
 �> _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V@A
 .B ACTIOND connect,resolveF ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)ZHI
 kJ _LhsResolveL �
 .M _arraySetAt :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)VOP
 .Q LOGAUDITS logauditU msgW  restricted the ip address Y : that cf tags can access in the sandbox for the directory [ .] )([Ljava/lang/Object;[Ljava/lang/Object;)V _
 C` b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object;8b
 .c setSecuredIPPorte metaData Ljava/lang/Object;gh	 i falsek &coldfusion/runtime/AttributeCollectionm nameo accessq publics outputu hintw DRestrict the IP addresses and ports that ColdFusion tags can access.y 
Parameters{ REQUIRED} HINT NSpecifies the sandbox directory for which the IP address and port are secured.� NAME� 	directory� ([Ljava/lang/Object;)V �
n� %Specifies the IP address to restrict.� Specifies the port to restrict.� DEFAULT� �Specifies the port type:<ul><li>single - Single port</li><li>higher - The specified port and higher</li><li>lower - The specified port and lower</li><li>range - Specified range of ports</li></ul>� portType� getMetadata ()Ljava/lang/Object; this 0Lcfsecurity2ecfc1927877911$funcSETSECUREDIPPORT; LocalVariableTable Code getName 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw49 !Lcoldfusion/tagext/lang/ThrowTag; throw50 throw51 LineNumberTable <clinit> 	getOutput 1       � �   gh    �� �   "     �j�   �       ��   �= �   "     f�   �       ��   �� �         �   �       ��   �� �   7     � �Y>SYJSYLSYRS�   �       ��   �� �  �    �+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :+(� :+*� :+,� :-� 2� 8:-� <:*>� D� H:*J� D� H:*L� D� H:� P� RT� XW� D:Z� `b� `-E� f-� l� `n� `
-H� f� r� `t� `-K� f-vx� |� `-L� f--L� f-~�� |�� �� �� `-M� f--� ��� �Y�S� �W-O� f�-� �YRS� �� �� ��� ��� H-� �1� �� �:-Q� f�� ���-ƶ ʸ ��� ζ �� �� ٙ �-T� f-� �YJS� �� ݇� ��� H-� �2� �� �:-V� f�� ���-߶ ʸ ��� ζ �� �� ٙ �-Y� f--� �Y�S� �-� � � �-� �Y>S� �� �� ��� H-� �3� �� �:-[� f�� ���-� ʸ ��� ζ �� �� ٙ �-_� f--� �Y�S� �� �Y-� �SY->� �S� �� �� `t� `� �---� � �� �� �Y�S���� I---� � �� �� �Y
S���� !-i� f--� �-� ��W-� �c�� `-� �-c� f-� �"�$�'�t|���\t� `� �---� � �� �� �Y�S���� �---� � �� �� �Y
S��)Y-J� ʸ ��+-�1-t� f-3�57-� �Y-L� �SY-R� �S�;� ��1�?�'�~�� !-v� f--� �-� ��W-� �c�� `-� �-p� f-� �"�$�'�t|���-
� �Y�S�C-
� �Y
S�)Y-J� ʸ ��+-�1-}� f-3�57-� �Y-L� �SY-R� �S�;� ��1�?�C-
� �YESG�C-� f-� �-
� �KW-� �Y�S�N� �Y-� �SY->� �S-� �R-�� f-T�5V-� CY� �YXS� �Y�)YZ�+-� �YJS� �� ��1\�1-� �Y>S� �� ��1^�1�?S�a�dW�   �   �   ���    ���   ��h   ���   ���   ���   ��h   � 9 :   � �   � � 	  � � 
  � �   � !�   � #�   � %�   � '�   � )�   � +�   � =�   � I�   � K�   � Q�   ���   ���   ��� �  .K  = �A �A �C �C �C �C �C �C �D �D �D �D �D �D �E �E �E �E �E �E �E �E �F �F �F �F �F �F �H �H �H �H �H �H �I �I �I �I �I �I �K �K �K �K �K �K �K �K �K �K LLLLLLL	L	L	L	L L-M-M;M;M,M,M,MIOIOKOKOKOKOIOIOIOIOIOIO�Q�QiQIO�T�T�T�T�T�T�T�T�V�V�V�TYY,Y,YYYYY8Y8Y8Y8YYYYYYYv[v[v[v[R[Y�_�_�_�_�_�_�_�_�_�_�_�_�_�c�c�c�c�c�e�e�e�e�e�egg g ggg0i0i0i0i9i9i9i9i/i/i/i g�eHcHcHcHcQcQcHcHcHcHcFcYcYcfcfcfcfcYcYc�c�p�p�p�p�p�r�r�r�r�r�r�t�t�t�t�t�t�t�t�t�t�t�t�t�ttt�t�t�t�t�t�t�t�t,v,v,v,v5v5v5v5v+v+v+v�t�rDpDpDpDpMpMpDpDpDpDpBpUpUpbpbpbpbpUpUp�p�|�|�|�|||�}�}�}�}�}�}�}�}�}�}�}�}�}�}�}�}�}�}�}�}�}�~�~�~�~�~��*�*�3�3�:�:�:�:�� �BJ�J�m�m�s�s�s�s�s�s���������������������i�i�J�J�J�J�    �   #     *� 
�   �       ��   �  �  K    -�� �� ��nY
� �YpSYfSYrSYtSYvSYlSYxSYzSY|SY	� �Y�nY� �Y~SYbSY�SY�SY�SY�S��SY�nY� �Y~SYbSY�SY�SY�SYJS��SY�nY� �Y~SYbSY�SY�SY�SYLS��SY�nY� �Y~SYlSY�SYTSY�SY�SY�SY�S��SS���j�   �      -��   �= �   "     l�   �       ��        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc .cfsecurity2ecfc1927877911$funcGETALLADMINROLES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / _setCurrentLineNo (I)V 1 2
 " 3 	component 5 CFIDE.adminapi.accessmanager 7 CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; 9 : coldfusion/runtime/CFPage <
 = ; set (Ljava/lang/Object;)V ? @ coldfusion/runtime/Variable B
 C A java E  coldfusion.server.ServiceFactory G getSecurityService I java/lang/Object K _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; M N
 " O _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; Q R
 " S checkRootAdminUser U getAllAdminRoles W java/lang/String Y metaData Ljava/lang/Object; [ \	  ] &coldfusion/runtime/AttributeCollection _ name a 
Parameters c ([Ljava/lang/Object;)V  e
 ` f getMetadata ()Ljava/lang/Object; this 0Lcfsecurity2ecfc1927877911$funcGETALLADMINROLES; LocalVariableTable Code getName ()Ljava/lang/String; getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 1       [ \     h i  m   "     � ^�    l        j k    n o  m   !     X�    l        j k    p q  m   #     � Z�    l        j k    r s  m  �     �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:
-�� 4-68� >� D-�� 4--�� 4-FH� >J� L� P� D-�� 4--
� TV� L� PW-�� 4--� TX� L� P��    l   z    � j k     � t u    � v \    � w x    � y z    � { |    � } \    � - .    �  ~    �  ~ 	   �  ~ 
   �  ~     � &  � 4� >� >� @� @� =� =� =� =� 4� 4� H� Z� Z� \� \� Y� Y� Q� Q� Q� Q� H� H� u� u� t� t� t� t� �� �� �� �� �� �� ��     m   #     *� 
�    l        j k    �   m   C     %� `Y� LYbSYXSYdSY� LS� g� ^�    l       % j k        ����  -� 
SourceFile /CFIDE/adminapi/security.cfc /cfsecurity2ecfc1927877911$funcDISABLERDSSERVLET  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   SUCCESS  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   WEBX  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / true 1 set (Ljava/lang/Object;)V 3 4 coldfusion/runtime/Variable 6
 7 5   9 *coldfusion/runtime/TransientVariableHolder ; &(Lcoldfusion/runtime/NeoPageContext;)V  =
 < > _setCurrentLineNo (I)V @ A
 " B GetPageContext %()Lcoldfusion/runtime/NeoPageContext; D E coldfusion/runtime/CFPage G
 H F 
getRequest J java/lang/Object L _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; N O
 " P getRealPath R /WEB-INF T _String &(Ljava/lang/Object;)Ljava/lang/String; V W coldfusion/runtime/Cast Y
 Z X web.xml \ concat &(Ljava/lang/String;)Ljava/lang/String; ^ _ java/lang/String a
 b ` 
FileExists (Ljava/lang/String;)Z d e
 H f PATH h _set '(Ljava/lang/String;Ljava/lang/Object;)V j k
 " l java/lang/StringBuffer n SERVER p 
COLDFUSION r ROOTDIR t _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; v w
 " x (Ljava/lang/String;)V  z
 o { FS } _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object;  �
 " � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 o � wwwroot � WEB-INF � toString ()Ljava/lang/String; � �
 M � path � 	IsDefined � e
 H � $class$coldfusion$tagext$lang$LockTag Ljava/lang/Class; coldfusion.tagext.lang.LockTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 " � coldfusion/tagext/lang/LockTag � 
rdsservlet � setName � z
 � � 	EXCLUSIVE � setType � z
 � � 
setTimeout � A
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � 
doStartTag ()I � �
 � � "class$coldfusion$tagext$io$FileTag coldfusion.tagext.io.FileTag � � �	  � coldfusion/tagext/io/FileTag � READ � 	setAction � z
 � � cffile � file � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 " � setFile � z
 � � webxml � setVariable � z
 � � setAddnewline � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 " � WEBXML � XmlParse 0(Ljava/lang/String;)Lcoldfusion/xml/XmlNodeList; � �
 H � I � 1 � web-app � servlet-mapping � _arrayGetAt D(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;)Ljava/lang/Object; � �
 " � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 Z � XMLNAME � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; v �
 " � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 " � XMLCHILDREN � _resolve �
 " 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; �
 " XMLTEXT 
RDSServlet	 _List $(Ljava/lang/Object;)Ljava/util/List;
 Z _int (Ljava/lang/Object;)I
 Z ArrayDeleteAt (Ljava/util/List;I)Z
 H _double (Ljava/lang/Object;)D
 Z _Object (D)Ljava/lang/Object;
 Z ArrayLen
 H  (I)Ljava/lang/Object;"
 Z# '(Ljava/lang/Object;Ljava/lang/Object;)D �%
 "& doAfterBody( �
 �) doEndTag+ �
 �, doCatch (Ljava/lang/Throwable;)V./
 �0 	doFinally2 
 �3 WRITE5 output7 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; 9
 ": ToString< W
 H= \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object; �?
 "@ 	setOutputB 4
 �C falseE unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;GH coldfusion/runtime/NeoExceptionJ
KI t0 [Ljava/lang/String; AnyOMN	 Q findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)IST
KU CFCATCHW bindY k
 <Z unbind\ 
 <] disableRDSServlet_ metaData Ljava/lang/Object;ab	 c booleane &coldfusion/runtime/AttributeCollectiong namei accessk privatem 
returntypeo hintq 2Disables the servlet that performs RDS processing.s 
Parametersu ([Ljava/lang/Object;)V w
hx getMetadata ()Ljava/lang/Object; this 1Lcfsecurity2ecfc1927877911$funcDISABLERDSSERVLET; LocalVariableTable Code getName 	getAccess getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t12 ,Lcoldfusion/runtime/TransientVariableHolder; lock18  Lcoldfusion/tagext/lang/LockTag; mode18 file17 Lcoldfusion/tagext/io/FileTag; t16 t17 t18 Ljava/lang/Throwable; t19 t20 lock20 mode20 file19 t24 t25 t26 t27 t28 t29 #Lcoldfusion/runtime/AbortException; t30 Ljava/lang/Exception; __cfcatchThrowable2 t32 t33 LineNumberTable java/lang/Throwable� !coldfusion/runtime/AbortException� java/lang/Exception� <clinit> 	getOutput 1       � �    � �   MN   ab   	 z{    "     �d�   ~       |}   � �    "     `�   ~       |}   � �          �   ~       |}   � �    "     f�   ~       |}   ��    #     � b�   ~       |}   ��   X 
 "  +� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:
2� 8:� 8� <Y-� &� ?:-^� C--^� C--^� C--^� C-� IK� M� QS� MYUS� Q� []� c� g� M-i-_� C--_� C--_� C-� IK� M� QS� MYUS� Q� []� c� m� �-`� C-� oY-q� bYsSYuS� y� [� |-~� �� [� ��� �-~� �� [� ��� �-~� �� [� �]� �� �� g� ]-i� oY-q� bYsSYuS� y� [� |-~� �� [� ��� �-~� �� [� ��� �-~� �� [� �]� �� �� m-d� C-�� ���-� �� �� �:-e� C�� ��� �� �� �� �Y6��-� �� �� �:-f� CŶ ���-i� �� [� ж �ն �� �� �� ߙ :�e���-h� C--� �� [� � 8-�� m� �--� MY�SY�SY-� �S� � �� bY�S� ��� ��� �---� MY�SY�SY-� �S� � �� bY S��� �� bYS� �
� ��� 2-o� C--� MY�SY�S� �-� ���W� L-�-� ��c�� m-� �-i� C-� MY�SY�S� �!�$�'�t|����*��~�-� :� &��� � #:�1� � :� �:�4�-� �� �� �:-v� C�� ��� �� �� �� �Y6� -� �� �� �:-w� C6� ���-i� �� [� ж ��8-w� C--�;�>�A�D� �� �� ߙ :� C� ���*����-� :� &� ��� � #:�1� � :� �:�4�� 
F� 8� T� Z:�:�L:�R�V�    '           X�[
F� 8� �� � : �  �:!�^�!-
�;�� !�8��>w��}����8��>w��}������������Nw�Tkw�qtw��N��Tk��qt��w������� O8��>w��}N��Tk��q��� O8��>w��}N��Tk��q��� O8��>w��}N��Tk��q����������� ~  V "  |}    ��   �b   ��   ��   ��   �b    - .    �    � 	   � 
   �   ��   ��   � �   ��   �b   �b   ��   ��   �b   ��   � �   ��   �b   �b   ��   ��   �b   ��   ��   ��   ��    �b !�  � �  X 4Y 6Y 6Y 6Y 6Y 4Y 4Y ;Z =Z =Z =Z =Z ;Z ;Z n^ n^ f^ f^ �^ �^ ^^ ^^ ^^ ^^ �^ �^ ^^ ^^ ^^ ^^ V^ V^ �_ �_ �_ �_ �_ �_ �_ �_ �_ �_ �_ �_ �_ �_ �_ �_ �_ �_ �` �` �` �` ` ` ` `````````"`"`"`"`.`.` �` �` �` �` �` �`CaCaCaCa]a]a]a]aiaiananananazazaaaaa�a�a?a?a?a?a<a<a �` V^�d�d�d�d�e�e�e�e�f�fffffff�fHhHhHhHhGhGhGhGh>hZiZiZiZiWilklkqkqkvkvkbkbk�k�k�m�m�m�m�m�m�m�m�m�m�m�m�m�m�o�o�o�o�o�o�o�ooooo�o�o�op�mbkiiii#i#iiiiii+i+iAiAiFiFi8i8i8i8i+i+iWi>g�e�v�v�v�v�w�wwwww$w$w#w#w#w#w�w�v�z�z�z�z�z�z�y�d�}�}�}�}�}�} B\����������       #     *� 
�   ~       |}   �     �     |�� �� ��� �� �� bYPS�R�hY� MYjSY`SYlSYnSY8SYFSYpSYfSYrSY	tSY
vSY� MS�y�d�   ~       ||}   � �    "     F�   ~       |}        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc @cfsecurity2ecfc1927877911$funcGETALLSECUREPROFILESETTINGSINARRAY  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / _setCurrentLineNo (I)V 1 2
 " 3 	component 5 CFIDE.adminapi.accessmanager 7 CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; 9 : coldfusion/runtime/CFPage <
 = ; set (Ljava/lang/Object;)V ? @ coldfusion/runtime/Variable B
 C A _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; E F
 " G checkRootAdminUser I java/lang/Object K _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; M N
 " O java Q  coldfusion.server.ServiceFactory S getSecurityService U "getAllSecureProfileSettingsInArray W java/lang/String Y metaData Ljava/lang/Object; [ \	  ] false _ &coldfusion/runtime/AttributeCollection a name c access e public g output i hint k )Returns all settings from Secure Profile. m 
Parameters o ([Ljava/lang/Object;)V  q
 b r getMetadata ()Ljava/lang/Object; this BLcfsecurity2ecfc1927877911$funcGETALLSECUREPROFILESETTINGSINARRAY; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       [ \     t u  y   "     � ^�    x        v w    z {  y   !     X�    x        v w    | }  y         �    x        v w    ~   y   #     � Z�    x        v w    � �  y  �     �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:
-]� 4-68� >� D-_� 4--
� HJ� L� PW-`� 4--`� 4-RT� >V� L� P� D-a� 4--� HX� L� P��    x   z    � v w     � � �    � � \    � � �    � � �    � � �    � � \    � - .    �  �    �  � 	   �  � 
   �  �  �   � %   \ 4 ] = ] = ] ? ] ? ] < ] < ] < ] < ] 4 ] 4 ] N _ N _ M _ M _ M _ ^ ` n ` n ` p ` p ` m ` m ` f ` f ` f ` f ` ^ ` � a � a � a � a � a � a � a M ^     y   #     *� 
�    x        v w    �   y   f     H� bY
� LYdSYXSYfSYhSYjSY`SYlSYnSYpSY	� LS� s� ^�    x       H v w    � {  y   !     `�    x        v w        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc /cfsecurity2ecfc1927877911$funcISINTERNALSANDBOX  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;  	   getOut ()Ljavax/servlet/jsp/JspWriter;   ! javax/servlet/jsp/JspContext #
 $ " parent Ljavax/servlet/jsp/tagext/Tag; & '	  ( 	DIRECTORY * getVariable  (I)Lcoldfusion/runtime/Variable; , - %coldfusion/runtime/ArgumentCollection /
 0 . _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; 2 3
  4 _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; 6 7
  8 _setCurrentLineNo (I)V : ;
  < GETCFIDEDIRECTORY > _get @ 7
  A getCFIDEDirectory C java/lang/Object E 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; G H
  I _compare '(Ljava/lang/Object;Ljava/lang/Object;)D K L
  M _Object (Z)Ljava/lang/Object; O P coldfusion/runtime/Cast R
 S Q _boolean (Ljava/lang/Object;)Z U V
 S W GETWEBINFDIRECTORY Y getWebInfDirectory [ true ] false _ java/lang/String a isInternalSandBox c metaData Ljava/lang/Object; e f	  g &coldfusion/runtime/AttributeCollection i name k access m public o output q hint s 9Returns true if the sandbox directory is CFIDE or WEB-INF u 
Parameters w REQUIRED y HINT { 'Specifies the directory of the sandbox. } NAME  	directory � ([Ljava/lang/Object;)V  �
 j � getMetadata ()Ljava/lang/Object; this 1Lcfsecurity2ecfc1927877911$funcISINTERNALSANDBOX; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       e f     � �  �   "     � h�    �        � �    � �  �   !     d�    �        � �    � �  �         �    �        � �    � �  �   (     
� bY+S�    �       
 � �    � �  �  �     �+� � :+� ,� :	-� � %:-� ):*+� 1� 5:
-+� 9-�� =-?� BD-� F� J� N�~�� TY� X� -W-+� 9-�� =-Z� B\-� F� J� N�~�� T� X� 	^�� `��    �   p    � � �     � � �    � � f    � � �    � � �    � � �    � � f    � & '    �  �    �  � 	   � * � 
 �   � #  � 4� 4� A� A� A� A� 4� 4� 4� 4� e� e� r� r� r� r� e� e� e� e� 4� 4� �� �� �� �� �� �� �� �� �� �� 4� 4�     �   #     *� 
�    �        � �    �   �   �     u� jY
� FYlSYdSYnSYpSYrSY`SYtSYvSYxSY	� FY� jY� FYzSY^SY|SY~SY�SY�S� �SS� �� h�    �       u � �    � �  �   !     `�    �        � �        ����  -� 
SourceFile /CFIDE/adminapi/security.cfc .cfsecurity2ecfc1927877911$funcSETDISABLEDCFTAG  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   TARGET  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   PERMISSIONS  ACCESSMANAGER ! 	TARGETPOS # SECURITY % 
TARGETTEMP ' WEBAPP ) ARRAYPOS + coldfusion/runtime/CfJspPage - pageContext #Lcoldfusion/runtime/NeoPageContext; / 0	 . 1 getOut ()Ljavax/servlet/jsp/JspWriter; 3 4 javax/servlet/jsp/JspContext 6
 7 5 parent Ljavax/servlet/jsp/tagext/Tag; 9 :	 . ; 	DIRECTORY = getVariable  (I)Lcoldfusion/runtime/Variable; ? @ %coldfusion/runtime/ArgumentCollection B
 C A _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; E F
  G TAG I / K set (Ljava/lang/Object;)V M N coldfusion/runtime/Variable P
 Q O _setCurrentLineNo (I)V S T
 . U ArrayNew (I)Ljava/util/List; W X coldfusion/runtime/CFPage Z
 [ Y 1 ]   _ 0 a 	component c CFIDE.adminapi.accessmanager e CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; g h
 [ i java k  coldfusion.server.ServiceFactory m getSecurityService o java/lang/Object q _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; s t
 . u _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; w x
 . y checkAdminRoles { coldfusion.sandboxsecurity } GETSECURABLECFTAGS  &(Ljava/lang/String;)Ljava/lang/Object; w �
 . � getSecurableCFTags � 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; � �
 . � _List $(Ljava/lang/Object;)Ljava/util/List; � � coldfusion/runtime/Cast �
 � � ArrayToList $(Ljava/util/List;)Ljava/lang/String; � �
 [ � java/lang/String � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 . � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � ListFindNoCase '(Ljava/lang/String;Ljava/lang/String;)I � �
 [ � _boolean (D)Z � �
 � � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 . � coldfusion/tagext/lang/ThrowTag � cfthrow � message � SECURITY_INVALIDTAG � _autoscalarize � �
 . � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 . � 
setMessage (Ljava/lang/String;)V � �
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 . � CONTEXTS � _resolve � �
 . � � x
 . � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
 . � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 [ � throw � setCalledName � �
 � � SANDBOX_NOT_FOUND � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
 . � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 [ � GETTAGPERMISSIONPOSITION � getTagPermissionPosition � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
 . � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
 . � * � _compare '(Ljava/lang/Object;Ljava/lang/String;)D 
 . *- LCase &(Ljava/lang/String;)Ljava/lang/String;
 [ concat

 � Left '(Ljava/lang/String;I)Ljava/lang/String;
 [ RemoveChars ((Ljava/lang/String;II)Ljava/lang/String;
 [ _Object (I)Ljava/lang/Object;
 � (Ljava/lang/Object;D)D 
 . 
ListAppend 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
 [ _structSetAt :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)V !
 ." _LhsResolve$ �
 .% _arraySetAt'!
 .( LOGAUDIT* logaudit, msg. java/lang/StringBuffer0  disabled use of a tag 2  �
14 append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;67
18  in the sandbox for directory : .< toString ()Ljava/lang/String;>?
 r@ )([Ljava/lang/Object;[Ljava/lang/Object;)V B
 CC b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object; �E
 .F setDisabledCFTagH metaData Ljava/lang/Object;JK	 L voidN falseP &coldfusion/runtime/AttributeCollectionR nameT accessV publicX outputZ 
returntype\ hint^ %Disables use of a tag in the sandbox.` 
Parametersb REQUIREDd truef HINTh HSpecifies the sandbox directory for which the specified tag is disabled.j NAMEl 	directoryn ([Ljava/lang/Object;)V p
Sq Specifies the tag to disable.s tagu getMetadata ()Ljava/lang/Object; this 0Lcfsecurity2ecfc1927877911$funcSETDISABLEDCFTAG; LocalVariableTable Code getName 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw32 !Lcoldfusion/tagext/lang/ThrowTag; throw33 LineNumberTable <clinit> 	getOutput 1       � �   JK   	 wx |   "     �M�   {       yz   }? |   "     I�   {       yz   ~ |         �   {       yz   �? |   "     O�   {       yz   �� |   -     � �Y>SYJS�   {       yz   �� |  
    T+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :+(� :+*� :+,� :-� 2� 8:-� <:*>� D� H:*J� D� H:L� R-6� V-� \� R^� R
`� Rb� R`� R-;� V-df� j� R-<� V--<� V-ln� jp� r� v� R->� V--� z|� rY~S� vW-@� V-@� V-@� V-�� ��-� r� �� �� �-� �YJS� �� �� ��� ��� @-� � � �� �:-A� V��-�� �� �� Ķ �� �� ҙ �-F� V--� �Y�S� �-� ٸ ݸ �-� �Y>S� �� �� ��� H-� �!� �� �:-H� V� ���-� �� �� Ķ �� �� ҙ �-L� V--� �Y�S� �� rY-� �SY->� �S� � � R-P� V-�� ��-� rY-� �SY->� �S� �� R
---� ٶ �� �� �YS� �� R-
� ����� 9
� R
-
� ٸ �-W� V-J� �� ��	�� R� �-Y� V-
� ٸ ����� �-[� V-
� ٸ ��� R-\� V-� ٸ �-\� V-J� �� ��	� ��� R-� ���� B-a� V-� ٸ �-a� V-J� �� ��	�� R
-� ٸ ��� R---� ٶ �� �� �YS-
� ٶ#-� �Y�S�&� rY-� �SY->� �S-� ٸ)-m� V-+� �--� CY� �Y/S� rY�1Y3�5-� �YJS� �� ��9;�9-� �Y>S� �� ��9=�9�AS�D�GW�   {   �   Tyz    T��   T�K   T��   T��   T��   T�K   T 9 :   T �   T � 	  T � 
  T �   T !�   T #�   T %�   T '�   T )�   T +�   T =�   T I�   T��   T�� �  �1  1 �5 �5 �5 �5 �5 �5 �5 �6 �6 �6 �6 �6 �6 �6 �6 �6 �7 �7 �7 �7 �7 �7 �7 �8 �8 �8 �8 �8 �8 �8 �9 �9 �9 �9 �9 �9 �9 �: �: �: �: �: �: �: �; �; �; �; �; �; �; �; �; �; �; �< �< �< �< �< �< �< �< �< �< �< �< �< �> �>>> �> �> �> �>#@#@#@#@#@#@#@#@#@#@9@9@9@9@#@#@#@#@#@#@tAtAtAtAWA#@�F�F�F�F�F�F�F�F�F�F�F�F�F�F�F�F�F�F�H�H�H�H�H�F L L5L5L>L>LLLLLLLLWPWPfPfPoPoPWPWPWPWPNP�Q�Q~Q~Q~Q~Q|Q�T�T�T�T�V�V�V�V�V�W�W�W�W�W�W�W�W�W�W�W�W�W�W�W�W�W�Y�Y�Y�Y�Y�Y�Y�Y�Y�Y[[[[[[[[[[[[�[\\\\.\.\.\.\.\.\.\.\\\\\\C^C^I^I^[a[a[a[akakakakakakakaka[a[a[a[aRabb�b�b�b�bbbbb}bC^�Y�Y�T�g�g�g�g�g�g�g�k�k�k�k�k�k�k�k�k�k�k�E�m�mmmmmmmmm&m&m,m,m,m,m,m,mAmAmmm�m�m�m�m    |   #     *� 
�   {       yz   �  |   �     ��� �� ��SY� rYUSYISYWSYYSY[SYQSY]SYOSY_SY	aSY
cSY� rY�SY� rYeSYgSYiSYkSYmSYoS�rSY�SY� rYeSYgSYiSYtSYmSYvS�rSS�r�M�   {       �yz   �? |   "     Q�   {       yz        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc %cfsecurity2ecfc1927877911$funcGETUSER  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   U  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   ACCESSMANAGER  SECURITY ! USER # coldfusion/runtime/CfJspPage % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	 & ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/JspContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	 & 3 USERNAME 5 string 7 getVariable  (I)Lcoldfusion/runtime/Variable; 9 : %coldfusion/runtime/ArgumentCollection <
 = ; 3coldfusion/tagext/validation/CFTypeValidatorFactory ? STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; A B	 @ C _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; E F
  G _setCurrentLineNo (I)V I J
 & K 	StructNew !()Lcoldfusion/util/FastHashtable; M N coldfusion/runtime/CFPage P
 Q O set (Ljava/lang/Object;)V S T coldfusion/runtime/Variable V
 W U 	component Y CFIDE.adminapi.accessmanager [ CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; ] ^
 Q _ java a  coldfusion.server.ServiceFactory c getSecurityService e java/lang/Object g _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; i j
 & k _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; m n
 & o checkRootAdminUser q arguments.username s 	IsDefined (Ljava/lang/String;)Z u v
 Q w getAuthorizedUser y String { java/lang/String } _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object;  �
 & � JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; � �
 Q � true � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 & � PASSWORD � DESCRIPTION � 	ENABLEDDS � FILEPERMISSIONS � SERVICES � EXPOSEDSERVICES � 
user.roles � ROLES � _autoscalarize � n
 & � getAuthorizedUsers � getUser � metaData Ljava/lang/Object; � �	  � struct � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � :Get all users or get single user by specifying a username. � 
Parameters � REQUIRED � TYPE � HINT � -Specifies the username of the user to return. � NAME � username � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this 'Lcfsecurity2ecfc1927877911$funcGETUSER; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       � �   	  � �  �   "     � ��    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   !     ��    �        � �    � �  �   (     
� ~Y6S�    �       
 � �    � �  �  �    +� � :+� ,� :	+� :
+ � :+"� :+$� :-� *� 0:-� 4:*68� >� D� H:
-	B� L� R� X-	C� L� R� X-	D� L-Z\� `� X-	E� L--	E� L-bd� `f� h� l� X-	G� L--� pr� h� lW-	I� L-t� x�6-	K� L--� pz� hY-	K� L-|-� ~Y6S� �� �SY�S� l� X-
� ~Y6S-� ~Y6S� �� �-
� ~Y�S-� ~Y�S� �� �-
� ~Y�S-� ~Y�S� �� �-
� ~Y�S-� ~Y�S� �� �-
� ~Y�S-� ~Y�S� �� �-
� ~Y�S-� ~Y�S� �� �-	R� L-�� x� !-
� ~Y�S-� ~Y�S� �� �-
� ��� -	[� L--� p�� h� l��    �   �    � �     � �    � �    � �    � �    � �    � �    1 2     �     � 	    � 
    �    ! �    # �    5 �  �  � q  	> W	B `	B `	B `	B `	B W	B f	C o	C o	C o	C o	C f	C u	D 	D 	D �	D �	D ~	D ~	D ~	D ~	D u	D �	E �	E �	E �	E �	E �	E �	E �	E �	E �	E �	E �	E �	G �	G �	G �	G �	G �	I �	I �	I �	I �	K �	K �	K �	K �	K �	K �	K �	K	K	K �	K �	K �	K �	K �	K"	L"	L"	L"	L	L@	M@	M@	M@	M4	M^	N^	N^	N^	NR	N|	O|	O|	O|	Op	O�	P�	P�	P�	P�	P�	Q�	Q�	Q�	Q�	Q�	R�	R�	R�	R�	T�	T�	T�	T�	T�	R�	W�	W�	W�	W�	W
	[
	[		[		[		[		[		[ �	I W	A     �   #     *� 
�    �        � �    �   �   �     �� �Y� hY�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� hY� �Y� hY�SY�SY�SY8SY�SY�SY�SY�S� �SS� ̳ ��    �       � � �    � �  �   !     ��    �        � �        ����  -u 
SourceFile /CFIDE/adminapi/security.cfc 6cfsecurity2ecfc1927877911$funcSETDEFAULTFILEPERMISSION  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ST  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   PERMISSIONS  NEWDIR ! ACCESSMANAGER # SECURITY % I ' WILDCARDFOUND ) WEBAPP + coldfusion/runtime/CfJspPage - pageContext #Lcoldfusion/runtime/NeoPageContext; / 0	 . 1 getOut ()Ljavax/servlet/jsp/JspWriter; 3 4 javax/servlet/jsp/JspContext 6
 7 5 parent Ljavax/servlet/jsp/tagext/Tag; 9 :	 . ; 	DIRECTORY = getVariable  (I)Lcoldfusion/runtime/Variable; ? @ %coldfusion/runtime/ArgumentCollection B
 C A _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; E F
  G / I set (Ljava/lang/Object;)V K L coldfusion/runtime/Variable N
 O M _setCurrentLineNo (I)V Q R
 . S ArrayNew (I)Ljava/util/List; U V coldfusion/runtime/CFPage X
 Y W false [ 	StructNew !()Lcoldfusion/util/FastHashtable; ] ^
 Y _ _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; a b
 . c 1 e 	component g CFIDE.adminapi.accessmanager i CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; k l
 Y m java o  coldfusion.server.ServiceFactory q getSecurityService s java/lang/Object u _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; w x
 . y _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; { |
 . } checkAdminRoles  coldfusion.sandboxsecurity � java/lang/String � CONTEXTS � _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 . � a |
 . � _arrayGetAt 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
 . � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 Y � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � Trim &(Ljava/lang/String;)Ljava/lang/String; � �
 Y � Right '(Ljava/lang/String;I)Ljava/lang/String; � �
 Y � \ � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 . � _Object (Z)Ljava/lang/Object; � �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � FILESEP � java.lang.System � _set '(Ljava/lang/String;Ljava/lang/Object;)V � �
 . � { b
 . � getProperty � file.separator � concat � �
 � � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
 . � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � CLASS � _resolveAndAutoscalarize 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
 . � java.io.FilePermission � TARGET � <<ALL FILES>> � _structSetAt :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 . � true � E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 . � - � ACTION � read,write,execute,delete � _List $(Ljava/lang/Object;)Ljava/util/List; � �
 � � ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z � �
 Y � _double (Ljava/lang/Object;)D � �
 � � (D)Ljava/lang/Object; � �
 � � ArrayLen (Ljava/lang/Object;)I � �
 Y � (I)Ljava/lang/Object; � �
 � � '(Ljava/lang/Object;Ljava/lang/Object;)D � �
 . � DIRECTORYPERMISSIONEXISTS � 2(Lcoldfusion/runtime/Variable;I)Ljava/lang/Object; a �
 .  LICENSE getAppServerPlatform APPSERVER_SUNONE 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; �
 .	 ROOT_WEBINF_DIR GetPageContext %()Lcoldfusion/runtime/NeoPageContext;
 Y getServletContext getRealPath WEB-INF java/lang/StringBuffer (Ljava/lang/String;)V 
 FS append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;
  classes" toString ()Ljava/lang/String;$%
 v& read( lib* _LhsResolve, �
 .- _arraySetAt/ �
 .0 setDefaultFilePermission2 metaData Ljava/lang/Object;45	 6 void8 &coldfusion/runtime/AttributeCollection: name< access> private@ outputB 
returntypeD hintF IRemoves the wildcard and sets the permission for only the defined folder.H 
ParametersJ REQUIREDL HINTN .Specifies the directory to receive permission.P NAMER 	directoryT ([Ljava/lang/Object;)V V
;W getMetadata ()Ljava/lang/Object; this 8Lcfsecurity2ecfc1927877911$funcSETDEFAULTFILEPERMISSION; LocalVariableTable Code getName 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1      45   	 YZ ^   "     �7�   ]       [\   _% ^   "     3�   ]       [\   `a ^         �   ]       [\   b% ^   "     9�   ]       [\   cd ^   (     
� �Y>S�   ]       
[\   ef ^  � 	   �+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :+(� :+*� :+,� :-� 2� 8:-� <:*>� D� H:J� P-Z� T-� Z� P\� P
-\� T� `� P->� d� Pf� P-_� T-hj� n� P-`� T--`� T-pr� nt� v� z� P-a� T--� ~�� vY�S� zW-d� T--� �Y�S� �� vY-� �SY->� dS� �� �� P-h� T-h� T->� d� �� �� ��� ��~�� �Y� �� 0W-h� T-h� T->� d� �� �� �J� ��~�� �� �� -j� T->� d� �� �� P� R-�-m� T-p�� n� �-o� T->� d� �� �-o� T--�� ��� vY�S� z� �� �� Pf� P� �---� �� ĸ �� �Y�S� �и ��� �---� �� ĸ �� �Y�S� �Ը ��� �---� �� ĸ �� �Y�S-� �� �ڶ P
-|� T� `� P-
� �Y�Sж �-
� �Y�S-� �� �߶ �� �-
� �Y�S� �-�� T-� �� �-
� �� �W-� �� �c� � P-� �-s� T-� �� �� �� ��t|����-�\� �f� P� o---� �� ĸ �� �Y�S� �и ��� <---� �� ĸ �� �Y�S� �-� �� ��~�� -�ڶ �� 7- �� �X-� �-�� T-� �� �� �� ��t|���p-� �� ��� �Y� �� W-�� d� ��� �� �� �
-�� T� `� P-
� �Y�Sж �-
� �Y�S-� �� �-
� �Y�S� �-�� T-� �� �-
� �� �W
-�� T� `� P-
� �Y�Sж �-
� �Y�S-� �� �߶ �� �-
� �Y�S� �-�� T-� �� �-
� �� �W-�� T--� �� v� z-� �YS�
� ��~��k--�� T--�� T--�� T-�� v� z� vYS� z� �
-�� T� `� P-
� �Y�Sж �-
� �Y�S�Y-� d� ��-� d� ��!#�!�'� �-
� �Y�S)� �-�� T-� �� �-
� �� �W
-�� T� `� P-
� �Y�Sж �-
� �Y�S�Y-� d� ��-� d� ��!#�!-� d� ��!߶!�'� �-
� �Y�S)� �-�� T-� �� �-
� �� �W
-�� T� `� P-
� �Y�Sж �-
� �Y�S�Y-� d� ��-� d� ��!+�!�'� �-
� �Y�S)� �-�� T-� �� �-
� �� �W
-�� T� `� P-
� �Y�Sж �-
� �Y�S�Y-� d� ��-� d� ��!+�!-� d� ��!߶!�'� �-
� �Y�S)� �-ö T-� �� �-
� �� �W-� �Y�S�.� vY-� �SY->� dS-� ��1�   ]   �   �[\    �gh   �i5   �jk   �lm   �no   �p5   � 9 :   � q   � q 	  � q 
  � q   � !q   � #q   � %q   � 'q   � )q   � +q   � =q r  	&I  W tY vY vY vY vY tY tY {Z �Z �Z �Z �Z �Z �Z {Z {Z �[ �[ �[ �[ �[ �[ �[ �\ �\ �\ �\ �\ �\ �\ �] �] �] �] �] �] �] �^ �^ �^ �^ �^ �^ �^ �_ �_ �_ �_ �_ �_ �_ �_ �_ �_ �_ �` �` �` �` �` �` �` �` �` �` �` �` �` �a �aaa �a �a �a �add)d)d2d2ddddddd
dPhPhPhPhPhPhPhPh\h\hPhPh`h`hPhPhPhPh�h�h�h�h�h�h�h�h�h�h�h�h�h�h�h�h�h�hPhPh�j�j�j�j�j�j�j�j�j�m�m�m�m�m�m�m�m�m�o�o�o�o�o�o�o�o�o�ooo�o�o�o�o�o�o�o�o�oPhsssss u uuu8u8uFwFwBwBw^w^wlyly�y�y�y�yhy�z�z�z�z�z�|�|�|�|�|�}�}�}�}�}���������������������������������������Bwu�s�s�s�sss�s�s�s�s�ssssssssss6�6�6�6�3�=�=�=�=�;�I�I�E�E�a�a�o�o�k�k�����k�k�������������k�E�������������������������������;�����������������������������������������������.�.�.�.�"�C�C�C�C�7�O�O�O�O�X�X�O�O�O�k�k�k�k�b�}�}�}�}�q�������������������������������������������������������������������������2�2����� �E�E�E�E�<�W�W�W�W�K�l�l�l�l�y�y�y�y�����h�h�h�h�\�����������������������������������������������������������������������������������2�2�2�2�&�?�?�?�?�H�H�?�?�?�[�[�[�[�R�m�m�m�m�a���������������������~�~�~�~�r�����������������������������������������������������������$�$�$�$�1�1� � � � ���H�H�H�H�<�U�U�U�U�^�^�U�U�U���h�h�}�}�������������h�
b    ^   #     *� 
�   ]       [\   s  ^   �     ��;Y� vY=SY3SY?SYASYCSY\SYESY9SYGSY	ISY
KSY� vY�;Y� vYMSY�SYOSYQSYSSYUS�XSS�X�7�   ]       �[\   t% ^   !     \�   ]       [\        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc 9cfsecurity2ecfc1927877911$funcGETALLSECUREPROFILESETTINGS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / _setCurrentLineNo (I)V 1 2
 " 3 	component 5 CFIDE.adminapi.accessmanager 7 CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; 9 : coldfusion/runtime/CFPage <
 = ; set (Ljava/lang/Object;)V ? @ coldfusion/runtime/Variable B
 C A _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; E F
 " G checkRootAdminUser I java/lang/Object K _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; M N
 " O java Q  coldfusion.server.ServiceFactory S getSecurityService U getAllSecureProfileSettings W java/lang/String Y metaData Ljava/lang/Object; [ \	  ] false _ &coldfusion/runtime/AttributeCollection a name c access e public g output i hint k )Returns all settings from Secure Profile. m 
Parameters o ([Ljava/lang/Object;)V  q
 b r getMetadata ()Ljava/lang/Object; this ;Lcfsecurity2ecfc1927877911$funcGETALLSECUREPROFILESETTINGS; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       [ \     t u  y   "     � ^�    x        v w    z {  y   !     X�    x        v w    | }  y         �    x        v w    ~   y   #     � Z�    x        v w    � �  y  �     �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:
-T� 4-68� >� D-V� 4--
� HJ� L� PW-W� 4--W� 4-RT� >V� L� P� D-X� 4--� HX� L� P��    x   z    � v w     � � �    � � \    � � �    � � �    � � �    � � \    � - .    �  �    �  � 	   �  � 
   �  �  �   � %   S 4 T = T = T ? T ? T < T < T < T < T 4 T 4 T N V N V M V M V M V ^ W n W n W p W p W m W m W f W f W f W f W ^ W � X � X � X � X � X � X � X M U     y   #     *� 
�    x        v w    �   y   f     H� bY
� LYdSYXSYfSYhSYjSY`SYlSYnSYpSY	� LS� s� ^�    x       H v w    � {  y   !     `�    x        v w        ����  -� 
SourceFile /CFIDE/adminapi/security.cfc .cfsecurity2ecfc1927877911$funcENABLERDSSERVLET  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   SUCCESS  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   WEBX  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / true 1 set (Ljava/lang/Object;)V 3 4 coldfusion/runtime/Variable 6
 7 5   9 *coldfusion/runtime/TransientVariableHolder ; &(Lcoldfusion/runtime/NeoPageContext;)V  =
 < > _setCurrentLineNo (I)V @ A
 " B GetPageContext %()Lcoldfusion/runtime/NeoPageContext; D E coldfusion/runtime/CFPage G
 H F 
getRequest J java/lang/Object L _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; N O
 " P getRealPath R /WEB-INF T _String &(Ljava/lang/Object;)Ljava/lang/String; V W coldfusion/runtime/Cast Y
 Z X web.xml \ concat &(Ljava/lang/String;)Ljava/lang/String; ^ _ java/lang/String a
 b ` 
FileExists (Ljava/lang/String;)Z d e
 H f PATH h _set '(Ljava/lang/String;Ljava/lang/Object;)V j k
 " l java/lang/StringBuffer n SERVER p 
COLDFUSION r ROOTDIR t _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; v w
 " x (Ljava/lang/String;)V  z
 o { FS } _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object;  �
 " � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 o � wwwroot � WEB-INF � toString ()Ljava/lang/String; � �
 M � path � 	IsDefined � e
 H � DISABLERDSSERVLET � _get � �
 " � disableRDSServlet � 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; � �
 " � $class$coldfusion$tagext$lang$LockTag Ljava/lang/Class; coldfusion.tagext.lang.LockTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 " � coldfusion/tagext/lang/LockTag � 
rdsservlet � setName � z
 � � 	EXCLUSIVE � setType � z
 � � 
setTimeout � A
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � 
doStartTag ()I � �
 � � "class$coldfusion$tagext$io$FileTag coldfusion.tagext.io.FileTag � � �	  � coldfusion/tagext/io/FileTag � READ � 	setAction � z
 � � cffile � file � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 " � setFile � z
 � � webxml � setVariable � z
 � � setAddnewline � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 " � WEBXML � XmlParse 0(Ljava/lang/String;)Lcoldfusion/xml/XmlNodeList; � �
 H � LEN � web-app � _arrayGetAt C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
 " � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 Z � XMLCHILDREN � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; v �
 "  ArrayLen (Ljava/lang/Object;)I
 H _Object (D)Ljava/lang/Object;
 Z xmlChildren
 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; 
 " _Xml 0(Ljava/lang/Object;)Lcoldfusion/xml/XmlNodeList;
 Z servlet-mapping 
XmlElemNew L(Lcoldfusion/xml/XmlNodeList;Ljava/lang/String;)Lcoldfusion/xml/XmlNodeList;
 H _arraySetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V
 " D(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;)Ljava/lang/Object; �
 " _LhsResolve  �
 "! 1# servlet-name% :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)V'
 "( 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; �*
 "+ XMLTEXT- 
RDSServlet/ _structSetAt1'
 "2 24 url-pattern6 /CFIDE/main/ide.cfm8 doAfterBody: �
 �; doEndTag= �
 �> doCatch (Ljava/lang/Throwable;)V@A
 �B 	doFinallyD 
 �E WRITEG outputI ToStringK W
 HL \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object; �N
 "O 	setOutputQ 4
 �R falseT unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;VW coldfusion/runtime/NeoExceptionY
ZX t0 [Ljava/lang/String; Any^\]	 ` findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)Ibc
Zd CFCATCHf bindh k
 <i unbindk 
 <l enableRDSServletn metaData Ljava/lang/Object;pq	 r booleant &coldfusion/runtime/AttributeCollectionv namex accessz private| 
returntype~ hint� 1Enables the servlet that performs RDS processing.� 
Parameters� ([Ljava/lang/Object;)V �
w� getMetadata ()Ljava/lang/Object; this 0Lcfsecurity2ecfc1927877911$funcENABLERDSSERVLET; LocalVariableTable Code getName 	getAccess getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t12 ,Lcoldfusion/runtime/TransientVariableHolder; lock22  Lcoldfusion/tagext/lang/LockTag; mode22 I file21 Lcoldfusion/tagext/io/FileTag; t16 t17 t18 Ljava/lang/Throwable; t19 t20 lock24 mode24 file23 t24 t25 t26 t27 t28 t29 #Lcoldfusion/runtime/AbortException; t30 Ljava/lang/Exception; __cfcatchThrowable3 t32 t33 LineNumberTable java/lang/Throwable� !coldfusion/runtime/AbortException� java/lang/Exception� <clinit> 	getOutput 1       � �    � �   \]   pq   	 �� �   "     �s�   �       ��   � � �   "     o�   �       ��   � � �         �   �       ��   � � �   "     u�   �       ��   �� �   #     � b�   �       ��   �� �  � 
 "  �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:
2� 8:� 8� <Y-� &� ?:-�� C--�� C--�� C--�� C-� IK� M� QS� MYUS� Q� []� c� g� M-i-�� C--�� C--�� C-� IK� M� QS� MYUS� Q� []� c� m� �-�� C-� oY-q� bYsSYuS� y� [� |-~� �� [� ��� �-~� �� [� ��� �-~� �� [� �]� �� �� g� ]-i� oY-q� bYsSYuS� y� [� |-~� �� [� ��� �-~� �� [� ��� �-~� �� [� �]� �� �� m-�� C-�� ���-�� C-�� ��-� M� �W-� �� �� �:-�� C�� ��� �� �� �� �Y6�-� �� �� �:-�� Cж ���-i� �� [� ۶ �� �� �� �� � :��N�-�� C--� �� [� � 8-�-�� C--�� �� �� bY�S���c�	� m-� MY�SYSY-� �S-�� C--����--� MY�SYSY-� �S�� �� bY�S�"� MY$S-�� C--��&��)---� MY�SYSY-� �S�� �� bY�S�"$�,� �� bY.S0�3--� MY�SYSY-� �S�� �� bY�S�"� MY5S-�� C--��7��)---� MY�SYSY-� �S�� �� bY�S�"5�,� �� bY.S9�3�<����?� :� &���� � #:�C� � :� �:�F�-� �� �� �:-�� C�� ��� �� �� �� �Y6� -� �� �� �:-�� CH� ���-i� �� [� ۶ ��J-�� C--��M�P�S� �� �� � :� C� ���<����?� :� &� ��� � #:�C� � :� �:�F�� 
U� 8� V� \:�:�[:�a�e�      )           g�j
U� 8� �� � : �  �:!�m�!-
��� !�P)�V)�#&)��P8�V8�#&8�)58�8=8�{�����{�,��,�,�),�,1,� OPN�VN�#�N��N�KN� OPS�VS�#�S��S�KS� OP��V��#������K��N������� �  V "  ���    ���   ��q   ���   ���   ���   ��q   � - .   � �   � � 	  � � 
  � �   ���   ���   ���   ���   ��q   ��q   ���   ���   ��q   ���   ���   ���   ��q   ��q   ���   ���   ��q   ���   ���   ���   ���    ��q !�  v  � 4� 6� 6� 6� 6� 4� 4� ;� =� =� =� =� ;� ;� n� n� f� f� �� �� ^� ^� ^� ^� �� �� ^� ^� ^� ^� V� V� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � � ���������"�"�"�"�.�.� �� �� �� �� �� ��C�C�C�C�]�]�]�]�i�i�n�n�n�n�z�z���������?�?�?�?�<�<� �� V�����������������������������������1�1���`�`�`�`�_�_�_�_�V�}�}�y�y�y�y�y�y�����y�y�y�y�o�����������������������������������������������������������������/�/�4�4�:�:�%�%�S�S�f�f�f�f�$�v�v�{�{�����l�l�������������������������l��������������������� � � � ���V���b�b�i�i���������������������������I�B�B�B�B�@�@�@��������������� B�����������    �   #     *� 
�   �       ��   �  �   �     |�� �� �ʸ �� �� bY_S�a�wY� MYySYoSY{SY}SYJSYUSYSYuSY�SY	�SY
�SY� MS���s�   �       |��   � � �   "     U�   �       ��        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc 3cfsecurity2ecfc1927877911$funcGETALLEXPOSEDSERVICES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / _setCurrentLineNo (I)V 1 2
 " 3 	component 5 CFIDE.adminapi.accessmanager 7 CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; 9 : coldfusion/runtime/CFPage <
 = ; set (Ljava/lang/Object;)V ? @ coldfusion/runtime/Variable B
 C A java E  coldfusion.server.ServiceFactory G getSecurityService I java/lang/Object K _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; M N
 " O _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; Q R
 " S checkRootAdminUser U getAllExposedServices W java/lang/String Y metaData Ljava/lang/Object; [ \	  ] &coldfusion/runtime/AttributeCollection _ name a 
Parameters c ([Ljava/lang/Object;)V  e
 ` f getMetadata ()Ljava/lang/Object; this 5Lcfsecurity2ecfc1927877911$funcGETALLEXPOSEDSERVICES; LocalVariableTable Code getName ()Ljava/lang/String; getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 1       [ \     h i  m   "     � ^�    l        j k    n o  m   !     X�    l        j k    p q  m   #     � Z�    l        j k    r s  m  �     �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:
-�� 4-68� >� D-�� 4--�� 4-FH� >J� L� P� D-�� 4--
� TV� L� PW-�� 4--� TX� L� P��    l   z    � j k     � t u    � v \    � w x    � y z    � { |    � } \    � - .    �  ~    �  ~ 	   �  ~ 
   �  ~     � &  � 4� >� >� @� @� =� =� =� =� 4� 4� H� Z� Z� \� \� Y� Y� Q� Q� Q� Q� H� H� u� u� t� t� t� t� �� �� �� �� �� �� ��     m   #     *� 
�    l        j k    �   m   C     %� `Y� LYbSYXSYdSY� LS� g� ^�    l       % j k        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc 6cfsecurity2ecfc1927877911$funcGETTAGPERMISSIONPOSITION  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   PERMISSIONS  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  APOS ! coldfusion/runtime/CfJspPage # pageContext #Lcoldfusion/runtime/NeoPageContext; % &	 $ ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
 - + parent Ljavax/servlet/jsp/tagext/Tag; / 0	 $ 1 WEBAPP 3 getVariable  (I)Lcoldfusion/runtime/Variable; 5 6 %coldfusion/runtime/ArgumentCollection 8
 9 7 _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; ; <
  = 	DIRECTORY ? _setCurrentLineNo (I)V A B
 $ C ArrayNew (I)Ljava/util/List; E F coldfusion/runtime/CFPage H
 I G set (Ljava/lang/Object;)V K L coldfusion/runtime/Variable N
 O M 0 Q java S  coldfusion.server.ServiceFactory U CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; W X
 I Y getSecurityService [ java/lang/Object ] _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; _ `
 $ a java/lang/String c CONTEXTS e _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; g h
 $ i _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; k l
 $ m _arrayGetAt 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; o p
 $ q 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; s t
 I u I w 1 y _set '(Ljava/lang/String;Ljava/lang/Object;)V { |
 $ } C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; o 
 $ � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � CLASS � _resolveAndAutoscalarize 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
 $ � &coldfusion.tagext.GenericTagPermission � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 $ � _double (Ljava/lang/Object;)D � �
 � � _Object (D)Ljava/lang/Object; � �
 � � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; k �
 $ � ArrayLen (Ljava/lang/Object;)I � �
 I � (I)Ljava/lang/Object; � �
 � � '(Ljava/lang/Object;Ljava/lang/Object;)D � �
 $ � getTagPermissionPosition � metaData Ljava/lang/Object; � �	  � false � &coldfusion/runtime/AttributeCollection � name � access � private � output � hint � +Returns the index in the permissions array. � 
Parameters � REQUIRED � true � HINT � DSpecifies the name of the web application using the secured sandbox. � NAME � webapp � ([Ljava/lang/Object;)V  �
 � � @Specifies the sandbox directory for which the index is returned. � 	directory � getMetadata ()Ljava/lang/Object; this 8Lcfsecurity2ecfc1927877911$funcGETTAGPERMISSIONPOSITION; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       � �     � �  �   "     � ��    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   -     � dY4SY@S�    �        � �    � �  �  [    Q+� � :+� ,� :	+� :
+ � :+"� :-� (� .:-� 2:*4� :� >:*@� :� >:
-�� D-� J� PR� P-�� D--�� D-TV� Z\� ^� b� P
-	� D--� dYfS� j� ^Y-4� nSY-@� nS� r� v� P-xz� ~� H--
-x� n� �� �� dY�S� ��� ��� -x� n� P-x-x� n� �c� �� ~-x� n-	� D-
� �� �� �� ��t|����-� ���    �   �   Q � �    Q � �   Q � �   Q � �   Q � �   Q � �   Q � �   Q / 0   Q  �   Q  � 	  Q  � 
  Q  �   Q ! �   Q 3 �   Q ? �  �  Z V  � \� f� f� e� e� e� e� \� \� m� o� o� o� o� m� m� t� �� �� �� �� �� �� }� }� }� }� t� t� �	 �	 �	 �	 �	 �	 �	 �	 �	 �	 �	 �	 �	 �	 �	 �	 �	 �	 �	 �	 �	 �	 �	 �		
	
	
	
	
 �												!	!	.	.	.	.	!	!	 �	H	H	H	H	H	 �	      �   #     *� 
�    �        � �    �   �   �     �� �Y
� ^Y�SY�SY�SY�SY�SY�SY�SY�SY�SY	� ^Y� �Y� ^Y�SY�SY�SY�SY�SY�S� �SY� �Y� ^Y�SY�SY�SY�SY�SY�S� �SS� ϳ ��    �       � � �    � �  �   !     ��    �        � �        ����  -D 
SourceFile /CFIDE/adminapi/security.cfc /cfsecurity2ecfc1927877911$funcGETSECUREDFOLDERS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   AFILES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   PERMISSIONS  ACCESSMANAGER ! SECURITY # I % WEBAPP ' coldfusion/runtime/CfJspPage ) pageContext #Lcoldfusion/runtime/NeoPageContext; + ,	 * - getOut ()Ljavax/servlet/jsp/JspWriter; / 0 javax/servlet/jsp/JspContext 2
 3 1 parent Ljavax/servlet/jsp/tagext/Tag; 5 6	 * 7 	DIRECTORY 9 getVariable  (I)Lcoldfusion/runtime/Variable; ; < %coldfusion/runtime/ArgumentCollection >
 ? = _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; A B
  C / E set (Ljava/lang/Object;)V G H coldfusion/runtime/Variable J
 K I _setCurrentLineNo (I)V M N
 * O ArrayNew (I)Ljava/util/List; Q R coldfusion/runtime/CFPage T
 U S 1 W 	component Y CFIDE.adminapi.accessmanager [ CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; ] ^
 U _ java a  coldfusion.server.ServiceFactory c getSecurityService e java/lang/Object g _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; i j
 * k _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; m n
 * o checkAdminRoles q Ucoldfusion.sandboxsecurity,coldfusion.serversettings,coldfusion.serversettingssummary s false u java/lang/String w CONTEXTS y _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; { |
 * } _autoscalarize  n
 * � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
 * � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � _resolveAndAutoscalarize � |
 * � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 U � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 * � coldfusion/tagext/lang/ThrowTag � throw � setCalledName (Ljava/lang/String;)V � � coldfusion/tagext/GenericTag �
 � � cfthrow � message � SANDBOX_NOT_FOUND � &(Ljava/lang/String;)Ljava/lang/Object;  �
 * � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 * � 
setMessage � �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 * � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
 * � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 U � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
 * � CLASS � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
 * � java.io.FilePermission � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 * � _Object (Z)Ljava/lang/Object; � �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � coldfusion.vfs.VFilePermission � _List $(Ljava/lang/Object;)Ljava/util/List; � �
 � � ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z � �
 U � _double (Ljava/lang/Object;)D � �
 � � (D)Ljava/lang/Object; � �
 � � ArrayLen (Ljava/lang/Object;)I � �
 U � (I)Ljava/lang/Object; � �
 � � '(Ljava/lang/Object;Ljava/lang/Object;)D � �
 * � getSecuredFolders metaData Ljava/lang/Object;	  &coldfusion/runtime/AttributeCollection name	 access public output hint 4Returns an array of secured folders for the sandbox. 
Parameters REQUIRED true HINT GSpecifies the sandbox directory for which secured folders are returned. NAME 	directory! ([Ljava/lang/Object;)V #
$ getMetadata ()Ljava/lang/Object; this 1Lcfsecurity2ecfc1927877911$funcGETSECUREDFOLDERS; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw45 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getOutput 1       � �       &' +   "     ��   *       ()   ,- +   "     �   *       ()   ./ +         �   *       ()   01 +   (     
� xY:S�   *       
()   23 +  �    x+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :+(� :-� .� 4:-� 8:*:� @� D:F� L-,� P-� V� L
--� P-� V� LX� L-/� P-Z\� `� L-0� P--0� P-bd� `f� h� l� L-2� P--� pr� hYtSYvS� lW-4� P--� xYzS� ~-� �� �� �-� xY:S� �� �� ��� H-� �-� �� �:-6� P�� ���-�� �� ��� �� �� �� ș �-;� P--� xYzS� ~� hY-� �SY-:� �S� ˸ ϶ LX� L� �---� �� Ҹ �� xY�S� �ٸ ��~�� �Y� � .W---� �� Ҹ �� xY�S� �� ��~�� � � #-C� P-
� �� �--� �� Ҹ �W-� �� �c� �� L-� �->� P-� �� �� �� �t|���G-
� ���   *   �   x()    x45   x6   x78   x9:   x;<   x=   x 5 6   x >   x > 	  x > 
  x >   x !>   x #>   x %>   x '>   x 9>   x?@ A  � �  ( d+ f+ f+ f+ f+ d+ k, u, u, t, t, t, t, k, |- �- �- �- �- �- �- |- �. �. �. �. �. �. �/ �/ �/ �/ �/ �/ �/ �/ �/ �/ �0 �0 �0 �0 �0 �0 �0 �0 �0 �0 �0 �0 �2 �2 �2 �2 �2 �2 �2 �2 �2 �4 �444 �4 �4 �4 �44444 �4 �4 �4 �4 �4 �4P6P6P6P6,6 �4{;{;�;�;�;�;z;z;z;z;z;z;q;�>�>�>�>�>�A�A�A�A�A�A�A�A�A�A�A�A�A�AAA�A�A�A�A�A�ACCCC(C(C%C%CCCC�A7>7>7>7>@>@>7>7>7>7>5>H>H>U>U>U>U>H>H>�>oGoGoGoGoG d*    +   #     *� 
�   *       ()   B  +   �     ��� �� ��Y
� hY
SYSYSYSYSYvSYSYSYSY	� hY�Y� hYSYSYSYSY SY"S�%SS�%��   *       �()   C- +   !     v�   *       ()        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc /cfsecurity2ecfc1927877911$funcGETUSERDSPASSWORD  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / _setCurrentLineNo (I)V 1 2
 " 3 	component 5 CFIDE.adminapi.accessmanager 7 CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; 9 : coldfusion/runtime/CFPage <
 = ; set (Ljava/lang/Object;)V ? @ coldfusion/runtime/Variable B
 C A java E  coldfusion.server.ServiceFactory G getSecurityService I java/lang/Object K _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; M N
 " O _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; Q R
 " S checkAdminRoles U :coldfusion.serversettings,coldfusion.serversettingssummary W false Y isRDSSecurityEnabled [ java/lang/String ] getUseRDSPassword _ metaData Ljava/lang/Object; a b	  c &coldfusion/runtime/AttributeCollection e name g access i public k output m hint o HChecks whether a Remote Development Services (RDS) password is required. q 
Parameters s ([Ljava/lang/Object;)V  u
 f v getMetadata ()Ljava/lang/Object; this 1Lcfsecurity2ecfc1927877911$funcGETUSERDSPASSWORD; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       a b     x y  }   "     � d�    |        z {    ~   }   !     `�    |        z {    � �  }         �    |        z {    � �  }   #     � ^�    |        z {    � �  }  �     �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:
- �� 4-68� >� D- �� 4-- �� 4-FH� >J� L� P� D- �� 4--
� TV� LYXSYZS� PW- �� 4--� T\� L� P��    |   z    � z {     � � �    � � b    � � �    � � �    � � �    � � b    � - .    �  �    �  � 	   �  � 
   �  �  �   � *   � 4 � > � > � @ � @ � = � = � = � = � 4 � 4 � H � Z � Z � \ � \ � Y � Y � Q � Q � Q � Q � H � H � u � u � � � � � � � � � t � t � t � � � � � � � � � � � � � � � t �     }   #     *� 
�    |        z {    �   }   f     H� fY
� LYhSY`SYjSYlSYnSYZSYpSYrSYtSY	� LS� w� d�    |       H z {    �   }   !     Z�    |        z {        ����  -� 
SourceFile /CFIDE/adminapi/security.cfc 6cfsecurity2ecfc1927877911$funcDELETEDISABLEDDATASOURCE  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   PERMISSIONS  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   	DSNEXISTS  ACCESSMANAGER ! ADDWILDCARD # SECURITY % I ' WEBAPP ) APOS + coldfusion/runtime/CfJspPage - pageContext #Lcoldfusion/runtime/NeoPageContext; / 0	 . 1 getOut ()Ljavax/servlet/jsp/JspWriter; 3 4 javax/servlet/jsp/JspContext 6
 7 5 parent Ljavax/servlet/jsp/tagext/Tag; 9 :	 . ; 	DIRECTORY = getVariable  (I)Lcoldfusion/runtime/Variable; ? @ %coldfusion/runtime/ArgumentCollection B
 C A _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; E F
  G 
DATASOURCE I / K set (Ljava/lang/Object;)V M N coldfusion/runtime/Variable P
 Q O _setCurrentLineNo (I)V S T
 . U ArrayNew (I)Ljava/util/List; W X coldfusion/runtime/CFPage Z
 [ Y   ] 1 _ true a false c 	component e CFIDE.adminapi.accessmanager g CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; i j
 [ k java m  coldfusion.server.ServiceFactory o getSecurityService q java/lang/Object s _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; u v
 . w _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; y z
 . { checkAdminRoles } coldfusion.sandboxsecurity  java/lang/String � CONTEXTS � _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 . � _autoscalarize � z
 . � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
 . � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � _resolveAndAutoscalarize � �
 . � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 [ � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 . � coldfusion/tagext/lang/ThrowTag � throw � setCalledName (Ljava/lang/String;)V � � coldfusion/tagext/GenericTag �
 � � cfthrow � message � SANDBOX_NOT_FOUND � &(Ljava/lang/String;)Ljava/lang/Object; � �
 . � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 . � 
setMessage � �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 . � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
 . � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 [ � <<All Datasources>> � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 . � ArrayLen (Ljava/lang/Object;)I � �
 [ � _Object (I)Ljava/lang/Object; � �
 � � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
 . � CLASS � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
 . � #coldfusion.sql.DataSourcePermission � _List $(Ljava/lang/Object;)Ljava/util/List; � �
 � � _int � �
 � � ArrayDeleteAt (Ljava/util/List;I)Z � �
 [ � _double (Ljava/lang/Object;)D � �
 � � (D)Ljava/lang/Object; �
 � (Ljava/lang/Object;D)D �
 . 
PERMISSION 	StructNew !()Lcoldfusion/util/FastHashtable;	

 [ _set '(Ljava/lang/String;Ljava/lang/Object;)V
 . _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V
 . TARGET * ACTION ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z
 [ '(Ljava/lang/Object;Ljava/lang/Object;)D �
 .  _boolean (Ljava/lang/Object;)Z"#
 �$ GETDISABLEDDATASOURCES& y �
 .( getDisabledDatasources* 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;,-
 .. (D)Z"0
 �1 _LhsResolve3 �
 .4 _arraySetAt :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)V67
 .8 LOGAUDIT: logaudit< msg> java/lang/StringBuffer@  removed a datasource B  �
AD append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;FG
AH G from the list of disabled datasource in the sandbox for the directory J .L toString ()Ljava/lang/String;NO
 tP )([Ljava/lang/Object;[Ljava/lang/Object;)V R
 CS b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object;,U
 .V deleteDisabledDatasourceX metaData Ljava/lang/Object;Z[	 \ void^ &coldfusion/runtime/AttributeCollection` nameb accessd publicf outputh 
returntypej hintl LRemoves a data source from the list of disabled data sources in the sandbox.n 
Parametersp REQUIREDr HINTt ESpecifies the sandbox directory for which the data source is enabled.v NAMEx 	directoryz ([Ljava/lang/Object;)V |
a} 0Specifies the name of the data source to enable. 
datasource� getMetadata ()Ljava/lang/Object; this 8Lcfsecurity2ecfc1927877911$funcDELETEDISABLEDDATASOURCE; LocalVariableTable Code getName 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw44 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getOutput 1       � �   Z[   	 �� �   "     �]�   �       ��   �O �   "     Y�   �       ��   �� �         �   �       ��   �O �   "     _�   �       ��   �� �   -     � �Y>SYJS�   �       ��   �� �  �    �+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :+(� :+*� :+,� :-� 2� 8:-� <:*>� D� H:*J� D� H:L� R
-�� V-� \� R^� R`� Rb� Rd� R-ƶ V-fh� l� R-Ƕ V--Ƕ V-np� lr� t� x� R-ɶ V--� |~� tY�S� xW-˶ V--� �Y�S� �-� �� �� �-� �Y>S� �� �� ��� H-� �,� �� �:-Ͷ V�� ���-�� ø ��� Ƕ �� �� ҙ �
-Ѷ V--� �Y�S� �� tY-� �SY->� �S� ո ٶ R-� �YJS� �۸ ��� �-׶ V-
� �� � � R� Z--
-� �� � �� �Y�S� �� ��� !-ܶ V--
� �� �-� �� �� �W-� �� g�� R-� ������--� V��-� �Y�S�-� �YS�-� �YS^�-� V-
� �� �-� øW�z`� R� {--
-� �� � �� �Y�S� �� ��� B--
-� �� � �� �YS� �-� �YJS� ��!�~�� 
b� R-� �� c�� R-� �-� V-
� �� � �!�t|���d-� ��%�� t--�� V��-� �Y�S�-� �YS-� �YJS� ��-� �YS^�-�� V-
� �� �-� øW-� V-� V-'�)+-� tY-� �Y>S� �S�/� ㇸ2�� 
b� R`� R� k--
-� �� � �� �Y�S� �� ��� 2--
-� �� � �� �YS� �� ��� 
d� R-� �� c�� R-� �-� V-
� �� � �!�t|���t-� ��%� h--� V��-� �Y�S�-� �YS�-� �YS^�-� V-
� �� �-� øW-� �Y�S�5� tY-� �SY->� �S-
� ��9-!� V-;�)=-� CY� �Y?S� tY�AYC�E-� �YJS� �� ��IK�I-� �Y>S� �� ��IM�I�QS�T�WW�   �   �   ���    ���   ��[   ���   ���   ���   ��[   � 9 :   � �   � � 	  � � 
  � �   � !�   � #�   � %�   � '�   � )�   � +�   � =�   � I�   ��� �  *�  � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ���� �� �� ����%�%�����1�1�1�1�������o�o�o�o�K�������������������������������������������������� � �������*�*�*�*�3�3�3�3�)�)�)���B�B�B�B�K�K�B�B�B�B�@�S�S�Y�Y���m�m�m�m�b���������s���������������������������������������������������������������������������4�4�4�4�2�����;�;�;�;�D�D�;�;�;�;�9�L�L�Y�Y�Y�Y�L�L���s�s�s�s�s�s�����������������������������������������������������������s�          22220 99997EEAA]]kkgg�������gA�������������������7�������������!!!!----66---���AAVV__ffffA ��v!v!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!v!v!v!v!    �   #     *� 
�   �       ��   �  �   �     ��� �� ��aY� tYcSYYSYeSYgSYiSYdSYkSY_SYmSY	oSY
qSY� tY�aY� tYsSYbSYuSYwSYySY{S�~SY�aY� tYsSYbSYuSY�SYySY�S�~SS�~�]�   �       ���   �O �   !     d�   �       ��        ����  -Q 
SourceFile /CFIDE/adminapi/security.cfc /cfsecurity2ecfc1927877911$funcGETDISABLEDCFTAGS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   	ADISABLED  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   PERMISSIONS  AENABLEDTAGS ! ACCESSMANAGER # AENABLED % ANEWENABLED ' SECURITY ) WEBAPP + coldfusion/runtime/CfJspPage - pageContext #Lcoldfusion/runtime/NeoPageContext; / 0	 . 1 getOut ()Ljavax/servlet/jsp/JspWriter; 3 4 javax/servlet/jsp/JspContext 6
 7 5 parent Ljavax/servlet/jsp/tagext/Tag; 9 :	 . ; 	DIRECTORY = getVariable  (I)Lcoldfusion/runtime/Variable; ? @ %coldfusion/runtime/ArgumentCollection B
 C A _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; E F
  G / I set (Ljava/lang/Object;)V K L coldfusion/runtime/Variable N
 O M _setCurrentLineNo (I)V Q R
 . S ArrayNew (I)Ljava/util/List; U V coldfusion/runtime/CFPage X
 Y W 	component [ CFIDE.adminapi.accessmanager ] CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; _ `
 Y a java c  coldfusion.server.ServiceFactory e getSecurityService g java/lang/Object i _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; k l
 . m _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; o p
 . q checkAdminRoles s Ucoldfusion.sandboxsecurity,coldfusion.serversettings,coldfusion.serversettingssummary u false w java/lang/String y CONTEXTS { _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; } ~
 .  _autoscalarize � p
 . � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
 . � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � _resolveAndAutoscalarize � ~
 . � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 Y � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 . � coldfusion/tagext/lang/ThrowTag � throw � setCalledName (Ljava/lang/String;)V � � coldfusion/tagext/GenericTag �
 � � cfthrow � message � SANDBOX_NOT_FOUND � &(Ljava/lang/String;)Ljava/lang/Object; � �
 . � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 . � 
setMessage � �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 . � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
 . � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 Y � ARRAYPOS � GETTAGPERMISSIONPOSITION � o �
 . � getTagPermissionPosition � 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; � �
 . � _set '(Ljava/lang/String;Ljava/lang/Object;)V � �
 . � TARGET � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
 . � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
 . � * � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 . � Left '(Ljava/lang/String;I)Ljava/lang/String; � �
 Y � *- � 	_contains '(Ljava/lang/String;Ljava/lang/String;)Z � �
 . � RemoveChars ((Ljava/lang/String;II)Ljava/lang/String; � �
 Y � ListToArray $(Ljava/lang/String;)Ljava/util/List; � �
 Y  _List $(Ljava/lang/Object;)Ljava/util/List;
 � 
textnocase asc 	ArraySort 7(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

 Y getDisabledCFTags metaData Ljava/lang/Object;	  &coldfusion/runtime/AttributeCollection name access public output hint AReturns an array of tags that have been disabled for the sandbox.  
Parameters" REQUIRED$ true& HINT( ESpecifies the sandbox directory for which disabled tags are returned.* NAME, 	directory. ([Ljava/lang/Object;)V 0
1 getMetadata ()Ljava/lang/Object; this 1Lcfsecurity2ecfc1927877911$funcGETDISABLEDCFTAGS; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw31 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getOutput 1       � �       34 8   "     ��   7       56   9: 8   "     �   7       56   ;< 8         �   7       56   => 8   (     
� zY>S�   7       
56   ?@ 8  � 
   �+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :+(� :+*� :+,� :-� 2� 8:-� <:*>� D� H:J� P-�� T-� Z� P-�� T-� Z� P
-�� T-� Z� P-�� T-� Z� P-�� T-� Z� P-�� T-\^� b� P- � T-- � T-df� bh� j� n� P-� T--� rt� jYvSYxS� nW-� T--� zY|S� �-� �� �� �-� zY>S� �� �� ��� H-� �� �� �:-� T�� ���-�� �� ��� �� �� �� ʙ �-	� T--� zY|S� �� jY-� �SY->� �S� ͸ Ѷ P-�-� T-ն ��-� jY-� �SY->� �S� ݶ �-�---Ӷ �� � �� zY�S� � �-� �� ��� � C-� T-� �� �� ��� �� '
-� T-� T-� �� �� ��� P-� T-
� ��	�W-
� ���   7   �   �56    �AB   �C   �DE   �FG   �HI   �J   � 9 :   � K   � K 	  � K 
  � K   � !K   � #K   � %K   � 'K   � )K   � +K   � =K   �LM N   �  � t� v� v� v� v� t� t� {� �� �� �� �� �� �� {� {� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �  �  �  �  �  �  �  �  �  �  �  �  � $$33BB3333NNNN222222����h2�	�	�	�	�	�	�	�	�	�	�	�	�	���������66<<PPPPYYPPPP]]PPuuuu~~uuuuuuuuePP6����������������2    8   #     *� 
�   7       56   O  8   �     ��� �� ��Y
� jYSYSYSYSYSYxSYSY!SY#SY	� jY�Y� jY%SY'SY)SY+SY-SY/S�2SS�2��   7       �56   P: 8   !     x�   7       56        ����  - q 
SourceFile /CFIDE/adminapi/security.cfc /cfsecurity2ecfc1927877911$funcGETCFIDEDIRECTORY  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;  	   getOut ()Ljavax/servlet/jsp/JspWriter;   ! javax/servlet/jsp/JspContext #
 $ " parent Ljavax/servlet/jsp/tagext/Tag; & '	  ( _setCurrentLineNo (I)V * +
  , /CFIDE/ . 
ExpandPath &(Ljava/lang/String;)Ljava/lang/String; 0 1 coldfusion/runtime/CFPage 3
 4 2 java/lang/String 6 getCFIDEDirectory 8 metaData Ljava/lang/Object; : ;	  < false > &coldfusion/runtime/AttributeCollection @ java/lang/Object B name D access F private H output J hint L Returns full path for CFIDE N 
Parameters P ([Ljava/lang/Object;)V  R
 A S getMetadata ()Ljava/lang/Object; this 1Lcfsecurity2ecfc1927877911$funcGETCFIDEDIRECTORY; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       : ;     U V  Z   "     � =�    Y        W X    [ \  Z   !     9�    Y        W X    ] ^  Z         �    Y        W X    _ `  Z   #     � 7�    Y        W X    a b  Z   �  
   4+� � :+� ,� :	-� � %:-� ):-�� --/� 5��    Y   f 
   4 W X     4 c d    4 e ;    4 f g    4 h i    4 j k    4 l ;    4 & '    4  m    4  m 	 n   & 	  � ,� ,� +� +� +� +� +� +�     Z   #     *� 
�    Y        W X    o   Z   f     H� AY
� CYESY9SYGSYISYKSY?SYMSYOSYQSY	� CS� T� =�    Y       H W X    p \  Z   !     ?�    Y        W X        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc *cfsecurity2ecfc1927877911$funcSETENABLERDS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - FLAG / boolean 1 getVariable  (I)Lcoldfusion/runtime/Variable; 3 4 %coldfusion/runtime/ArgumentCollection 6
 7 5 3coldfusion/tagext/validation/CFTypeValidatorFactory 9 BOOL_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; ; <	 : = _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; ? @
  A _setCurrentLineNo (I)V C D
   E 	component G CFIDE.adminapi.accessmanager I CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; K L coldfusion/runtime/CFPage N
 O M set (Ljava/lang/Object;)V Q R coldfusion/runtime/Variable T
 U S _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; W X
   Y checkRootAdminUser [ java/lang/Object ] _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; _ `
   a checkAdminRoles c 
standalone e *coldfusion/runtime/TransientVariableHolder g &(Lcoldfusion/runtime/NeoPageContext;)V  i
 h j _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; l m
   n _boolean (Ljava/lang/Object;)Z p q coldfusion/runtime/Cast s
 t r ENABLERDSSERVLET v W m
   x enableRDSServlet z 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; | }
   ~ DISABLERDSSERVLET � disableRDSServlet � unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; � � coldfusion/runtime/NeoException �
 � � t0 [Ljava/lang/String; java/lang/String � any � � �	  � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I � �
 � � ex � bind '(Ljava/lang/String;Ljava/lang/Object;)V � �
 h � unbind � 
 h � setEnableRDS � metaData Ljava/lang/Object; � �	  � void � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � +Specifies whether to enable or disable RDS. � 
Parameters � REQUIRED � true � TYPE � HINT � Specify true or false. � NAME � flag � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this ,Lcfsecurity2ecfc1927877911$funcSETENABLERDS; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t12 ,Lcoldfusion/runtime/TransientVariableHolder; t13 #Lcoldfusion/runtime/AbortException; t14 Ljava/lang/Exception; __cfcatchThrowable1 Ljava/lang/Throwable; t16 t17 LineNumberTable !coldfusion/runtime/AbortException � java/lang/Exception � java/lang/Throwable � <clinit> 	getOutput 1       � �    � �   	  � �  �   "     � ��    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   !     ��    �        � �    � �  �   (     
� �Y0S�    �       
 � �    � �  �  �    ,+� � :+� ,� :	+� :
-� $� *:-� .:*02� 8� >� B:
-F� F-HJ� P� V-G� F--
� Z\� ^� bW-H� F--
� Zd� ^YfS� bW� hY-� $� k:-0� o� u� %-M� F-w� y{-� ^� W� -Q� F-�� y�-� ^� W� M� S:�:� �:� �� ��                  �� �� �� � :� �:� ���  � � � � � � � � � � � � � �  �   �   , � �    , � �   , � �   , � �   , � �   , � �   , � �   , + ,   ,  �   ,  � 	  ,  � 
  , / �   , � �   , � �   , � �   , � �   , � �   , � �  �   � )  D ?F IF IF KF KF HF HF HF HF ?F ?F [G [G ZG ZG ZG ZG sH sH �H �H rH rH rH rH �K �K �M �M �M �M �M �Q �Q �Q �Q �Q �K �J �I     �   #     *� 
�    �        � �    �   �   �     �� �Y�S� �� �Y� ^Y�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� ^Y� �Y� ^Y�SY�SY�SY2SY�SY�SY�SY�S� �SS� ˳ ��    �       � � �    � �  �   !     ��    �        � �        ����  -� 
SourceFile /CFIDE/adminapi/security.cfc .cfsecurity2ecfc1927877911$funcSETSECUREDFOLDER  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ST  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   PERMISSIONS  ACT ! ACCESSMANAGER # ADDNEWFOLDER % SECURITY ' VFSFILEFACTORY ) PERMISSIONCLASS + WEBAPP - FILEPOS / VFILE 1 coldfusion/runtime/CfJspPage 3 pageContext #Lcoldfusion/runtime/NeoPageContext; 5 6	 4 7 getOut ()Ljavax/servlet/jsp/JspWriter; 9 : javax/servlet/jsp/JspContext <
 = ; parent Ljavax/servlet/jsp/tagext/Tag; ? @	 4 A 	DIRECTORY C getVariable  (I)Lcoldfusion/runtime/Variable; E F %coldfusion/runtime/ArgumentCollection H
 I G _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; K L
  M FOLDER O get (I)Ljava/lang/Object; Q R
 I S FILEREAD U true W put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; Y Z
 I [ 	FILEWRITE ] FILEEXECUTE _ 
FILEDELETE a / c set (Ljava/lang/Object;)V e f coldfusion/runtime/Variable h
 i g _setCurrentLineNo (I)V k l
 4 m ArrayNew (I)Ljava/util/List; o p coldfusion/runtime/CFPage r
 s q 	StructNew !()Lcoldfusion/util/FastHashtable; u v
 s w 0 y   { false } java  coldfusion.vfs.VFSFileFactory � CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; � �
 s � 	component � CFIDE.adminapi.accessmanager �  coldfusion.server.ServiceFactory � getSecurityService � java/lang/Object � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
 4 � _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
 4 � checkIfVFile � _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; � �
 4 � checkAdminRoles � coldfusion.sandboxsecurity � java/lang/String � CONTEXTS � _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 4 � � �
 4 � _arrayGetAt � Z
 4 � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � _resolveAndAutoscalarize � �
 4 � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 s � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 4 � coldfusion/tagext/lang/ThrowTag � throw � setCalledName (Ljava/lang/String;)V � � coldfusion/tagext/GenericTag �
 � � cfthrow � message � SANDBOX_NOT_FOUND � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 4 � 
setMessage � �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 4 � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
 4 � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 s � TARGET � <<ALL FILES>> � _set '(Ljava/lang/String;Ljava/lang/Object;)V � �
 4 � _boolean (Ljava/lang/Object;)Z � 
 � coldfusion.vfs.VFilePermission getFileObject getAbsolutePath _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V	

 4 ram:///- java.io.FilePermission _compare '(Ljava/lang/Object;Ljava/lang/String;)D
 4 _Object (Z)Ljava/lang/Object;
 � ISRAMALLFILES � �
 4 isRAMAllFiles 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; 
 4! I# 1% C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; �'
 4( CLASS* 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; �,
 4- '(Ljava/lang/Object;Ljava/lang/Object;)D/
 40 _List $(Ljava/lang/Object;)Ljava/util/List;23
 �4 _int (Ljava/lang/Object;)I67
 �8 ArrayDeleteAt (Ljava/util/List;I)Z:;
 s< _double (Ljava/lang/Object;)D>?
 �@ (D)Ljava/lang/Object;B
 �C ArrayLenE7
 sF R
 �H readJ ,L 
ListAppend J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;NO
 sP writeR executeT deleteV ACTIONX _arraySetAtZ

 4[ ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z]^
 s_ (Ljava/lang/Object;D)Da
 4b _LhsResolved �
 4e :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)VZg
 4h setSecuredFolderj metaData Ljava/lang/Object;lm	 n voidp &coldfusion/runtime/AttributeCollectionr namet accessv publicx outputz 
returntype| hint~ 2Makes a folder accessible for the secured sandbox.� 
Parameters� REQUIRED� HINT� @Specifies the sandbox directory for which the folder is enabled.� NAME� 	directory� ([Ljava/lang/Object;)V �
s� 9Specifies the directory path of the folder to be enabled.� folder� DEFAULT� Allow read permission.� fileRead� Allow write permission.� 	fileWrite� Allow execute permission.� fileExecute� Allow delete permission.� 
fileDelete� getMetadata ()Ljava/lang/Object; this 0Lcfsecurity2ecfc1927877911$funcSETSECUREDFOLDER; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw46 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getOutput 1       � �   lm   	 �� �   "     �o�   �       ��   �� �   "     k�   �       ��   �� �         �   �       ��   �� �   "     q�   �       ��   �� �   B     $� �YDSYPSYVSY^SY`SYbS�   �       $��   �� �  �    	+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :+(� :+*� :+,� :+.� :+0� :+2� :-� 8� >:-� B:*D� J� N:*P� J� N:� T� VX� \W� J:� T� ^X� \W� J:� T� `X� \W� J:� T� bX� \W� J:d� j-T� n-� t� j
-U� n� x� jz� j|� jX� j~� j|� j-[� n-��� �� j-]� n-��� �� j-^� n--^� n-��� ��� �� �� j-a� n--� ��� �Y-P� �S� �� j-c� n--� ��� �Y�S� �W-e� n--� �Y�S� �-� �� �� �-� �YDS� �� �� ��� H-� �.� �� �:-g� nԶ ���-� �� �Ը � �� �� � �-k� n--� �Y�S� �� �Y-� �SY-D� �S� � �� j-��� �-� ��� b� j-� �YPS-p� n--p� n--� �� �Y-� �YPS� �S� �� �� ��-�� �� � j-� �YPS� ����~�Y�� 7W-y� n-�-� �Y-� �YPS� �S�"�����0-$&� �� �---$� ��)� �� �Y+S�.-� ��1�~�� �-� �Y�� =W-�� n-�-� �Y---$� ��)� �� �Y�S�.S�"�� %-�� n--� ��5-$� ��9�=W� I---$� ��)� �� �Y�S�.���� "-�� n--� ��5-$� ��9�=W-$-$� ��Ac�D� �-$� �-|� n-� ��G�I�1�t|����-V� ��� !-�� n-� �� �KM�Q� j-^� ��� !-�� n-� �� �SM�Q� j-`� ��� !-�� n-� �� �UM�Q� j-b� ��� !-�� n-� �� �WM�Q� j-
� �Y+S-� ��-
� �Y�S-� �YPS� ��-
� �YYS-� ��-$&� �� �---$� ��)� �� �Y+S�.-� ��1�~��Y�� <W---$� ��)� �� �Y�S�.-� �YPS� ��1�~���� $-� �Y-$� �S-
� ��\~� j-$-$� ��Ac�D� �-$� �-�� n-� ��G�I�1�t|���.-� ��� -�� n-� ��5-
� ��`W�=-$-�� n-� ��G�I� ��---$� ��)� �� �Y+S�.-� ��1�~�� �-� ��� d-�� n-�-� �Y---$� ��)� �� �Y�S�.S�"�� "-�� n--� ��5-$� ��9�=W� Z---$� ��)� �� �Y�S�.-� �YPS� ��1�~�� "-�� n--� ��5-$� ��9�=W-$-$� ��Ag�D� �-$� ��c����-V� ��� !-Ķ n-� �� �KM�Q� j-^� ��� !-ƶ n-� �� �SM�Q� j-`� ��� !-ȶ n-� �� �UM�Q� j-b� ��� !-ʶ n-� �� �WM�Q� j-
� �Y+S-� ��-
� �Y�S-�� ��-
� �YYS-� ��-϶ n-� ��5-
� ��`W-� �Y�S�f� �Y-� �SY-D� �S-� ��i�   �     	��    	��   	�m   	��   	��   	��   	�m   	 ? @   	 �   	 � 	  	 � 
  	 �   	 !�   	 #�   	 %�   	 '�   	 )�   	 +�   	 -�   	 /�   	 1�   	 C�   	 O�   	 U�   	 ]�   	 _�   	 a�   	�� �  	�`  K �N �N �O �O �P �P �Q �QSSSSSSTTTTTTTT$U-U-U-U-U$U3V5V5V5V5V3V:W<W<W<W<W:WAXCXCXCXCXAXHYJYJYJYJYHYOZQZQZQZQZOZV[`[`[b[b[_[_[_[_[V[j]t]t]v]v]s]s]s]s]j]~^�^�^�^�^�^�^�^�^�^�^~^�a�a�a�a�a�a�a�a�a�c�c�c�c�c�c�c�e�e�e�e�e�e�e�eeeee�e�e�e�e�e�eFgFgFgFg"g�eqkqk�k�k�k�kpkpkpkpkpkpkgk�l�l�l�l�l�m�m�o�o�o�o�o�p�p�p�p�p�p�p�p�p�p�p	q	q	q	qquuuuu�myy)y)yyyyyDyDyUyUyDyDyDyDyDyDyDyDyyyz|z|z|z|v|�~�~�~�~�~�~�~�~�������������������������������������������&�&�"�"�?�?�Q�Q�Q�Q�Z�Z�Z�Z�P�P�P�"�"����~l|l|l|l|v|v|l|l|l|l|h|~|~|�|�|�|�|~|~|v|�����������������������������������������������������������������������������������$�$�9�9�9�9�B�B�E�E�9�9�9�9�0�$�[�[�[�[�N�p�p�p�p�d�����������������������������������������������������������������$�$�,�,�,�,��7�7�7�7�5���@�@�@�@�J�J�@�@�@�@�<�R�R�`�`�`�`�R�R���z�z�������������������z�������������������������������������������C�C�C�C�L�L�L�L�B�B�B��a�a�]�]�z�z�]�]�����������������������]���������������������������������������������������������������������������"�"�%�%�������.�.�C�C�C�C�L�L�O�O�C�C�C�C�:�.�X�X�m�m�m�m�v�v�y�y�m�m�m�m�d�X�������������������������������������������������y������������	�	�	�	���R    �   #     *� 
�   �       ��   �  �  �    �ĸ ʳ ̻sY� �YuSYkSYwSYySY{SY~SY}SYqSYSY	�SY
�SY� �Y�sY� �Y�SYXSY�SY�SY�SY�S��SY�sY� �Y�SYXSY�SY�SY�SY�S��SY�sY� �Y�SY~SY�SYXSY�SY�SY�SY�S��SY�sY� �Y�SY~SY�SYXSY�SY�SY�SY�S��SY�sY� �Y�SY~SY�SYXSY�SY�SY�SY�S��SY�sY� �Y�SY~SY�SYXSY�SY�SY�SY�S��SS���o�   �      ���   �� �   !     ~�   �       ��        ����  -� 
SourceFile /CFIDE/adminapi/security.cfc 3cfsecurity2ecfc1927877911$funcSETALLOWEDIPADDRESSES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   IPUTILS  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   ACCESSMANAGER  SECURITY ! IPLIST # MGR % IPADDR ' coldfusion/runtime/CfJspPage ) pageContext #Lcoldfusion/runtime/NeoPageContext; + ,	 * - getOut ()Ljavax/servlet/jsp/JspWriter; / 0 javax/servlet/jsp/JspContext 2
 3 1 parent Ljavax/servlet/jsp/tagext/Tag; 5 6	 * 7 DEBUGIP 9 string ; getVariable  (I)Lcoldfusion/runtime/Variable; = > %coldfusion/runtime/ArgumentCollection @
 A ? 3coldfusion/tagext/validation/CFTypeValidatorFactory C STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; E F	 D G _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; I J
  K _setCurrentLineNo (I)V M N
 * O ArrayNew (I)Ljava/util/List; Q R coldfusion/runtime/CFPage T
 U S set (Ljava/lang/Object;)V W X coldfusion/runtime/Variable Z
 [ Y   ] 	component _ CFIDE.adminapi.accessmanager a CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; c d
 U e _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; g h
 * i checkRootAdminUser k java/lang/Object m _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; o p
 * q java s  coldfusion.server.ServiceFactory u getSecurityService w -coldfusion.servicelayer.ExposedServiceManager y getInstance { _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; } ~
 *  _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � ListToArray $(Ljava/lang/String;)Ljava/util/List; � �
 U � I � 1 � _set '(Ljava/lang/String;Ljava/lang/Object;)V � �
 * � _arrayGetAt C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
 * � Trim &(Ljava/lang/String;)Ljava/lang/String; � �
 U � *coldfusion/runtime/TransientVariableHolder � &(Lcoldfusion/runtime/NeoPageContext;)V  �
 � � VALIDATEDIPADDR � getExpandedIPNValidate � } h
 * � IPVALID � true � unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; � � coldfusion/runtime/NeoException �
 � � t0 [Ljava/lang/String; java/lang/String � any � � �	  � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I � �
 � � ex � bind � �
 � � false � unbind � 
 � � _boolean (Ljava/lang/Object;)Z � �
 � � getAllowedIPList � ListFind '(Ljava/lang/String;Ljava/lang/String;)I � �
 U � (D)Z � �
 � � _Object (Z)Ljava/lang/Object; � �
 � � setAllowedIPList � 
ListAppend 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 U � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 * � coldfusion/tagext/lang/ThrowTag � throw � setCalledName (Ljava/lang/String;)V � � coldfusion/tagext/GenericTag �
 � � cfthrow � message � 	INVALIDIP � concat � �
 � � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
 * 
setMessage �
 � 	hasEndTag (Z)V
 �	 _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z
 * _double (Ljava/lang/Object;)D
 � (D)Ljava/lang/Object; �
 � ArrayLen (Ljava/lang/Object;)I
 U (I)Ljava/lang/Object; �
 � _compare '(Ljava/lang/Object;Ljava/lang/Object;)D
 * LOGAUDIT! g ~
 *# logaudit% msg' java/lang/StringBuffer) d added a list of one or more client IP addresses that should be allowed to invoke exposed services: +  �
*- _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object;/0
 *1 append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;34
*5 .7 toString ()Ljava/lang/String;9:
 n; )([Ljava/lang/Object;[Ljava/lang/Object;)V =
 A> 
_invokeUDF b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object;@A
 *B setAllowedIPAddressesD metaData Ljava/lang/Object;FG	 H voidJ &coldfusion/runtime/AttributeCollectionL nameN accessP publicR outputT 
returntypeV hintX aSets a list of one or more client IP addresses that should be allowed to invoke exposed services.Z 
Parameters\ REQUIRED^ Yes` TYPEb HINTd List of IP addresses.f NAMEh debugipj ([Ljava/lang/Object;)V l
Mm getMetadata ()Ljava/lang/Object; this 5Lcfsecurity2ecfc1927877911$funcSETALLOWEDIPADDRESSES; LocalVariableTable Code getName 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t17 ,Lcoldfusion/runtime/TransientVariableHolder; t18 #Lcoldfusion/runtime/AbortException; t19 Ljava/lang/Exception; __cfcatchThrowable7 Ljava/lang/Throwable; t21 t22 throw54 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable !coldfusion/runtime/AbortException� java/lang/Exception� java/lang/Throwable� <clinit> 	getOutput 1       � �    � �   FG   	 op t   "     �I�   s       qr   u: t   "     E�   s       qr   vw t         �   s       qr   x: t   "     K�   s       qr   yz t   (     
� �Y:S�   s       
qr   {| t  �    a+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :+(� :-� .� 4:-� 8:*:<� B� H� L:-	�� P-� V� \^� \-	�� P-`b� f� \-	�� P--� jl� n� rW-	�� P--	�� P-tv� fx� n� r� \-	�� P-tz� f� \
-	�� P--� j|� n� r� \-	�� P-:� �� �� �� \-��� ���-	�� P--�� �� �� �� �� \� �Y-� .� �:-�-	�� P--
� j�� nY-� �S� r� �-��� �� U� [:�:� �:� �� ��      (           �� �-�¶ �� �� � :� �:� ũ-�� �Y� ə :W-	�� P-	�� P--� j�� n� r� �-�� �� �� χ� ��� ָ ə N-	�� P--� j�� nY-	�� P-	�� P--� j�� n� r� �-�� �� �� �S� rW� b-�� �� ��� T-� �6� �� �:-	�� P� ���-�� �� �-� �� �� ����
�� �-�-�� ��c�� �-�� �-	�� P-� ���� �t|���-	�� P-"�$&-� AY� �Y(S� nY�*Y,�.-� �Y:S�2� ��68�6�<S�?�CW� N��N��N���������� s   �   aqr    a}~   aG   a��   a��   a��   a�G   a 5 6   a �   a � 	  a � 
  a �   a !�   a #�   a %�   a '�   a 9�   a��   a��   a��   a��   a��   a�G   a�� �  J �  	� g	� q	� q	� p	� p	� p	� p	� g	� g	� x	� z	� z	� z	� z	� x	� x	� 	� �	� �	� �	� �	� �	� �	� �	� �	� 	� 	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	�		�		�		�		�		�		�		�		� 	�	�	�	�	�	�/	�/	�,	�,	�,	�,	�,	�,	�,	�,	�#	�Y	�Y	�g	�g	�X	�X	�X	�X	�N	�w	�w	�w	�w	�t	��	��	��	��	��	�A	��	��	��	��	��	��	��	��	��	��	�		�		�		�		��	��	��	��	��	��	��	��	��	��	�,	�,	�I	�I	�H	�H	�H	�H	�[	�[	�[	�[	�H	�H	�+	�+	�+	�o	�o	�o	�o	�o	�o	��	��	��	��	��	��	��	��	��	��	�}	�o	�o	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	�	� �	�	�	�3	�3	�9	�9	�9	�9	�9	�9	�N	�N	�/	�/	�	�	�	�	�    t   #     *� 
�   s       qr   �  t   �     �� �Y�S� �� � �MY� nYOSYESYQSYSSYUSY�SYWSYKSYYSY	[SY
]SY� nY�MY� nY_SYaSYcSY<SYeSYgSYiSYkS�nSS�n�I�   s       �qr   �: t   !     °   s       qr        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc 5cfsecurity2ecfc1927877911$funcGETUSESINGLERDSPASSWORD  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / _setCurrentLineNo (I)V 1 2
 " 3 	component 5 CFIDE.adminapi.accessmanager 7 CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; 9 : coldfusion/runtime/CFPage <
 = ; set (Ljava/lang/Object;)V ? @ coldfusion/runtime/Variable B
 C A java E  coldfusion.server.ServiceFactory G getSecurityService I java/lang/Object K _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; M N
 " O _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; Q R
 " S checkAdminRoles U :coldfusion.serversettings,coldfusion.serversettingssummary W false Y getUseSingleRdsPassword [ java/lang/String ] getUseSingleRDSPassword _ metaData Ljava/lang/Object; a b	  c boolean e &coldfusion/runtime/AttributeCollection g name i access k public m output o 
returntype q hint s ^Indicates whether or not a user is is required in addition to a password for logging in to RDS u 
Parameters w ([Ljava/lang/Object;)V  y
 h z getMetadata ()Ljava/lang/Object; this 7Lcfsecurity2ecfc1927877911$funcGETUSESINGLERDSPASSWORD; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       a b   	  | }  �   "     � d�    �        ~     � �  �   !     `�    �        ~     � �  �         �    �        ~     � �  �   !     f�    �        ~     � �  �   #     � ^�    �        ~     � �  �  �     �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:
- ݶ 4-68� >� D- ޶ 4-- ޶ 4-FH� >J� L� P� D- � 4--
� TV� LYXSYZS� PW- � 4--� T\� L� P��    �   z    � ~      � � �    � � b    � � �    � � �    � � �    � � b    � - .    �  �    �  � 	   �  � 
   �  �  �   � *   � 4 � > � > � @ � @ � = � = � = � = � 4 � 4 � H � Z � Z � \ � \ � Y � Y � Q � Q � Q � Q � H � H � u � u � � � � � � � � � t � t � t � � � � � � � � � � � � � � � t �     �   #     *� 
�    �        ~     �   �   r     T� hY� LYjSY`SYlSYnSYpSYZSYrSYfSYtSY	vSY
xSY� LS� {� d�    �       T ~     � �  �   !     Z�    �        ~         ����  - � 
SourceFile /CFIDE/adminapi/security.cfc 4cfsecurity2ecfc1927877911$funcCREATEDEFAULTSANDBOXES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - _setCurrentLineNo (I)V / 0
   1 	component 3 CFIDE.adminapi.accessmanager 5 CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; 7 8 coldfusion/runtime/CFPage :
 ; 9 set (Ljava/lang/Object;)V = > coldfusion/runtime/Variable @
 A ? _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; C D
   E checkAdminRoles G java/lang/Object I coldfusion.sandboxsecurity K _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; M N
   O *coldfusion/runtime/TransientVariableHolder Q &(Lcoldfusion/runtime/NeoPageContext;)V  S
 R T SETSECURITYSANDBOX V &(Ljava/lang/String;)Ljava/lang/Object; C X
   Y setSecuritySandbox [ /* ] 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; _ `
   a unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; c d coldfusion/runtime/NeoException f
 g e t0 [Ljava/lang/String; java/lang/String k any m i j	  o findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I q r
 g s ex u bind '(Ljava/lang/String;Ljava/lang/Object;)V w x
 R y unbind { 
 R | GETCFIDEDIRECTORY ~ getCFIDEDirectory � t1 � j	  � GETWEBINFDIRECTORY � getWebInfDirectory � t2 � j	  � LOGAUDIT � logaudit � %coldfusion/runtime/ArgumentCollection � msg �  created default sandboxes. � )([Ljava/lang/Object;[Ljava/lang/Object;)V  �
 � � b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object; _ �
   � createDefaultSandboxes � metaData Ljava/lang/Object; � �	  � void � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � jCreates the default sandboxes needed to secure the ColdFusion Administrator and the WEB-INF system folder. � 
Parameters � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this 6Lcfsecurity2ecfc1927877911$funcCREATEDEFAULTSANDBOXES; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t11 ,Lcoldfusion/runtime/TransientVariableHolder; t12 #Lcoldfusion/runtime/AbortException; t13 Ljava/lang/Exception; __cfcatchThrowable4 Ljava/lang/Throwable; t15 t16 t17 t18 t19 __cfcatchThrowable5 t21 t22 t23 t24 t25 __cfcatchThrowable6 t27 t28 LineNumberTable !coldfusion/runtime/AbortException � java/lang/Exception � java/lang/Throwable � <clinit> 	getOutput 1       i j    � j    � j    � �   	  � �  �   "     � ��    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   !     ��    �        � �    � �  �   #     � l�    �        � �    � �  �  � 
   1+� � :+� ,� :	+� :
-� $� *:-� .:
-u� 2-46� <� B-v� 2--
� FH� JYLS� PW� RY-� $� U:-y� 2-W� Z\-� JY^S� bW� J� P:�:� h:� p� t�              v� z� �� � :� �:� }�� RY-� $� U:-~� 2-W� Z\-� JY-~� 2-� Z�-� J� bS� bW� L� R:�:� h:� �� t�                v� z� �� � :� �:� }�� RY-� $� U:-�� 2-W� Z\-� JY-�� 2-�� Z�-� J� bS� bW� L� R:�:� h:� �� t�                v� z� �� � :� �:� }�-�� 2-�� Z�-� �Y� lY�S� JY�S� �� �W�  q � � � q � � � q � � � � � � � � � � � � � �$ � �] �Z] �]b] ���� ���� ���� ���� ���� �  �  $   1 � �    1 � �   1 � �   1 � �   1 � �   1 � �   1 � �   1 + ,   1  �   1  � 	  1  � 
  1 � �   1 � �   1 � �   1 � �   1 � �   1 � �   1 � �   1 � �   1 � �   1 � �   1 � �   1 � �   1 � �   1 � �   1 � �   1 � �   1 � �   1 � �  �   � 9  t ,u 6u 6u 8u 8u 5u 5u 5u 5u ,u ,u Hv Hv Vv Vv Gv Gv Gv Gv qy qy �y �y qy qy qy ]x �~ �~~~~~ �~ �~ �~ �}������������������n� ]w	�	�%�%�	�	�	�	�     �   #     *� 
�    �        � �    �   �   �     x� lYnS� p� lYnS� �� lYnS� �� �Y� JY�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� JS� �� ��    �       x � �    � �  �   !     ��    �        � �        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc 6cfsecurity2ecfc1927877911$funcGETALLRUNTIMEPERMISSIONS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ALLRUNTIMEPERMISSIONS  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   ACCESSMANAGER  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / _setCurrentLineNo (I)V 1 2
 " 3 	component 5 CFIDE.adminapi.accessmanager 7 CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; 9 : coldfusion/runtime/CFPage <
 = ; set (Ljava/lang/Object;)V ? @ coldfusion/runtime/Variable B
 C A _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; E F
 " G checkAdminRoles I java/lang/Object K coldfusion.sandboxsecurity M _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; O P
 " Q ArrayNew (I)Ljava/util/List; S T
 = U _autoscalarize W F
 " X _List $(Ljava/lang/Object;)Ljava/util/List; Z [ coldfusion/runtime/Cast ]
 ^ \ getClassLoader ` ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z b c
 = d setContextClassLoader f  enableContextClassLoaderOverride h createSecurityManager j getenv.* l shutdownHooks n modifyThread p 
stopThread r getProtectionDomain t readFileDescriptor v writeFileDescriptor x accessClassInPackage.* z defineClassInPackage.* | accessDeclaredMembers ~ queuePrintJob � getStackTrace � "setDefaultUncaughtExceptionHandler � preferences � 
textnocase � asc � 	ArraySort 7(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z � �
 = � java/lang/String � getAllRuntimePermissions � metaData Ljava/lang/Object; � �	  � array � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � $Get array of all runtime permissions � 
Parameters � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this 8Lcfsecurity2ecfc1927877911$funcGETALLRUNTIMEPERMISSIONS; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       � �   	  � �  �   "     � ��    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   !     ��    �        � �    � �  �   #     � ��    �        � �    � �  �  �    #+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:-8� 4-68� >� D-;� 4--� HJ� LYNS� RW
-=� 4-� V� D->� 4-
� Y� _a� eW-?� 4-
� Y� _g� eW-@� 4-
� Y� _i� eW-A� 4-
� Y� _k� eW-B� 4-
� Y� _m� eW-C� 4-
� Y� _o� eW-D� 4-
� Y� _q� eW-E� 4-
� Y� _s� eW-F� 4-
� Y� _u� eW-G� 4-
� Y� _w� eW-H� 4-
� Y� _y� eW-I� 4-
� Y� _{� eW-J� 4-
� Y� _}� eW-K� 4-
� Y� _� eW-L� 4-
� Y� _�� eW-M� 4-
� Y� _�� eW-N� 4-
� Y� _�� eW-O� 4-
� Y� _�� eW-Q� 4-
� Y� _��� �W-
� Y��    �   z   # � �    # � �   # � �   # � �   # � �   # � �   # � �   # - .   #  �   #  � 	  #  � 
  #  �  �  : �  7 48 >8 >8 @8 @8 =8 =8 =8 =8 48 48 P; P; ^; ^; O; O; O; e= o= o= n= n= n= n= e= }> }> }> }> �> �> }> }> }> �? �? �? �? �? �? �? �? �? �@ �@ �@ �@ �@ �@ �@ �@ �@ �A �A �A �A �A �A �A �A �A �B �B �B �B �B �B �B �B �B �C �C �C �C �C �C �C �C �CDDDD
D
DDDDEEEE E EEEE-F-F-F-F6F6F-F-F-FCGCGCGCGLGLGCGCGCGYHYHYHYHbHbHYHYHYHoIoIoIoIxIxIoIoIoI�J�J�J�J�J�J�J�J�J�K�K�K�K�K�K�K�K�K�L�L�L�L�L�L�L�L�L�M�M�M�M�M�M�M�M�M�N�N�N�N�N�N�N�N�N�O�O�O�O�O�O�O�O�O	Q	Q	Q	QQQQQ	Q	Q	QSSSSS O9     �   #     *� 
�    �        � �    �   �   r     T� �Y� LY�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� LS� �� ��    �       T � �    � �  �   !     ��    �        � �        ����  -� 
SourceFile /CFIDE/adminapi/security.cfc 1cfsecurity2ecfc1927877911$funcDELETEDISABLEDCFTAG  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   TARGET  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   PERMISSIONS  ACCESSMANAGER ! AENABLEDCFFUNCTIONS # 	TARGETPOS % SECURITY ' 
TARGETTEMP ) WEBAPP + ARRAYPOS - coldfusion/runtime/CfJspPage / pageContext #Lcoldfusion/runtime/NeoPageContext; 1 2	 0 3 getOut ()Ljavax/servlet/jsp/JspWriter; 5 6 javax/servlet/jsp/JspContext 8
 9 7 parent Ljavax/servlet/jsp/tagext/Tag; ; <	 0 = 	DIRECTORY ? getVariable  (I)Lcoldfusion/runtime/Variable; A B %coldfusion/runtime/ArgumentCollection D
 E C _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; G H
  I TAG K / M set (Ljava/lang/Object;)V O P coldfusion/runtime/Variable R
 S Q _setCurrentLineNo (I)V U V
 0 W ArrayNew (I)Ljava/util/List; Y Z coldfusion/runtime/CFPage \
 ] [ GETDISABLEDCFTAGS _ _get &(Ljava/lang/String;)Ljava/lang/Object; a b
 0 c getDisabledCFTags e java/lang/Object g _autoscalarize i b
 0 j 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; l m
 0 n _List $(Ljava/lang/Object;)Ljava/util/List; p q coldfusion/runtime/Cast s
 t r ArrayToList $(Ljava/util/List;)Ljava/lang/String; v w
 ] x 1 z   | 	component ~ CFIDE.adminapi.accessmanager � CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; � �
 ] � java �  coldfusion.server.ServiceFactory � getSecurityService � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
 0 � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; a �
 0 � checkAdminRoles � coldfusion.sandboxsecurity � GETSECURABLECFTAGS � getSecurableCFTags � java/lang/String � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 0 � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 t � ListFindNoCase '(Ljava/lang/String;Ljava/lang/String;)I � �
 ] � _boolean (D)Z � �
 t � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 0 � coldfusion/tagext/lang/ThrowTag � cfthrow � message � SECURITY_INVALIDTAG � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 0 � 
setMessage (Ljava/lang/String;)V � �
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 0 � CONTEXTS � _resolve � �
 0 � i �
 0 � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
 0 � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 t � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 ] � throw � setCalledName � �
 � � SANDBOX_NOT_FOUND � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
 0 � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 ] � GETTAGPERMISSIONPOSITION � getTagPermissionPosition � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
 0 � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
 0  * _compare '(Ljava/lang/Object;Ljava/lang/String;)D
 0 Left '(Ljava/lang/String;I)Ljava/lang/String;	
 ]
 *- RemoveChars ((Ljava/lang/String;II)Ljava/lang/String;
 ] _Object (I)Ljava/lang/Object;
 t _int (Ljava/lang/Object;)I
 t ListDeleteAt	
 ] ListLen (Ljava/lang/String;)I
 ] (Ljava/lang/Object;D)D!
 0" concat &(Ljava/lang/String;)Ljava/lang/String;$%
 �& _structSetAt :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)V()
 0* _LhsResolve, �
 0- _arraySetAt/)
 00 LOGAUDIT2 logaudit4 msg6 java/lang/StringBuffer8  removed tag :  �
9< append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;>?
9@ = from the list of disabled tags in the sandbox for directory B .D toString ()Ljava/lang/String;FG
 hH )([Ljava/lang/Object;[Ljava/lang/Object;)V J
 EK b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object; lM
 0N deleteDisabledCFTagP metaData Ljava/lang/Object;RS	 T voidV falseX &coldfusion/runtime/AttributeCollectionZ name\ access^ public` outputb 
returntyped hintf <Removes a tag from the list of disabled tags in the sandbox.h 
Parametersj REQUIREDl truen HINTp =Specifies the sandbox directory for which the tag is enabled.r NAMEt 	directoryv ([Ljava/lang/Object;)V x
[y ,Specifies the name of the tag to be enabled.{ tag} getMetadata ()Ljava/lang/Object; this 3Lcfsecurity2ecfc1927877911$funcDELETEDISABLEDCFTAG; LocalVariableTable Code getName 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw34 !Lcoldfusion/tagext/lang/ThrowTag; throw35 LineNumberTable <clinit> 	getOutput 1       � �   RS   	 � �   "     �U�   �       ��   �G �   "     Q�   �       ��   �� �         �   �       ��   �G �   "     W�   �       ��   �� �   -     � �Y@SYLS�   �       ��   �� �  
a    �+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :+(� :+*� :+,� :+.� :-� 4� ::-� >:*@� F� J:*L� F� J:N� T-� X-� ^� T-�� X-�� X-`� df-� hY-@� kS� o� u� y� T{� T
}� T{� T}� T-�� X-�� �� T-�� X--�� X-��� ��� h� �� T-�� X--� ��� hY�S� �W-�� X-�� X-�� X-�� d�-� h� o� u� y-� �YLS� �� �� ��� ��� @-� �"� �� �:-�� X��-Ķ k� �� ȶ �� �� ֙ �-�� X--� �Y�S� �-� ݸ � �-� �Y@S� �� �� ��� H-� �#� �� �:-�� X� ���-� k� �� ȶ �� �� ֙ �-�� X--� �Y�S� �� hY-� �SY-@� kS� � �� T-�� X-�� d�-� hY-� �SY-@� kS� o� T
---� ݶ �� �� �YS�� T-
� ���� � �-�� X-
� ݸ ����� �-�� X-
� ݸ ��� T-�� X-� ݸ �-L� k� �� ��� T-�� X-� ݸ �-� ݸ�� T-�� X-� ݸ �� ��#�� 
� T� %
� T
-
� ݸ �-� ݸ ��'� T� 
� T---� ݶ �� �� �YS-
� ݶ+-� �Y�S�.� hY-� �SY-@� kS-� ݸ1-�� X-3� d5-� EY� �Y7S� hY�9Y;�=-� �YLS� �� ��AC�A-� �Y@S� �� ��AE�A�IS�L�OW�   �   �   ���    ���   ��S   ���   ���   ���   ��S   � ; <   � �   � � 	  � � 
  � �   � !�   � #�   � %�   � '�   � )�   � +�   � -�   � ?�   � K�   ���   ��� �  �7  z �~ �~ �~ �~ �~ �~ �~ � � � � � � � � � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ���������������3�3�A�A�2�2�2�2�]�]�]�]�]�]�]�]�]�]�s�s�s�s�]�]�]�]�]�]�����������]�������������������������������������/�/�/�/����Z�Z�o�o�x�x�Y�Y�Y�Y�Y�Y�P�����������������������������������������������������������������������������
�-�-�-�-�6�6�6�6�-�-�-�-�$�Q�Q�Q�Q�Z�Z�Z�Z�Q�Q�Q�Q�H�p�p�p�p�p�p�������������������������������������������������p��������������������������������������� � �����������:�:�@�@�@�@�@�@�U�U�[�[�[�[�[�[�p�p�6�6�����    �   #     *� 
�   �       ��   �  �   �     ��� �� ��[Y� hY]SYQSY_SYaSYcSYYSYeSYWSYgSY	iSY
kSY� hY�[Y� hYmSYoSYqSYsSYuSYwS�zSY�[Y� hYmSYoSYqSY|SYuSY~S�zSS�z�U�   �       ���   �G �   "     Y�   �       ��        ����  -' 
SourceFile /CFIDE/adminapi/security.cfc cfsecurity2ecfc1927877911  coldfusion/runtime/CFComponent  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   REQUEST Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   THIS   	   FACTORY   	    LICENSE " " 	  $ FS & & 	  ( com.macromedia.SourceModTime  R^�� pageContext #Lcoldfusion/runtime/NeoPageContext; - .	  / getOut ()Ljavax/servlet/jsp/JspWriter; 1 2 javax/servlet/jsp/JspContext 4
 5 3 parent Ljavax/servlet/jsp/tagext/Tag; 7 8	  9 LOCALE ; REQUEST.LOCALE = _setCurrentLineNo (I)V ? @
  A java C java.util.Locale E CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; G H coldfusion/runtime/CFPage J
 K I 
getDefault M java/lang/Object O _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; Q R
  S getLanguage U checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V W X
  Y  coldfusion.server.ServiceFactory [ set (Ljava/lang/Object;)V ] ^ coldfusion/runtime/Variable `
 a _ _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; c d
  e getLicenseService g java.io.File i _Map #(Ljava/lang/Object;)Ljava/util/Map; k l coldfusion/runtime/Cast n
 o m java/lang/String q SEPARATORCHAR s _resolveAndAutoscalarize 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; u v
  w 	VARIABLES y 
LOCALEFILE { java/lang/StringBuffer } resources/adminapi_  (Ljava/lang/String;)V  �
 ~ � 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; u �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 o � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 ~ � .cfm � toString ()Ljava/lang/String; � �
 P � _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � USERNAMEPASSWORDDELIM � | � E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � (class$coldfusion$tagext$lang$ImportedTag Ljava/lang/Class; "coldfusion.tagext.lang.ImportedTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � "coldfusion/tagext/lang/ImportedTag � l10n � /CFIDE/adminapi/customtags � admin � setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V � �
 � � &coldfusion/runtime/AttributeCollection � id � sandbox_not_found � var � file � ([Ljava/lang/Object;)V  �
 � � setAttributecollection (Ljava/util/Map;)V � �  coldfusion/tagext/lang/ModuleTag �
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � 
doStartTag ()I � �
 � � 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � sandbox not found. � write � � java/io/Writer �
 � � doAfterBody � �
 � � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � doEndTag � � #javax/servlet/jsp/tagext/TagSupport �
 � � doCatch (Ljava/lang/Throwable;)V � �
 � � 	doFinally � 
 � � sandbox_already_exists � sandbox already exists. � cannot_delete_system_sandboxes � *Not authorized to delete system sandboxes. � wrong_port_type � Awrong port type, valid options are: single, higher, lower, range. security_invalidfunction ?This function can not be added to the restricted function list. security_invalidTag 5This tag can not be added to the restricted tag list.	 error_invalidDirectory =Invalid Directory, please check your directory and try again. db_not_found Database not found. badIP Invalid IP address. 	invalidip Invalid IP Address: wrongSeedLength (Seed must be beween 8 and 500 characters _factor2 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object; 
 ! _factor3# 
 $ _factor4& 
 ' _factor5) 
 * _factor6, 
 - _factor7/ 
 0 deleteDisabledDatasource Lcoldfusion/runtime/UDFMethod; 6cfsecurity2ecfc1927877911$funcDELETEDISABLEDDATASOURCE4
5 	23	 7 DELETEDISABLEDDATASOURCE9 registerUDF 3(Ljava/lang/String;Lcoldfusion/runtime/UDFMethod;)V;<
 = setSecuritySandbox 0cfsecurity2ecfc1927877911$funcSETSECURITYSANDBOX@
A 	?3	 C SETSECURITYSANDBOXE setDisabledCFTag .cfsecurity2ecfc1927877911$funcSETDISABLEDCFTAGH
I 	G3	 K SETDISABLEDCFTAGM setRdsSecurityEnabled 3cfsecurity2ecfc1927877911$funcSETRDSSECURITYENABLEDP
Q 	O3	 S SETRDSSECURITYENABLEDU 
deleteUser (cfsecurity2ecfc1927877911$funcDELETEUSERX
Y 	W3	 [ 
DELETEUSER] checkRdsPassword .cfsecurity2ecfc1927877911$funcCHECKRDSPASSWORD`
a 	_3	 c CHECKRDSPASSWORDe getUseAdminPassword 1cfsecurity2ecfc1927877911$funcGETUSEADMINPASSWORDh
i 	g3	 k GETUSEADMINPASSWORDm getEnableSandboxSecurity 6cfsecurity2ecfc1927877911$funcGETENABLESANDBOXSECURITYp
q 	o3	 s GETENABLESANDBOXSECURITYu setAdminPassword .cfsecurity2ecfc1927877911$funcSETADMINPASSWORDx
y 	w3	 { SETADMINPASSWORD} setRDSPassword ,cfsecurity2ecfc1927877911$funcSETRDSPASSWORD�
� 	3	 � SETRDSPASSWORD� isRAMAllFiles +cfsecurity2ecfc1927877911$funcISRAMALLFILES�
� 	�3	 � ISRAMALLFILES� getAllAdminRoles .cfsecurity2ecfc1927877911$funcGETALLADMINROLES�
� 	�3	 � GETALLADMINROLES� getAllExposedServices 3cfsecurity2ecfc1927877911$funcGETALLEXPOSEDSERVICES�
� 	�3	 � GETALLEXPOSEDSERVICES� deleteDisabledCFTag 1cfsecurity2ecfc1927877911$funcDELETEDISABLEDCFTAG�
� 	�3	 � DELETEDISABLEDCFTAG� setDisabledDatasource 3cfsecurity2ecfc1927877911$funcSETDISABLEDDATASOURCE�
� 	�3	 � SETDISABLEDDATASOURCE� deleteDisabledCFFunction 6cfsecurity2ecfc1927877911$funcDELETEDISABLEDCFFUNCTION�
� 	�3	 � DELETEDISABLEDCFFUNCTION� setRdsEnabled +cfsecurity2ecfc1927877911$funcSETRDSENABLED�
� 	�3	 � SETRDSENABLED� disableRDSServlet /cfsecurity2ecfc1927877911$funcDISABLERDSSERVLET�
� 	�3	 � DISABLERDSSERVLET� getUseSingleRDSPassword 5cfsecurity2ecfc1927877911$funcGETUSESINGLERDSPASSWORD�
� 	�3	 � GETUSESINGLERDSPASSWORD� setUseRDSPassword /cfsecurity2ecfc1927877911$funcSETUSERDSPASSWORD�
� 	�3	 � SETUSERDSPASSWORD� setDisabledCFFunction 3cfsecurity2ecfc1927877911$funcSETDISABLEDCFFUNCTION�
� 	�3	 � SETDISABLEDCFFUNCTION� 
formatPort (cfsecurity2ecfc1927877911$funcFORMATPORT�
� 	�3	 � 
FORMATPORT� setAllowConcurrentAdminLogin :cfsecurity2ecfc1927877911$funcSETALLOWCONCURRENTADMINLOGIN�
� 	�3	 � SETALLOWCONCURRENTADMINLOGIN� isSecureProfile -cfsecurity2ecfc1927877911$funcISSECUREPROFILE�
� 	�3	 � ISSECUREPROFILE� setSecuredFolder .cfsecurity2ecfc1927877911$funcSETSECUREDFOLDER�
� 	�3	 � SETSECUREDFOLDER� getDisabledDatasources 4cfsecurity2ecfc1927877911$funcGETDISABLEDDATASOURCES 
 	�3	  GETDISABLEDDATASOURCES validateDirectory /cfsecurity2ecfc1927877911$funcVALIDATEDIRECTORY
	 	3	  VALIDATEDIRECTORY setUseSingleRDSPassword 5cfsecurity2ecfc1927877911$funcSETUSESINGLERDSPASSWORD
 	3	  SETUSESINGLERDSPASSWORD getDisabledCFTags /cfsecurity2ecfc1927877911$funcGETDISABLEDCFTAGS
 	3	  GETDISABLEDCFTAGS "getAllSecureProfileSettingsInArray @cfsecurity2ecfc1927877911$funcGETALLSECUREPROFILESETTINGSINARRAY 
! 	3	 # "GETALLSECUREPROFILESETTINGSINARRAY% getEnableRDS *cfsecurity2ecfc1927877911$funcGETENABLERDS(
) 	'3	 + GETENABLERDS- getDefaultSecuritySandbox 7cfsecurity2ecfc1927877911$funcGETDEFAULTSECURITYSANDBOX0
1 	/3	 3 GETDEFAULTSECURITYSANDBOX5 isInternalSandBox /cfsecurity2ecfc1927877911$funcISINTERNALSANDBOX8
9 	73	 ; ISINTERNALSANDBOX= deleteSecuredFolder 1cfsecurity2ecfc1927877911$funcDELETESECUREDFOLDER@
A 	?3	 C DELETESECUREDFOLDERE getAllSecureProfileSettings 9cfsecurity2ecfc1927877911$funcGETALLSECUREPROFILESETTINGSH
I 	G3	 K GETALLSECUREPROFILESETTINGSM createDefaultSandboxes 4cfsecurity2ecfc1927877911$funcCREATEDEFAULTSANDBOXESP
Q 	O3	 S CREATEDEFAULTSANDBOXESU isAllowConcurrentAdminLogin 9cfsecurity2ecfc1927877911$funcISALLOWCONCURRENTADMINLOGINX
Y 	W3	 [ ISALLOWCONCURRENTADMINLOGIN] disableSecureProfile 2cfsecurity2ecfc1927877911$funcDISABLESECUREPROFILE`
a 	_3	 c DISABLESECUREPROFILEe deleteAllowedIPAddresses 6cfsecurity2ecfc1927877911$funcDELETEALLOWEDIPADDRESSESh
i 	g3	 k DELETEALLOWEDIPADDRESSESm setSeed %cfsecurity2ecfc1927877911$funcSETSEEDp
q 	o3	 s SETSEEDu getDisabledCFFunctions 4cfsecurity2ecfc1927877911$funcGETDISABLEDCFFUNCTIONSx
y 	w3	 { GETDISABLEDCFFUNCTIONS} getUser %cfsecurity2ecfc1927877911$funcGETUSER�
� 	3	 � GETUSER� enableSecureProfile 1cfsecurity2ecfc1927877911$funcENABLESECUREPROFILE�
� 	�3	 � ENABLESECUREPROFILE� enableRDSServlet .cfsecurity2ecfc1927877911$funcENABLERDSSERVLET�
� 	�3	 � ENABLERDSSERVLET� getCFIDEDirectory /cfsecurity2ecfc1927877911$funcGETCFIDEDIRECTORY�
� 	�3	 � GETCFIDEDIRECTORY� getWebInfDirectory 0cfsecurity2ecfc1927877911$funcGETWEBINFDIRECTORY�
� 	�3	 � GETWEBINFDIRECTORY� setUser %cfsecurity2ecfc1927877911$funcSETUSER�
� 	�3	 � SETUSER� getSecuredIPPorts /cfsecurity2ecfc1927877911$funcGETSECUREDIPPORTS�
� 	�3	 � GETSECUREDIPPORTS� setSecuredIPPort .cfsecurity2ecfc1927877911$funcSETSECUREDIPPORT�
� 	�3	 � SETSECUREDIPPORT� getTagPermissionPosition 6cfsecurity2ecfc1927877911$funcGETTAGPERMISSIONPOSITION�
� 	�3	 � GETTAGPERMISSIONPOSITION� getFunctionPermissionPosition ;cfsecurity2ecfc1927877911$funcGETFUNCTIONPERMISSIONPOSITION�
� 	�3	 � GETFUNCTIONPERMISSIONPOSITION� setAllowedIPAddresses 3cfsecurity2ecfc1927877911$funcSETALLOWEDIPADDRESSES�
� 	�3	 � SETALLOWEDIPADDRESSES� getSecurableCFFunctions 5cfsecurity2ecfc1927877911$funcGETSECURABLECFFUNCTIONS�
� 	�3	 � GETSECURABLECFFUNCTIONS� isLoginUserIdRequired 3cfsecurity2ecfc1927877911$funcISLOGINUSERIDREQUIRED�
� 	�3	 � ISLOGINUSERIDREQUIRED� deleteSecuritySandbox 3cfsecurity2ecfc1927877911$funcDELETESECURITYSANDBOX�
� 	�3	 � DELETESECURITYSANDBOX� getSecuritySandboxes 2cfsecurity2ecfc1927877911$funcGETSECURITYSANDBOXES�
� 	�3	 � GETSECURITYSANDBOXES� getAllRuntimePermissions 6cfsecurity2ecfc1927877911$funcGETALLRUNTIMEPERMISSIONS�
� 	�3	 � GETALLRUNTIMEPERMISSIONS� setDefaultFilePermission 6cfsecurity2ecfc1927877911$funcSETDEFAULTFILEPERMISSION 
 	�3	  SETDEFAULTFILEPERMISSION checkAdminPassword 0cfsecurity2ecfc1927877911$funcCHECKADMINPASSWORD
	 	3	  CHECKADMINPASSWORD getUseRDSPassword /cfsecurity2ecfc1927877911$funcGETUSERDSPASSWORD
 	3	  GETUSERDSPASSWORD getSecurableCFTags 0cfsecurity2ecfc1927877911$funcGETSECURABLECFTAGS
 	3	  GETSECURABLECFTAGS getSecuredFolders /cfsecurity2ecfc1927877911$funcGETSECUREDFOLDERS 
! 	3	 # GETSECUREDFOLDERS% setUseAdminPassword 1cfsecurity2ecfc1927877911$funcSETUSEADMINPASSWORD(
) 	'3	 + SETUSEADMINPASSWORD- setLoginUserIdRequired 4cfsecurity2ecfc1927877911$funcSETLOGINUSERIDREQUIRED0
1 	/3	 3 SETLOGINUSERIDREQUIRED5 setEnableSandboxSecurity 6cfsecurity2ecfc1927877911$funcSETENABLESANDBOXSECURITY8
9 	73	 ; SETENABLESANDBOXSECURITY= setEnableRDS *cfsecurity2ecfc1927877911$funcSETENABLERDS@
A 	?3	 C SETENABLERDSE deleteSecuredIPPort 1cfsecurity2ecfc1927877911$funcDELETESECUREDIPPORTH
I 	G3	 K DELETESECUREDIPPORTM getAllowedIPList .cfsecurity2ecfc1927877911$funcGETALLOWEDIPLISTP
Q 	O3	 S GETALLOWEDIPLISTU metaData Ljava/lang/Object;WX	 Y _implicitMethods Ljava/util/Map;[\	 ] displayname_ securitya extendsc basee hintg -Manages passwords, RDS, and sandbox security.i Namek 	Functionsm	5Y	AY	YY	IY	QY	aY	iY	qY	yY	�Y	�Y	�Y	�Y	�Y	�Y	�Y	�Y	�Y	�Y	�Y	�Y	�Y	�Y	�Y	�Y	Y		Y	Y	Y	!Y	)Y	1Y	9Y	AY	IY	QY	YY	aY	iY	yY	qY	�Y	�Y	�Y	�Y	�Y	�Y	�Y	�Y	�Y	�Y	�Y	�Y	�Y	�Y	Y	�Y	�Y	Y	Y		Y	!Y	)Y	9Y	1Y	IY	AY	QY getMetadata ()Ljava/lang/Object; this Lcfsecurity2ecfc1927877911; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; registerUDFs __factorParent out Ljavax/servlet/jsp/JspWriter; value _setImplicitMethods implicitMethods 
getExtends runPage LineNumberTable module1 $Lcoldfusion/tagext/lang/ImportedTag; mode1 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 module2 mode2 t14 t15 t16 t17 t18 t19 module3 mode3 t22 t23 t24 t25 t26 t27 module4 mode4 t30 t31 t32 t33 t34 t35 module5 mode5 t38 t39 t40 t41 t42 t43 module6 mode6 t46 t47 t48 t49 t50 t51 module7 mode7 t54 t55 t56 t57 t58 t59 module8 mode8 t62 t63 t64 t65 t66 t67 module9 mode9 t70 t71 t72 t73 t74 t75 module10 mode10 t78 t79 t80 t81 t82 t83 module11 mode11 t86 t87 t88 t89 t90 t91 java/lang/Throwable" _getImplicitMethods ()Ljava/util/Map; <clinit> 1     L                 "     &     � �   23   ?3   G3   O3   W3   _3   g3   o3   w3   3   �3   �3   �3   �3   �3   �3   �3   �3   �3   �3   �3   �3   �3   �3   �3   �3   3   3   3   3   '3   /3   73   ?3   G3   O3   W3   _3   g3   o3   w3   3   �3   �3   �3   �3   �3   �3   �3   �3   �3   �3   �3   �3   �3   �3   �3   �3   3   3   3   3   '3   /3   73   ?3   G3   O3   WX   
[\    �� �   "     �Z�   �       ��      �   u     C*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )�   �        C��     C��    C��  �  �  �    �*:�8�>*F�D�>*N�L�>*V�T�>*^�\�>*f�d�>*n�l�>*v�t�>*~�|�>*����>*����>*����>*����>*����>*����>*����>*����>*ƲĶ>*β̶>*ֲԶ>*޲ܶ>*��>*��>*����>*����>*��>*��>*��>*��>*&�$�>*.�,�>*6�4�>*>�<�>*F�D�>*N�L�>*V�T�>*^�\�>*f�d�>*n�l�>*v�t�>*~�|�>*����>*����>*����>*����>*����>*����>*����>*����>*ƲĶ>*β̶>*ֲԶ>*޲ܶ>*��>*��>*����>*����>*��>*��>*��>*��>*&�$�>*.�,�>*6�4�>*>�<�>*F�D�>*N�L�>*V�T�>�   �      ���      �   #     *� 
�   �       ��   ,  �   >     *�   �   *    ��     � 8    ��    �X  /  �   >     *�   �   *    ��     � 8    ��    �X  � � �   -     +�^�   �       ��     �\  � � �   "     f�   �       ��   �� �   �     W*� 0� 6L*� :N*-+�"� �*-+�%� �*-+�(� �*-+�+� �*-+�.� �*-+�1� ��   �   *    W��     W��    W�X    W 7 8 �        &  �   >     *�   �   *    ��     � 8    ��    �X  )  �   >     *�   �   *    ��     � 8    ��    �X    �  $  \  
8**� <>*� B**� B**� B*DF� LN� P� TV� P� T� Z*� !*	� B*D\� L� b*� %*
� B***� !� fh� P� T� b*� )**� B*Dj� L� p� rYtS� x� b*z� rY|S� ~Y�� �*� rY<S� �� �� ��� �� �� �**� � rY�S�� �*� �+� �� �:*� B���� �� �Y� PY�SY�SY�SY�SY�SY*z� rY|S� �S� ȶ �� �� �Y6� 5*,� �M,޶ �� ���� � :� �:*,� �M�� �� :� #�� � #:		� � � :
� 
�:� ��*� �+� �� �:*� B���� �� �Y� PY�SY�SY�SY�SY�SY*z� rY|S� �S� ȶ �� �� �Y6� 5*,� �M,�� �� ���� � :� �:*,� �M�� �� :� #�� � #:� � � :� �:� ��*� �+� �� �:*� B���� �� �Y� PY�SY�SY�SY�SY�SY*z� rY|S� �S� ȶ �� �� �Y6� 5*,� �M,�� �� ���� � :� �:*,� �M�� �� :� #�� � #:� � � :� �:� ��*� �+� �� �:*� B���� �� �Y� PY�SY SY�SY SY�SY*z� rY|S� �S� ȶ �� �� �Y6� 6*,� �M,� �� ���� � :� �:*,� �M�� �� : � # �� � #:!!� � � :"� "�:#� ��#*� �+� �� �:$*� B$���� �$� �Y� PY�SYSY�SYSY�SY*z� rY|S� �S� ȶ �$� �$� �Y6%� 6*$%,� �M,� �$� ���� � :&� &�:'*%,� �M�'$� �� :(� #(�� � #:)$)� � � :*� *�:+$� ��+*� �+� �� �:,*� B,���� �,� �Y� PY�SYSY�SYSY�SY*z� rY|S� �S� ȶ �,� �,� �Y6-� 6*,-,� �M,
� �,� ���� � :.� .�:/*-,� �M�/,� �� :0� #0�� � #:1,1� � � :2� 2�:3,� ��3*� �+� �� �:4*� B4���� �4� �Y� PY�SYSY�SYSY�SY*z� rY|S� �S� ȶ �4� �4� �Y65� 6*45,� �M,� �4� ���� � :6� 6�:7*5,� �M�74� �� :8� #8�� � #:949� � � ::� :�:;4� ��;*� �+� �� �:<*� B<���� �<� �Y� PY�SYSY�SYSY�SY*z� rY|S� �S� ȶ �<� �<� �Y6=� 6*<=,� �M,� �<� ���� � :>� >�:?*=,� �M�?<� �� :@� #@�� � #:A<A� � � :B� B�:C<� ��C*� �	+� �� �:D*� BD���� �D� �Y� PY�SYSY�SYSY�SY*z� rY|S� �S� ȶ �D� �D� �Y6E� 6*DE,� �M,� �D� ���� � :F� F�:G*E,� �M�GD� �� :H� #H�� � #:IDI� � � :J� J�:KD� ��K*� �
+� �� �:L*� BL���� �L� �Y� PY�SYSY�SYSY�SY*z� rY|S� �S� ȶ �L� �L� �Y6M� 6*LM,� �M,� �L� ���� � :N� N�:O*M,� �M�OL� �� :P� #P�� � #:QLQ� � � :R� R�:SL� ��S*� �+� �� �:T*� BT���� �T� �Y� PY�SYSY�SYSY�SY*z� rY|S� �S� ȶ �T� �T� �Y6U� 6*TU,� �M,� �T� ���� � :V� V�:W*U,� �M�WT� �� :X� #X�� � #:YTY� � � :Z� Z�:[T� ��[*� XHcf#fkf#=��#���#=��#���#���#���#:=#=B=#]i#cfi#]x#cfx#iux#x}x#�##�4@#:=@#�4O#:=O#@LO#OTO#���#���#�##�)#)#&)#).)#���#���#���#���#��#��#� ##���#���#y��#���#y��#���#���#���#_{~#~�~#T��#���#T��#���#���#���#:VY#Y^Y#/y�#��#/y�#��#���#���#14#494#
T`#Z]`#
To#Z]o#`lo#oto#�		#			#�	/	;#	5	8	;#�	/	J#	5	8	J#	;	G	J#	J	O	J#	�	�	�#	�	�	�#	�


#


#	�


%#


%#

"
%#
%
*
%# �  � \  
8��    
8� 8   
8��   
8�X   
8��   
8��   
8��   
8�X   
8�X   
8�� 	  
8�� 
  
8�X   
8��   
8��   
8��   
8�X   
8�X   
8��   
8��   
8�X   
8��   
8��   
8��   
8�X   
8�X   
8��   
8��   
8�X   
8��   
8��   
8��   
8�X   
8�X    
8�� !  
8�� "  
8�X #  
8�� $  
8�� %  
8�� &  
8�X '  
8�X (  
8�� )  
8�� *  
8�X +  
8�� ,  
8�� -  
8�� .  
8�X /  
8�X 0  
8�� 1  
8�� 2  
8�X 3  
8�� 4  
8�� 5  
8�� 6  
8�X 7  
8�X 8  
8�� 9  
8 � :  
8X ;  
8� <  
8� =  
8� >  
8X ?  
8X @  
8� A  
8� B  
8	X C  
8
� D  
8� E  
8� F  
8X G  
8X H  
8� I  
8� J  
8X K  
8� L  
8� M  
8� N  
8X O  
8X P  
8� Q  
8� R  
8X S  
8� T  
8� U  
8� V  
8X W  
8X X  
8� Y  
8 � Z  
8!X [�  z �                              E 	 E 	 G 	 G 	 D 	 D 	 D 	 D 	 : 	 Z 
 Z 
 Y 
 Y 
 Y 
 Y 
 O 
 z  z  |  |  y  y  r  r  r  r  n  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  :     ! ! ! !  � � � � � � � � � � � � � � � � � � � � � � � � � � � ` l l w w � � � � : G G R R ] ] ] ]  " " - - 8 8 8 8 � � �       � � � � � � � � � � � � � � � � � � � 	� 	� 	� 	� 	� 	� 	� 	� 	[  $% �   "     �^�   �       ��   &  �   	   ��� �� ��5Y�6�8�AY�B�D�IY�J�L�QY�R�T�YY�Z�\�aY�b�d�iY�j�l�qY�r�t�yY�z�|��Y������Y������Y������Y������Y������Y������Y������Y������Y�³Ļ�Y�ʳ̻�Y�ҳԻ�Y�ڳܻ�Y����Y����Y�����Y�����Y���	Y�
��Y���Y���!Y�"�$�)Y�*�,�1Y�2�4�9Y�:�<�AY�B�D�IY�J�L�QY�R�T�YY�Z�\�aY�b�d�iY�j�l�qY�r�t�yY�z�|��Y������Y������Y������Y������Y������Y������Y������Y������Y�³Ļ�Y�ʳ̻�Y�ҳԻ�Y�ڳܻ�Y����Y����Y�����Y�����Y���	Y�
��Y���Y���!Y�"�$�)Y�*�,�1Y�2�4�9Y�:�<�AY�B�D�IY�J�L�QY�R�T� �Y
� PY`SYbSYdSYfSYhSYjSYlSYbSYnSY	D� PY�oSY�pSY�qSY�rSY�sSY�tSY�uSY�vSY�wSY	�xSY
�ySY�zSY�{SY�|SY�}SY�~SY�SY��SY��SY��SY��SY��SY��SY��SY��SY��SY��SY��SY��SY��SY��SY��SY ��SY!��SY"��SY#��SY$��SY%��SY&��SY'��SY(��SY)��SY*��SY+��SY,��SY-��SY.��SY/��SY0��SY1��SY2��SY3��SY4��SY5��SY6��SY7��SY8��SY9��SY:��SY;��SY<��SY=��SY>��SY?��SY@��SYA��SYB��SYC��SS� ȳZ�   �      ���  �  " �������	�	�11 � � � �! ! (�(�/ �/ �6 �6 �=�=�D�D�K�K�RzRzYwYw`�`�g g nXnXu[u[| �| �� �� ������ ,� ,�K�K� 8� 8�H�H����� �� ������ \� \��������������� S� S�t�t� #� #� J� J	�	�"" � �	>	> A A$�$�+�+�2�2�9	`9	`@@G�G�N=N=U	U	\	�\	�c�c�j"j"q qq qxWxW77��������� �� �� �� ��(�(� e� e����� v� v�����D�D�	��	� #  �   >     *�   �   *    ��     � 8    ��    �X        *    +����  -� 
SourceFile /CFIDE/adminapi/security.cfc 3cfsecurity2ecfc1927877911$funcSETDISABLEDCFFUNCTION  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   TARGET  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   PERMISSIONS  ACCESSMANAGER ! 	TARGETPOS # SECURITY % I ' 
TARGETTEMP ) WEBAPP + ARRAYPOS - coldfusion/runtime/CfJspPage / pageContext #Lcoldfusion/runtime/NeoPageContext; 1 2	 0 3 getOut ()Ljavax/servlet/jsp/JspWriter; 5 6 javax/servlet/jsp/JspContext 8
 9 7 parent Ljavax/servlet/jsp/tagext/Tag; ; <	 0 = 	DIRECTORY ? getVariable  (I)Lcoldfusion/runtime/Variable; A B %coldfusion/runtime/ArgumentCollection D
 E C _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; G H
  I FUNCTIONNAME K / M set (Ljava/lang/Object;)V O P coldfusion/runtime/Variable R
 S Q 1 U _setCurrentLineNo (I)V W X
 0 Y ArrayNew (I)Ljava/util/List; [ \ coldfusion/runtime/CFPage ^
 _ ]   a 0 c 	component e CFIDE.adminapi.accessmanager g CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; i j
 _ k java m  coldfusion.server.ServiceFactory o getSecurityService q java/lang/Object s _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; u v
 0 w _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; y z
 0 { checkAdminRoles } coldfusion.sandboxsecurity  GETSECURABLECFFUNCTIONS � &(Ljava/lang/String;)Ljava/lang/Object; y �
 0 � getSecurableCFFunctions � 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; � �
 0 � _List $(Ljava/lang/Object;)Ljava/util/List; � � coldfusion/runtime/Cast �
 � � ArrayToList $(Ljava/util/List;)Ljava/lang/String; � �
 _ � java/lang/String � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 0 � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � ListFindNoCase '(Ljava/lang/String;Ljava/lang/String;)I � �
 _ � _boolean (D)Z � �
 � � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 0 � coldfusion/tagext/lang/ThrowTag � cfthrow � message � SECURITY_INVALIDFUNCTION � _autoscalarize � �
 0 � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 0 � 
setMessage (Ljava/lang/String;)V � �
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 0 � Trim &(Ljava/lang/String;)Ljava/lang/String; � �
 _ � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 0 � CONTEXTS � _resolve � �
 0 � � z
 0 � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
 0 � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 _ � throw � setCalledName � �
 � � SANDBOX_NOT_FOUND � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
 0 � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 _ � GETFUNCTIONPERMISSIONPOSITION � getFunctionPermissionPosition  C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; �
 0 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; �
 0 * _compare '(Ljava/lang/Object;Ljava/lang/String;)D

 0 *- LCase �
 _ concat �
 � Left '(Ljava/lang/String;I)Ljava/lang/String;
 _ RemoveChars ((Ljava/lang/String;II)Ljava/lang/String;
 _ _Object (I)Ljava/lang/Object;
 �  (Ljava/lang/Object;D)D
"
 0# 
ListAppend 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;%&
 _' :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)V �)
 0* _LhsResolve, �
 0- _arraySetAt/)
 00 LOGAUDIT2 logaudit4 msg6 java/lang/StringBuffer8   disabled the use of a function :  �
9< append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;>?
9@  in the sandbox for directory B .D toString ()Ljava/lang/String;FG
 tH )([Ljava/lang/Object;[Ljava/lang/Object;)V J
 EK b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object; �M
 0N setDisabledCFFunctionP metaData Ljava/lang/Object;RS	 T voidV falseX &coldfusion/runtime/AttributeCollectionZ name\ access^ public` outputb 
returntyped hintf .Disables the use of a function in the sandbox.h 
Parametersj REQUIREDl truen HINTp MSpecifies the sandbox directory for which the specified function is disabled.r NAMEt 	directoryv ([Ljava/lang/Object;)V x
[y "Specifies the function to disable.{ functionName} getMetadata ()Ljava/lang/Object; this 5Lcfsecurity2ecfc1927877911$funcSETDISABLEDCFFUNCTION; LocalVariableTable Code getName 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw37 !Lcoldfusion/tagext/lang/ThrowTag; throw38 LineNumberTable <clinit> 	getOutput 1       � �   RS   	 � �   "     �U�   �       ��   �G �   "     Q�   �       ��   �� �         �   �       ��   �G �   "     W�   �       ��   �� �   -     � �Y@SYLS�   �       ��   �� �  
Z    |+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :+(� :+*� :+,� :+.� :-� 4� ::-� >:*@� F� J:*L� F� J:N� TV� T-a� Z-� `� TV� T
b� Td� Tb� T-f� Z-fh� l� T-g� Z--g� Z-np� lr� t� x� T-h� Z--� |~� tY�S� xW-j� Z-j� Z-j� Z-�� ��-� t� �� �� �-� �YLS� �� �� ��� ��� @-� �%� �� �:-k� Z��-�� ¸ �� ƶ �� �� ԙ �-� �Y@S-n� Z-� �Y@S� �� �� ض �-q� Z--� �Y�S� �-� � � �-� �Y@S� �� �� ��� H-� �&� �� �:-s� Z� ���-�� ¸ �� ƶ �� �� ԙ �-w� Z--� �Y�S� �� tY-� �SY-@� �S� �� �� T-{� Z-�� �-� tY-� �SY-@� �S� �� T
---� �� �� �YS�� T-
� �	��� 9
� T
-
� � �-�� Z-L� ¸ ���� T� �-�� Z-
� � ����� �-�� Z-
� � ��� T-�� Z-� � �-�� Z-L� ¸ ��� ��!� T-� ��$�� .
-�� Z-
� � �-�� Z-L� ¸ ���(� T---� �� �� �YS-
� �+-� �Y�S�.� tY-� �SY-@� �S-� �1-�� Z-3� �5-� EY� �Y7S� tY�9Y;�=-� �YLS� �� ��AC�A-� �Y@S� �� ��AE�A�IS�L�OW�   �   �   |��    |��   |�S   |��   |��   |��   |�S   | ; <   | �   | � 	  | � 
  | �   | !�   | #�   | %�   | '�   | )�   | +�   | -�   | ?�   | K�   |��   |�� �  �7  [ �_ �_ �_ �_ �_ �_ �_ �` �` �` �` �` �` �` �a �a �a �a �a �a �a �a �a �b �b �b �b �b �b �b �c �c �c �c �c �c �c �d �d �d �d �d �d �d �e �e �e �e �e �e �e �f �f �f �f �f �f �f �f �f �f �f �g �g �g �g �g �g �g �g �g �g �g �g �ghhhhhhhh2j2j2j2j2j2j2j2j2j2jHjHjHjHj2j2j2j2j2j2j�k�k�k�kfk2j�n�n�n�n�n�n�n�n�n�n�q�q�q�q�q�q�q�q�q�q�q�q�q�q�q�q�q�q/s/s/s/ss�qZwZwowowxwxwYwYwYwYwYwYwPw�{�{�{�{�{�{�{�{�{�{�{�|�|�|�|�|�|�|��������������������������������������������(�(���,�,�@�@�@�@�I�I�J�J�@�@�@�@�7�Z�Z�Z�Z�j�j�j�j�j�j�j�j�Z�Z�Z�Z�Q����������������������������������������������������������������������� � � � ����p��3�3�9�9�9�9�9�9�N�N�T�T�T�T�T�T�i�i�/�/�����    �   #     *� 
�   �       ��   �  �   �     ��� �� ��[Y� tY]SYQSY_SYaSYcSYYSYeSYWSYgSY	iSY
kSY� tY�[Y� tYmSYoSYqSYsSYuSYwS�zSY�[Y� tYmSYoSYqSY|SYuSY~S�zSS�z�U�   �       ���   �G �   "     Y�   �       ��        ����  -, 
SourceFile /CFIDE/adminapi/security.cfc 6cfsecurity2ecfc1927877911$funcDELETEALLOWEDIPADDRESSES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  IPLIST ! IPADDR # coldfusion/runtime/CfJspPage % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	 & ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/JspContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	 & 3 DEBUGIP 5 string 7 getVariable  (I)Lcoldfusion/runtime/Variable; 9 : %coldfusion/runtime/ArgumentCollection <
 = ; 3coldfusion/tagext/validation/CFTypeValidatorFactory ? STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; A B	 @ C _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; E F
  G _setCurrentLineNo (I)V I J
 & K ArrayNew (I)Ljava/util/List; M N coldfusion/runtime/CFPage P
 Q O set (Ljava/lang/Object;)V S T coldfusion/runtime/Variable V
 W U   Y 	component [ CFIDE.adminapi.accessmanager ] CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; _ `
 Q a _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; c d
 & e checkRootAdminUser g java/lang/Object i _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; k l
 & m java o  coldfusion.server.ServiceFactory q getSecurityService s _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; u v
 & w _String &(Ljava/lang/Object;)Ljava/lang/String; y z coldfusion/runtime/Cast |
 } { ListToArray $(Ljava/lang/String;)Ljava/util/List;  �
 Q � I � 1 � _set '(Ljava/lang/String;Ljava/lang/Object;)V � �
 & � _arrayGetAt C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
 & � Trim &(Ljava/lang/String;)Ljava/lang/String; � �
 Q � POS � getAllowedIPList � u d
 & � ListFind '(Ljava/lang/String;Ljava/lang/String;)I � �
 Q � _Object (I)Ljava/lang/Object; � �
 } � _boolean (Ljava/lang/Object;)Z � �
 } � setAllowedIPList � _int (Ljava/lang/Object;)I � �
 } � ListDeleteAt '(Ljava/lang/String;I)Ljava/lang/String; � �
 Q � _double (Ljava/lang/Object;)D � �
 } � (D)Ljava/lang/Object; � �
 } � ArrayLen � �
 Q � _compare '(Ljava/lang/Object;Ljava/lang/Object;)D � �
 & � LOGAUDIT � c v
 & � logaudit � java/lang/String � msg � java/lang/StringBuffer � d deleted list of one or more client IP addresses that should be allowed to invoke exposed services:  � (Ljava/lang/String;)V  �
 � � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 & � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 � � . � toString ()Ljava/lang/String; � �
 j � )([Ljava/lang/Object;[Ljava/lang/Object;)V  �
 = � 
_invokeUDF b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object; � �
 & � deleteAllowedIPAddresses � metaData Ljava/lang/Object; � �	  � void � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � aRemoves an IP address from client IP addresses that should be allowed to invoke exposed services. � 
Parameters � REQUIRED � Yes TYPE HINT List of IP addresses to remove. NAME	 debugip ([Ljava/lang/Object;)V 
 � getMetadata ()Ljava/lang/Object; this 8Lcfsecurity2ecfc1927877911$funcDELETEALLOWEDIPADDRESSES; LocalVariableTable Code getName 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       � �   	     "     � �              �    !     �                       �              �    !     �                 (     
� �Y6S�          
          +� � :+� ,� :	+� :
+ � :+"� :+$� :-� *� 0:-� 4:*68� >� D� H:-	Ŷ L-� R� XZ� X
-	Ƕ L-\^� b� X-	ȶ L--
� fh� j� nW-	ɶ L--	ɶ L-pr� bt� j� n� X-	˶ L-6� x� ~� �� X-��� �� �-	ζ L--�� x� �� ~� �� X-�-	϶ L-	϶ L--� f�� j� n� ~-� �� ~� �� �� �-�� x� �� K-	Ҷ L--� f�� jY-	Ҷ L-	Ҷ L--� f�� j� n� ~-�� x� �� �S� nW-�-�� x� �c� �� �-�� x-	̶ L-� �� �� �� ��t|��� -	ֶ L-�� ��-� =Y� �Y�S� jY� �Yʷ �-� �Y6S� Ѹ ~� �׶ ն �S� ޸ �W�      �            �   !"   #$   %&   ' �    1 2    (    ( 	   ( 
   (    !(    #(    5( )  J �  	� W	� a	� a	� `	� `	� `	� `	� W	� W	� h	� j	� j	� j	� j	� h	� h	� o	� y	� y	� {	� {	� x	� x	� x	� x	� o	� o	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	�	�	�	�	�	�	�%	�%	�%	�%	�	�	�	�	�	�7	�7	�K	�K	�h	�h	�g	�g	�g	�g	�z	�z	�z	�z	�g	�g	�J	�J	�J	�7	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	� �	� �	��	��	��	��	��	��	��	��	��	��	�	�	��	��	��	��	��	��	�       #     *� 
�             *     �     �� �Y� jY�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� jY� �Y� jY SYSYSY8SYSYSY
SYS�SS�� �          �   + �    !     �                  ����  - � 
SourceFile /CFIDE/adminapi/security.cfc 3cfsecurity2ecfc1927877911$funcSETRDSSECURITYENABLED  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / USEADMINPASSWORD 1 boolean 3 getVariable  (I)Lcoldfusion/runtime/Variable; 5 6 %coldfusion/runtime/ArgumentCollection 8
 9 7 3coldfusion/tagext/validation/CFTypeValidatorFactory ; BOOL_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; = >	 < ? _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; A B
  C _setCurrentLineNo (I)V E F
 " G 	component I CFIDE.adminapi.accessmanager K CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; M N coldfusion/runtime/CFPage P
 Q O set (Ljava/lang/Object;)V S T coldfusion/runtime/Variable V
 W U java Y  coldfusion.server.ServiceFactory [ getSecurityService ] java/lang/Object _ _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; a b
 " c _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; e f
 " g checkRootAdminUser i setRdsSecurityEnabled k java/lang/String m _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; o p
 " q ACTION s   u _set '(Ljava/lang/String;Ljava/lang/Object;)V w x
 " y _boolean (Ljava/lang/Object;)Z { | coldfusion/runtime/Cast ~
  } enabled � disabled � LOGAUDIT � &(Ljava/lang/String;)Ljava/lang/Object; e �
 " � logaudit � msg � java/lang/StringBuffer �   � (Ljava/lang/String;)V  �
 � � _autoscalarize � �
 " � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
  � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 � �  RDS security. � toString ()Ljava/lang/String; � �
 ` � )([Ljava/lang/Object;[Ljava/lang/Object;)V  �
 9 � 
_invokeUDF b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object; � �
 " � metaData Ljava/lang/Object; � �	  � void � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � +Specifies whether RDS security is required. � 
Parameters � REQUIRED � Yes � TYPE � HINT � Specify true or false. � NAME � useAdminPassword � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this 5Lcfsecurity2ecfc1927877911$funcSETRDSSECURITYENABLED; LocalVariableTable Code getName 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       � �   	  � �  �   "     � ��    �        � �    � �  �   !     l�    �        � �    � �  �         �    �        � �    � �  �   !     ��    �        � �    � �  �   (     
� nY2S�    �       
 � �    � �  �      <+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:*24� :� @� D:
- ɶ H-JL� R� X- ʶ H-- ʶ H-Z\� R^� `� d� X- ̶ H--
� hj� `� dW- Ͷ H--� hl� `Y-� nY2S� rS� dW-tv� z-� nY2S� r� �� -t�� z� -t�� z- ض H-�� ��-� 9Y� nY�S� `Y� �Y�� �-t� �� �� ��� �� �S� �� �W�    �   �   < � �    < � �   < � �   < � �   < � �   < � �   < � �   < - .   <  �   <  � 	  <  � 
  <  �   < 1 �  �  * J   � G � Q � Q � S � S � P � P � P � P � G � G � [ � m � m � o � o � l � l � d � d � d � d � [ � [ � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �* �* � � � � � � � � � � �     �   #     *� 
�    �        � �    �   �   �     �� �Y� `Y�SYlSY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� `Y� �Y� `Y�SY�SY�SY4SY�SY�SY�SY�S� �SS� ׳ ��    �       � � �    � �  �   !     ��    �        � �        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc 4cfsecurity2ecfc1927877911$funcSETLOGINUSERIDREQUIRED  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / ISUSERIDREQUIRED 1 boolean 3 getVariable  (I)Lcoldfusion/runtime/Variable; 5 6 %coldfusion/runtime/ArgumentCollection 8
 9 7 3coldfusion/tagext/validation/CFTypeValidatorFactory ; BOOL_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; = >	 < ? _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; A B
  C _setCurrentLineNo (I)V E F
 " G 	component I CFIDE.adminapi.accessmanager K CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; M N coldfusion/runtime/CFPage P
 Q O set (Ljava/lang/Object;)V S T coldfusion/runtime/Variable V
 W U java Y  coldfusion.server.ServiceFactory [ getSecurityService ] java/lang/Object _ _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; a b
 " c _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; e f
 " g checkRootAdminUser i setAdminUserIdRequired k _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; m n
 " o java/lang/String q setLoginUserIdRequired s metaData Ljava/lang/Object; u v	  w false y &coldfusion/runtime/AttributeCollection { name } access  public � output � hint � 4Sets whether or not a user id is required for login. � 
Parameters � REQUIRED � true � TYPE � NAME � isUserIdRequired � ([Ljava/lang/Object;)V  �
 | � getMetadata ()Ljava/lang/Object; this 6Lcfsecurity2ecfc1927877911$funcSETLOGINUSERIDREQUIRED; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       u v     � �  �   "     � x�    �        � �    � �  �   !     t�    �        � �    � �  �         �    �        � �    � �  �   (     
� rY2S�    �       
 � �    � �  �  �     �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:*24� :� @� D:
-y� H-JL� R� X-z� H--z� H-Z\� R^� `� d� X-{� H--
� hj� `� dW-|� H--� hl� `Y-2� pS� dW�    �   �    � � �     � � �    � � v    � � �    � � �    � � �    � � v    � - .    �  �    �  � 	   �  � 
   �  �    � 1 �  �   � '   v G y P y P y R y R y O y O y O y O y G y G y Z z j z j z l z l z i z i z b z b z b z b z Z z Z z � { � { � { � { � { � { � | � | � | � | � | � | � | � |     �   #     *� 
�    �        � �    �   �   �     u� |Y
� `Y~SYtSY�SY�SY�SYzSY�SY�SY�SY	� `Y� |Y� `Y�SY�SY�SY4SY�SY�S� �SS� �� x�    �       u � �    � �  �   !     z�    �        � �        ����  -� 
SourceFile /CFIDE/adminapi/security.cfc 3cfsecurity2ecfc1927877911$funcSETDISABLEDDATASOURCE  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ALLDSNS  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   PERMISSIONS  ACCESSMANAGER ! SECURITY # DISABLEDDSNS % ADDDB ' WEBAPP ) DB + KEY - coldfusion/runtime/CfJspPage / pageContext #Lcoldfusion/runtime/NeoPageContext; 1 2	 0 3 getOut ()Ljavax/servlet/jsp/JspWriter; 5 6 javax/servlet/jsp/JspContext 8
 9 7 parent Ljavax/servlet/jsp/tagext/Tag; ; <	 0 = 	DIRECTORY ? getVariable  (I)Lcoldfusion/runtime/Variable; A B %coldfusion/runtime/ArgumentCollection D
 E C _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; G H
  I 
DATASOURCE K / M set (Ljava/lang/Object;)V O P coldfusion/runtime/Variable R
 S Q _setCurrentLineNo (I)V U V
 0 W ArrayNew (I)Ljava/util/List; Y Z coldfusion/runtime/CFPage \
 ] [ true _   a GETDISABLEDDATASOURCES c _get &(Ljava/lang/String;)Ljava/lang/Object; e f
 0 g getDisabledDatasources i java/lang/Object k _autoscalarize m f
 0 n 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; p q
 0 r 	component t CFIDE.adminapi.accessmanager v CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; x y
 ] z java |  coldfusion.server.ServiceFactory ~ getSecurityService � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
 0 � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; e �
 0 � checkAdminRoles � coldfusion.sandboxsecurity � java/lang/String � CONTEXTS � _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 0 � m �
 0 � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
 0 � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � _resolveAndAutoscalarize � �
 0 � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 ] � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 0 � coldfusion/tagext/lang/ThrowTag � throw � setCalledName (Ljava/lang/String;)V � � coldfusion/tagext/GenericTag �
 � � cfthrow � message � SANDBOX_NOT_FOUND � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 0 � 
setMessage � �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 0 � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
 0 � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 ] � CFIDE.adminapi.datasource � getDatasources � <<All Datasources>> � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 0 � _Object (Z)Ljava/lang/Object; � �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � DB_NOT_FOUND � I � ArrayLen (Ljava/lang/Object;)I � �
 ] � (I)Ljava/lang/Object; � �
 � � _set '(Ljava/lang/String;Ljava/lang/Object;)V � 
 0 C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; �
 0 CLASS 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; �
 0	 #coldfusion.sql.DataSourcePermission _List $(Ljava/lang/Object;)Ljava/util/List;
 � _int �
 � ArrayDeleteAt (Ljava/util/List;I)Z
 ] _double (Ljava/lang/Object;)D
 � (D)Ljava/lang/Object; �
 � (Ljava/lang/Object;D)D �
 0  1" StructDelete$ �
 ]% '(Ljava/lang/Object;Ljava/lang/Object;)D �'
 0( ListToArray $(Ljava/lang/String;)Ljava/util/List;*+
 ], java/util/List. iterator ()Ljava/util/Iterator;01/2 java/lang/Integer4 getClass ()Ljava/lang/Class;67
 l8 isArray ()Z:;
 �< coldfusion/sql/QueryTable> class$coldfusion$sql$QueryTable coldfusion.sql.QueryTableA@ �	 C _cast 7(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;EF
 �G getMetaData ()Ljava/sql/ResultSetMetaData;IJ
?K getRowVector ()Ljava/util/Vector;MN coldfusion/sql/imq/imqTableP
QO absolute (I)ZST
?U java/util/MapW keySet ()Ljava/util/Set;YZX[ java/util/Set]^2 java/util/Iterator` next ()Ljava/lang/Object;bcad coldfusion/sql/imq/Rowf getColumnList ()[Ljava/lang/String;hi
?j _queryRowDataToStruct T(Ljava/lang/Object;[Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Struct;lm
 0n relativepT
?q 
PERMISSIONs 	StructNew !()Lcoldfusion/util/FastHashtable;uv
 ]w _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)Vyz
 0{ TARGET} ACTION ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z��
 ]� hasNext�;a� _LhsResolve� �
 0� _arraySetAt :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)V��
 0� LOGAUDIT� logaudit� msg� java/lang/StringBuffer�  disables use of datasource �  �
�� append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;��
�� " in the sandbox for the directory � .� toString ()Ljava/lang/String;��
 l� )([Ljava/lang/Object;[Ljava/lang/Object;)V �
 E� b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object; p�
 0� setDisabledDatasource� metaData Ljava/lang/Object;��	 � void� &coldfusion/runtime/AttributeCollection� name� access� public� output� 
returntype� hint� -Disables use of a data source in the sandbox.� 
Parameters� REQUIRED� HINT� FSpecifies the sandbox directory for which the data source is disabled.� NAME� 	directory� ([Ljava/lang/Object;)V �
�� 1Specifies the name of the data source to disable.� 
datasource� getMetadata this 5Lcfsecurity2ecfc1927877911$funcSETDISABLEDDATASOURCE; LocalVariableTable Code getName 	getAccess ()I getReturnType getParamList runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw42 !Lcoldfusion/tagext/lang/ThrowTag; throw43 t23 Ljava/util/Iterator; t24 Lcoldfusion/sql/QueryTable; t25 #Lcoldfusion/sql/QueryTableMetaData; t26 LineNumberTable <clinit> 	getOutput 1       � �   @ �   ��   	 �c �   "     ���   �       ��   �� �   "     ��   �       ��   �� �         �   �       ��   �� �   "     ��   �       ��   �i �   -     � �Y@SYLS�   �       ��   �� �  R    +� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :+(� :+*� :+,� :+.� :-� 4� ::-� >:*@� F� J:*L� F� J:N� T-|� X-� ^� T`� T
b� T-� X-d� hj-� lY-@� oS� s� Tb� Tb� T-�� X-uw� {� T-�� X--�� X-}� {�� l� �� T-�� X--� ��� lY�S� �W-�� X--� �Y�S� �-� �� �� �-� �Y@S� �� �� ��� H-� �*� �� �:-�� X�� ���-˶ o� ��� ϶ �� �� ڙ �-�� X--� �Y�S� �� lY-� �SY-@� oS� ݸ � T-�� X-u� {� T
-�� X-�� X--� ��� l� �� � T-L� o� ��~� �Y� � /W-�� X--
� �� �-� �YLS� �� �� ��� � � H-� �+� �� �:-�� X�� ���-�� o� ��� ϶ �� �� ڙ �-�-�� X-� �� �� ��� ]---�� o�� �� �YS�
� ��� !-�� X--� ��-�� o��W-�-�� o�g��-�� o�!����-� �YLS� �� ���-�#�� ;-�� X--
� �� �--�� o�� ��&W-�-�� o�c��-�� o-�� X-� �� �� ��)�t|����-�� X--
� �� �-� �YLS� �� ��&W:::-
� �:� �� � ��-�3 :� ��5� � ��-�3 :���� �9�=� ��3 :����/� ��3 :����?� -�D�H�?:�L:�R�3 :�VW��~� ��\ �_ :� ��e :� ��g� �k�o:�rW� T-t-�� X�x�-t� �YS�|-t� �Y~S-� ��|-t� �Y�Sb�|-�� X-� ��-t� o��W�� ��\� � 
�VW-� �Y�S��� lY-� �SY-@� oS-� ���-�� X-�� h�-� EY� �Y�S� lY��Y���-� �YLS� �� ������-� �Y@S� �� ��������S����W�   �     ��    ��   ��   ��   ��   ��   ��    ; <    �    � 	   � 
   �    !�    #�    %�    '�    )�    +�    -�    ?�    K�   ��   ��   ��   ��   ��   �� �  "H  w �{ �{ �{ �{ �{ �{ �| �| �| �| �| �| �| �| �} �} �} �} �} �} �~ �~ �~ �~ �~ �~ � � � � � � � � � � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ������
�
����� ��&�&�4�4�%�%�%�C�C�R�R�C�C�C�C�^�^�^�^�B�B�B�B�B�B���������x�B���������������������������������������������������	�/�/�5�5�/�/�/�/�Q�Q�Q�Q�Z�Z�Z�Z�P�P�P�P�P�P�P�P�/�/�����z�/�����������������������������������
�
�
���$�$�$�$�-�-�$�$�$�$�!�5�5�;�;���D�D�S�S�`�`�`�`�]�q�q�q�q�}�}�z�z�z�z�p�p�p���������������������������������������]������������������������������������������������-�-�-�-��9�9�9�9�B�B�9�9�9���D�g�g�|�|�������������g� �z����������������������������������������������������    �   #     *� 
�   �       ��   �  �   �     ��� �� �B� ��D��Y� lY�SY�SY�SY�SY�SY`SY�SY�SY�SY	�SY
�SY� lY��Y� lY�SY`SY�SY�SY�SY�S��SY��Y� lY�SY`SY�SY�SY�SY�S��SS�ӳ��   �       ���   �� �   !     `�   �       ��        ����  -� 
SourceFile /CFIDE/adminapi/security.cfc 1cfsecurity2ecfc1927877911$funcDELETESECUREDFOLDER  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   PERMISSIONS  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   ACCESSMANAGER  SECURITY ! VFSFILEFACTORY # PERMISSIONCLASS % WEBAPP ' VFILE ) coldfusion/runtime/CfJspPage + pageContext #Lcoldfusion/runtime/NeoPageContext; - .	 , / getOut ()Ljavax/servlet/jsp/JspWriter; 1 2 javax/servlet/jsp/JspContext 4
 5 3 parent Ljavax/servlet/jsp/tagext/Tag; 7 8	 , 9 	DIRECTORY ; getVariable  (I)Lcoldfusion/runtime/Variable; = > %coldfusion/runtime/ArgumentCollection @
 A ? _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; C D
  E FOLDER G / I set (Ljava/lang/Object;)V K L coldfusion/runtime/Variable N
 O M _setCurrentLineNo (I)V Q R
 , S ArrayNew (I)Ljava/util/List; U V coldfusion/runtime/CFPage X
 Y W 	component [ CFIDE.adminapi.accessmanager ] CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; _ `
 Y a java c  coldfusion.server.ServiceFactory e getSecurityService g java/lang/Object i _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; k l
 , m false o   q coldfusion.vfs.VFSFileFactory s _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; u v
 , w checkAdminRoles y coldfusion.sandboxsecurity { checkIfVFile } _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object;  �
 , � java/lang/String � CONTEXTS � _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 , �  v
 , � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
 , � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � _resolveAndAutoscalarize � �
 , � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 Y � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 , � coldfusion/tagext/lang/ThrowTag � throw � setCalledName (Ljava/lang/String;)V � � coldfusion/tagext/GenericTag �
 � � cfthrow � message � SANDBOX_NOT_FOUND � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 , � 
setMessage � �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 , � _boolean (Ljava/lang/Object;)Z � �
 � � coldfusion.vfs.VFilePermission � getFileObject � getAbsolutePath � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 , � java.io.FilePermission � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
 , � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 Y � I � 1 � _set '(Ljava/lang/String;Ljava/lang/Object;)V � �
 , � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
 , � CLASS � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
 , � _compare '(Ljava/lang/Object;Ljava/lang/Object;)D � �
 , � _Object (Z)Ljava/lang/Object; � �
 � � TARGET  _List $(Ljava/lang/Object;)Ljava/util/List;
 � _int (Ljava/lang/Object;)I
 � ArrayDeleteAt (Ljava/util/List;I)Z

 Y _double (Ljava/lang/Object;)D
 � (D)Ljava/lang/Object; �
 � ArrayLen
 Y (I)Ljava/lang/Object; �
 � _LhsResolve �
 , _arraySetAt :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)V
 ,  LOGAUDIT" u �
 ,$ logaudit& msg( java/lang/StringBuffer*  made folder ,  �
+. append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;01
+2 / inaccessible in the sandbox for the directory 4 .6 toString ()Ljava/lang/String;89
 j: )([Ljava/lang/Object;[Ljava/lang/Object;)V <
 A= 
_invokeUDF b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object;?@
 ,A deleteSecuredFolderC metaData Ljava/lang/Object;EF	 G voidI &coldfusion/runtime/AttributeCollectionK nameM accessO publicQ outputS 
returntypeU hintW 1Makes a folder inaccessible to a secured sandbox.Y 
Parameters[ REQUIRED] true_ HINTa ?Specifies the sandbox directory for which a folder is disabled.c NAMEe 	directoryg ([Ljava/lang/Object;)V i
Lj 9Specifies the path of the folder to be made inaccessible.l foldern getMetadata ()Ljava/lang/Object; this 3Lcfsecurity2ecfc1927877911$funcDELETESECUREDFOLDER; LocalVariableTable Code getName 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw47 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getOutput 1       � �   EF   	 pq u   "     �H�   t       rs   v9 u   "     D�   t       rs   wx u         �   t       rs   y9 u   "     J�   t       rs   z{ u   -     � �Y<SYHS�   t       rs   |} u  R    �+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :+(� :+*� :-� 0� 6:-� ::*<� B� F:*H� B� F:J� P
-� T-� Z� P-� T-\^� b� P-�� T--�� T-df� bh� j� n� Pp� Pr� P-� T-dt� b� P-� T--� xz� jY|S� nW-� T--� x~� jY-H� �S� n� P-�� T--� �Y�S� �-� �� �� �-� �Y<S� �� �� ��� H-� �/� �� �:-�� T�� ���-�� �� ��� Ŷ �� �� Й �-� �� ԙ Vֶ P-� �YHS-�� T--�� T--� x�� jY-� �YHS� �S� n�� j� n� ާ 
� P
-� T--� �Y�S� �� jY-� �SY-<� �S� � � P-�� � �--
-� �� � �� �Y�S� �-� �� ��~�� �Y� ԙ <W--
-� �� � �� �YS� �-� �YHS� �� ��~�� �� ԙ !-� T--
� ��-� ��	�W-�-� ��c�� �-� �-� T-
� ���� ��t|���6-� �Y�S�� jY-� �SY-<� �S-
� ��!-� T-#�%'-� AY� �Y)S� jY�+Y-�/-� �YHS� �� ��35�3-� �Y<S� �� ��37�3�;S�>�BW�   t   �   �rs    �~   ��F   ���   ���   ���   ��F   � 7 8   � �   � � 	  � � 
  � �   � !�   � #�   � %�   � '�   � )�   � ;�   � G�   ��� �  � �  � |� ~� ~� ~� ~� |� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ���� �� �� ����$�$������9�9�H�H�9�9�9�9�T�T�T�T�8�8�8�8�8�8���������n�8���������������������������������������##88AA""""""TTTTQ`
`
\
\
x
x
\
\
\
\
�
�
�
�
�
�
�
�
�
�
\
\
�����������\
�����������Q))>>GGNNNN) |�^^������������������}}^^^^    u   #     *� 
�   t       rs   �  u   �     ��� �� ��LY� jYNSYDSYPSYRSYTSYpSYVSYJSYXSY	ZSY
\SY� jY�LY� jY^SY`SYbSYdSYfSYhS�kSY�LY� jY^SY`SYbSYmSYfSYoS�kSS�k�H�   t       �rs   �9 u   !     p�   t       rs        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc .cfsecurity2ecfc1927877911$funcGETALLOWEDIPLIST  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / _setCurrentLineNo (I)V 1 2
 " 3 	component 5 CFIDE.adminapi.accessmanager 7 CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; 9 : coldfusion/runtime/CFPage <
 = ; set (Ljava/lang/Object;)V ? @ coldfusion/runtime/Variable B
 C A _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; E F
 " G checkRootAdminUser I java/lang/Object K _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; M N
 " O java Q  coldfusion.server.ServiceFactory S getSecurityService U getAllowedIPList W java/lang/String Y metaData Ljava/lang/Object; [ \	  ] false _ &coldfusion/runtime/AttributeCollection a name c access e public g output i hint k XReturns a list of client IP addresses that should be allowed to invoke exposed services. m 
Parameters o ([Ljava/lang/Object;)V  q
 b r getMetadata ()Ljava/lang/Object; this 0Lcfsecurity2ecfc1927877911$funcGETALLOWEDIPLIST; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       [ \     t u  y   "     � ^�    x        v w    z {  y   !     X�    x        v w    | }  y         �    x        v w    ~   y   #     � Z�    x        v w    � �  y  �     �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:
-	�� 4-68� >� D-	�� 4--
� HJ� L� PW-	�� 4--	�� 4-RT� >V� L� P� D-	�� 4--� HX� L� P��    x   z    � v w     � � �    � � \    � � �    � � �    � � �    � � \    � - .    �  �    �  � 	   �  � 
   �  �  �   � &  	� 4	� >	� >	� @	� @	� =	� =	� =	� =	� 4	� 4	� P	� P	� O	� O	� O	� O	� `	� r	� r	� t	� t	� q	� q	� i	� i	� i	� i	� `	� `	� �	� �	� �	� �	� �	� �	� �	�     y   #     *� 
�    x        v w    �   y   f     H� bY
� LYdSYXSYfSYhSYjSY`SYlSYnSYpSY	� LS� s� ^�    x       H v w    � {  y   !     `�    x        v w        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc -cfsecurity2ecfc1927877911$funcISSECUREPROFILE  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / _setCurrentLineNo (I)V 1 2
 " 3 	component 5 CFIDE.adminapi.accessmanager 7 CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; 9 : coldfusion/runtime/CFPage <
 = ; set (Ljava/lang/Object;)V ? @ coldfusion/runtime/Variable B
 C A _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; E F
 " G checkAdminRoles I java/lang/Object K :coldfusion.serversettings,coldfusion.serversettingssummary M false O _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; Q R
 " S java U  coldfusion.server.ServiceFactory W getSecurityService Y isSecureProfile [ java/lang/String ] metaData Ljava/lang/Object; _ `	  a &coldfusion/runtime/AttributeCollection c name e access g public i output k hint m <Checks whether secure profile is selected while installation o 
Parameters q ([Ljava/lang/Object;)V  s
 d t getMetadata ()Ljava/lang/Object; this /Lcfsecurity2ecfc1927877911$funcISSECUREPROFILE; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       _ `     v w  {   "     � b�    z        x y    | }  {   !     \�    z        x y    ~   {         �    z        x y    � �  {   #     � ^�    z        x y    � �  {  �     �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:
-9� 4-68� >� D-;� 4--
� HJ� LYNSYPS� TW-<� 4--<� 4-VX� >Z� L� T� D-=� 4--� H\� L� T��    z   z    � x y     � � �    � � `    � � �    � � �    � � �    � � `    � - .    �  �    �  � 	   �  � 
   �  �  �   � )   8 4 9 = 9 = 9 ? 9 ? 9 < 9 < 9 < 9 < 9 4 9 4 9 N ; N ; \ ; \ ; a ; a ; M ; M ; M ; h < x < x < z < z < w < w < p < p < p < p < h < � = � = � = � = � = � = � = M :     {   #     *� 
�    z        x y    �   {   f     H� dY
� LYfSY\SYhSYjSYlSYPSYnSYpSYrSY	� LS� u� b�    z       H x y    � }  {   !     P�    z        x y        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc 1cfsecurity2ecfc1927877911$funcSETUSEADMINPASSWORD  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / USEADMINPASSWORD 1 boolean 3 getVariable  (I)Lcoldfusion/runtime/Variable; 5 6 %coldfusion/runtime/ArgumentCollection 8
 9 7 3coldfusion/tagext/validation/CFTypeValidatorFactory ; BOOL_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; = >	 < ? _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; A B
  C _setCurrentLineNo (I)V E F
 " G 	component I CFIDE.adminapi.accessmanager K CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; M N coldfusion/runtime/CFPage P
 Q O set (Ljava/lang/Object;)V S T coldfusion/runtime/Variable V
 W U java Y  coldfusion.server.ServiceFactory [ getSecurityService ] java/lang/Object _ _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; a b
 " c _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; e f
 " g checkRootAdminUser i setAdminSecurityEnabled k java/lang/String m _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; o p
 " q LOGAUDIT s &(Ljava/lang/String;)Ljava/lang/Object; e u
 " v logaudit x msg z  enabled using admin password. | )([Ljava/lang/Object;[Ljava/lang/Object;)V  ~
 9  
_invokeUDF b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object; � �
 " � setUseAdminPassword � metaData Ljava/lang/Object; � �	  � void � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � @Specifies whether ColdFusion Administrator security is required. � 
Parameters � REQUIRED � Yes � TYPE � HINT � True or False � NAME � useAdminPassword � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this 3Lcfsecurity2ecfc1927877911$funcSETUSEADMINPASSWORD; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       � �   	  � �  �   "     � ��    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   !     ��    �        � �    � �  �   (     
� nY2S�    �       
 � �    � �  �  A     �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:*24� :� @� D:
-g� H-JL� R� X-h� H--h� H-Z\� R^� `� d� X-j� H--
� hj� `� dW-k� H--� hl� `Y-� nY2S� rS� dW-n� H-t� wy-� 9Y� nY{S� `Y}S� �� �W�    �   �    � � �     � � �    � � �    � � �    � � �    � � �    � � �    � - .    �  �    �  � 	   �  � 
   �  �    � 1 �  �   � .   e G g P g P g R g R g O g O g O g O g G g G g Z h j h j h l h l h i h i h b h b h b h b h Z h Z h � j � j � j � j � j � k � k � k � k � k � k � k � i � n � n � n � n � n � n � n � n     �   #     *� 
�    �        � �    �   �   �     �� �Y� `Y�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� `Y� �Y� `Y�SY�SY�SY4SY�SY�SY�SY�S� �SS� �� ��    �       � � �    � �  �   !     ��    �        � �        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc /cfsecurity2ecfc1927877911$funcVALIDATEDIRECTORY  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   NEWDIR  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - 	DIRECTORY / getVariable  (I)Lcoldfusion/runtime/Variable; 1 2 %coldfusion/runtime/ArgumentCollection 4
 5 3 _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; 7 8
  9 _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; ; <
   = set (Ljava/lang/Object;)V ? @ coldfusion/runtime/Variable B
 C A _setCurrentLineNo (I)V E F
   G _String &(Ljava/lang/Object;)Ljava/lang/String; I J coldfusion/runtime/Cast L
 M K Trim &(Ljava/lang/String;)Ljava/lang/String; O P coldfusion/runtime/CFPage R
 S Q Right '(Ljava/lang/String;I)Ljava/lang/String; U V
 S W /* Y _compare '(Ljava/lang/Object;Ljava/lang/String;)D [ \
   ] concat _ P java/lang/String a
 b ` 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; ; d
   e Left g V
 S h / j validateDirectory l metaData Ljava/lang/Object; n o	  p false r &coldfusion/runtime/AttributeCollection t java/lang/Object v name x access z private | output ~ hint � 8Ensure that the directory starts with / and ends with /* � 
Parameters � REQUIRED � true � HINT � &Specifies the directory to be secured. � NAME � 	directory � ([Ljava/lang/Object;)V  �
 u � getMetadata ()Ljava/lang/Object; this 1Lcfsecurity2ecfc1927877911$funcVALIDATEDIRECTORY; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       n o     � �  �   "     � q�    �        � �    � �  �   !     m�    �        � �    � �  �         �    �        � �    � �  �   (     
� bY0S�    �       
 � �    � �  �  H     �+� � :+� ,� :	+� :
-� $� *:-� .:*0� 6� ::
-0� >� D-Ӷ H-Ӷ H-0� >� N� T� XZ� ^�� 
-0� >� NZ� c� D-ٶ H-
� f� N� ik� ^�� 
k-
� f� N� c� D-
� f��    �   z    � � �     � � �    � � o    � � �    � � �    � � �    � � o    � + ,    �  �    �  � 	   �  � 
   � / �  �   � >  � <� >� >� >� >� <� <� U� U� U� U� U� U� U� U� a� a� U� U� e� e� q� q� q� q� z� z� q� q� q� q� o� U� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� U�     �   #     *� 
�    �        � �    �   �   �     u� uY
� wYySYmSY{SY}SYSYsSY�SY�SY�SY	� wY� uY� wY�SY�SY�SY�SY�SY�S� �SS� �� q�    �       u � �    � �  �   !     s�    �        � �        ����  -= 
SourceFile /CFIDE/adminapi/security.cfc /cfsecurity2ecfc1927877911$funcGETSECUREDIPPORTS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   PERMISSIONS  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SOCKETARRAY  ACCESSMANAGER ! SECURITY # I % WEBAPP ' coldfusion/runtime/CfJspPage ) pageContext #Lcoldfusion/runtime/NeoPageContext; + ,	 * - getOut ()Ljavax/servlet/jsp/JspWriter; / 0 javax/servlet/jsp/JspContext 2
 3 1 parent Ljavax/servlet/jsp/tagext/Tag; 5 6	 * 7 	DIRECTORY 9 getVariable  (I)Lcoldfusion/runtime/Variable; ; < %coldfusion/runtime/ArgumentCollection >
 ? = _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; A B
  C / E set (Ljava/lang/Object;)V G H coldfusion/runtime/Variable J
 K I _setCurrentLineNo (I)V M N
 * O ArrayNew (I)Ljava/util/List; Q R coldfusion/runtime/CFPage T
 U S 1 W 	component Y CFIDE.adminapi.accessmanager [ CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; ] ^
 U _ java a  coldfusion.server.ServiceFactory c getSecurityService e java/lang/Object g _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; i j
 * k _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; m n
 * o checkAdminRoles q Ucoldfusion.sandboxsecurity,coldfusion.serversettings,coldfusion.serversettingssummary s false u java/lang/String w CONTEXTS y _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; { |
 * } _autoscalarize  n
 * � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
 * � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � _resolveAndAutoscalarize � |
 * � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 U � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 * � coldfusion/tagext/lang/ThrowTag � throw � setCalledName (Ljava/lang/String;)V � � coldfusion/tagext/GenericTag �
 � � cfthrow � message � SANDBOX_NOT_FOUND � &(Ljava/lang/String;)Ljava/lang/Object;  �
 * � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 * � 
setMessage � �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 * � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
 * � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 U � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
 * � CLASS � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
 * � java.net.SocketPermission � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 * � _List $(Ljava/lang/Object;)Ljava/util/List; � �
 � � TARGET � ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z � �
 U � _double (Ljava/lang/Object;)D � �
 � � _Object (D)Ljava/lang/Object; � �
 � � ArrayLen (Ljava/lang/Object;)I � �
 U � (I)Ljava/lang/Object; � �
 � � '(Ljava/lang/Object;Ljava/lang/Object;)D � �
 * � getSecuredIPPorts � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection  name access public output hint
 2Returns an array of secured ports for the sandbox. 
Parameters REQUIRED true HINT ESpecifies the sandbox directory for which secured ports are returned. NAME 	directory ([Ljava/lang/Object;)V 
 getMetadata ()Ljava/lang/Object; this 1Lcfsecurity2ecfc1927877911$funcGETSECUREDIPPORTS; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw48 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getOutput 1       � �    � �      $   "     � ��   #       !"   %& $   !     ��   #       !"   '( $         �   #       !"   )* $   (     
� xY:S�   #       
!"   +, $  d    L+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :+(� :-� .� 4:-� 8:*:� @� D:F� L
-� P-� V� L- � P-� V� LX� L-"� P-Z\� `� L-#� P--#� P-bd� `f� h� l� L-%� P--� pr� hYtSYvS� lW-'� P--� xYzS� ~-� �� �� �-� xY:S� �� �� ��� H-� �0� �� �:-)� P�� ���-�� �� ��� �� �� �� ș �
--� P--� xYzS� ~� hY-� �SY-:� �S� ˸ ϶ LX� L� l--
-� �� Ҹ �� xY�S� �ٸ ��� 3-5� P-� �� �--
-� �� Ҹ �� xY�S� ׸ �W-� �� �c� � L-� �-1� P-
� �� � �� ��t|���s-� ���   #   �   L!"    L-.   L/ �   L01   L23   L45   L6 �   L 5 6   L 7   L 7 	  L 7 
  L 7   L !7   L #7   L %7   L '7   L 97   L89 :  J �   d f f f f d k u u t t t t k |  �  �  �  �  �  �  |  �! �! �! �! �! �! �" �" �" �" �" �" �" �" �" �" �# �# �# �# �# �# �# �# �# �# �# �# �% �% �% �% �% �% �% �% �% �' �''' �' �' �' �''''' �' �' �' �' �' �'P)P)P)P),) �'{-{-�-�-�-�-z-z-z-z-z-z-q-�1�1�1�1�1�3�3�3�3�3�3�5�5�5�5�5�5�5�5�5�5�5�31111111111	111)1)1)1)111�1C9C9C9C9C9 d    $   #     *� 
�   #       !"   ;  $   �     ��� �� ��Y
� hYSY�SYSYSY	SYvSYSYSYSY	� hY�Y� hYSYSYSYSYSYS�SS�� ��   #       �!"   <& $   !     v�   #       !"        ����  -� 
SourceFile /CFIDE/adminapi/security.cfc %cfsecurity2ecfc1927877911$funcSETUSER  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / USERNAME 1 string 3 getVariable  (I)Lcoldfusion/runtime/Variable; 5 6 %coldfusion/runtime/ArgumentCollection 8
 9 7 3coldfusion/tagext/validation/CFTypeValidatorFactory ; STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; = >	 < ? _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; A B
  C PASSWORD E get (I)Ljava/lang/Object; G H
 9 I DESCRIPTION K   M put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; O P
 9 Q _validateArgWithValidator S B
  T ROLES V _setCurrentLineNo (I)V X Y
 " Z ArrayNew (I)Ljava/util/List; \ ] coldfusion/runtime/CFPage _
 ` ^ array b ARRAY_VALIDATOR d >	 < e ALLOWRDSACCESS g false i boolean k BOOL_VALIDATOR m >	 < n ALLOWADMINACCESS p ALLOWADMINAPIACCESS r SERVICES t 	ENABLEDDS v FILEPERMISSIONS x ISHASHED z 	component | CFIDE.adminapi.accessmanager ~ CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; � �
 ` � set (Ljava/lang/Object;)V � � coldfusion/runtime/Variable �
 � � java �  coldfusion.server.ServiceFactory � getSecurityService � java/lang/Object � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
 " � _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
 " � checkRootAdminUser � _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; � �
 " � ArrayLen (Ljava/lang/Object;)I � �
 ` � 1 � _double (Ljava/lang/String;)D � � coldfusion/runtime/Cast �
 � � _Object (D)Ljava/lang/Object; � �
 � � I � bindPageVariable P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; � �
 " � _arrayGetAt 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; � �
 " � IsSimpleValue (Ljava/lang/Object;)Z � �
 ` � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 " � coldfusion/tagext/lang/ThrowTag � 2The roles argument can contain only simple values. � 
setMessage (Ljava/lang/String;)V � �
 � � cfadminapivalidationerror � setType � �
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 " � CFLOOP � checkRequestTimeout � �
 " � _checkCondition (DDD)Z � �
 " � setAuthorizedUser � java/lang/String � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 " � LOGAUDIT � � �
 " � logaudit � msg � java/lang/StringBuffer �  added/edited user    �
 � _String &(Ljava/lang/Object;)Ljava/lang/String;
 � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;	
 �
 . toString ()Ljava/lang/String;
 � )([Ljava/lang/Object;[Ljava/lang/Object;)V 
 9 
_invokeUDF b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object;
 " setUser metaData Ljava/lang/Object;	  void &coldfusion/runtime/AttributeCollection! name# access% public' output) 
returntype+ hint- Add or Update a new user./ 
Parameters1 REQUIRED3 true5 TYPE7 HINT9 %Specifies the username for this user.; NAME= username? ([Ljava/lang/Object;)V A
"B %Specifies the password for this user.D passwordF $Specifies a description of the user.H DEFAULTJ descriptionL %Administrative roles assigned to userN [runtime expression]P rolesR =Specifies whether or not RDS access is allowed for this user.T allowrdsaccessV XSpecifies whether or not CF Administrator and Admin API access is allowed for this user.X allowadminaccessZ CSpecifies whether or not Admin API access is allowed for this user.\ allowadminapiaccess^ $Services  user is allowed to access.` servicesb !datasources to allowed to access.d 	enableddsf Files to allowed to access.h filepermissionsj ;Set it to true if the password sent is already hashed once.l isHashedn getMetadata ()Ljava/lang/Object; this 'Lcfsecurity2ecfc1927877911$funcSETUSER; LocalVariableTable Code getName 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t23 D t25 t27 t29 throw53 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getOutput 1       � �      	 pq u   "     ��   t       rs   v u   "     �   t       rs   wx u         �   t       rs   y u   "      �   t       rs   z{ u   `     B� �Y2SYFSYLSYWSYhSYqSYsSYuSYwSY	ySY
{S�   t       Brs   |} u  y    !+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:*24� :� @� D:*F4� :� @� D:� J� LN� RW*L4� :� @� U:� J� W-	d� [-� a� RW*Wc� :� f� U:� J� hj� RW*hl� :� o� U:� J� qj� RW*ql� :� o� U:� J� sj� RW*sl� :� o� U:� J� u-	h� [-� a� RW*uc� :� f� U:� J� w-	i� [-� a� RW*wc� :� f� U:	� J� y-	j� [-� a� RW*yc	� :� f� U:
� J� {j� RW*{l
� :� o� U:
-	l� [-}� �� �-	m� [--	m� [-��� ��� �� �� �-	o� [--
� ��� �� �W9-	r� [-W� �� ��9�� �9� �:-�+� �:� �� l-	s� [-W-�� �� �� ��� 8-� �5� �� �:-	t� [Ѷ �׶ �� �� � �c\9� �:� �� �� ���-	y� [--� ��� �Y-� �Y2S� �SY-� �YFS� �SY-� �YLS� �SY-� �YqS� �SY-� �YhS� �SY-� �YsS� �SY-� �YwS� �SY-� �YyS� �SY-� �YWS� �SY	-� �YuS� �SY
-� �Y{S� �S� �W-	�� [-�� ��-� 9Y� �Y�S� �Y� �Y�-� �Y2S� �����S��W�   t     !rs    !~   !�   !��   !��   !��   !�   ! - .   ! �   ! � 	  ! � 
  ! �   ! 1�   ! E�   ! K�   ! V�   ! g�   ! p�   ! r�   ! t�   ! v�   ! x�   ! z�   !��   !��   !��   !��   !�� �  & �  	` h	c h	c �	d �	d �	d �	d �	d �	d �	e �	e �	f �	f	g	g@	h@	h?	h?	h?	h?	hs	is	ir	ir	ir	ir	i�	j�	j�	j�	j�	j�	j�	k�	k�	l�	l�	l�	l�	l�	l�	l�	l�	l�	l�	l�	m	m	m	m	m	m	m	m	m	m	m�	m�	m,	o,	o+	o+	o+	o+	oF	rF	rF	rF	rF	rF	rR	rR	r}	s}	sz	sz	sz	sz	sz	sz	sz	sz	s�	t�	t�	t�	t�	tz	s�	r<	r�	y�	y�	y�	y	z	z#	{#	{5	|5	|G	}G	}Y	~Y	~l	l		�	��	��	��	��	��	��	��	y�	y�	y�	x�	��	��	��	��	��	��	��	��	��	�	�	��	��	��	��	��	��	�    u   #     *� 
�   t       rs   �  u  �    ��� ǳ ɻ"Y� �Y$SYSY&SY(SY*SYjSY,SY SY.SY	0SY
2SY� �Y�"Y� �Y4SY6SY8SY4SY:SY<SY>SY@S�CSY�"Y� �Y4SY6SY8SY4SY:SYESY>SYGS�CSY�"Y
� �Y:SYISY4SYjSY8SY4SYKSYNSY>SY	MS�CSY�"Y
� �Y:SYOSY4SYjSY8SYcSYKSYQSY>SY	SS�CSY�"Y
� �Y:SYUSY4SYjSY8SYlSYKSYjSY>SY	WS�CSY�"Y
� �Y:SYYSY4SYjSY8SYlSYKSYjSY>SY	[S�CSY�"Y
� �Y:SY]SY4SYjSY8SYlSYKSYjSY>SY	_S�CSY�"Y
� �Y:SYaSY4SYjSY8SYcSYKSYQSY>SY	cS�CSY�"Y
� �Y:SYeSY4SYjSY8SYcSYKSYQSY>SY	gS�CSY	�"Y
� �Y:SYiSY4SYjSY8SYcSYKSYQSY>SY	kS�CSY
�"Y
� �Y:SYmSY4SYjSY8SYlSYKSYjSY>SY	oS�CSS�C��   t      �rs   � u   !     j�   t       rs        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc (cfsecurity2ecfc1927877911$funcFORMATPORT  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   NEWPORT  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - PORT / getVariable  (I)Lcoldfusion/runtime/Variable; 1 2 %coldfusion/runtime/ArgumentCollection 4
 5 3 _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; 7 8
  9 PORTTYPE ; _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; = >
   ? set (Ljava/lang/Object;)V A B coldfusion/runtime/Variable D
 E C range G _compare '(Ljava/lang/Object;Ljava/lang/String;)D I J
   K _setCurrentLineNo (I)V M N
   O [0-9].[0-9]. Q _String &(Ljava/lang/Object;)Ljava/lang/String; S T coldfusion/runtime/Cast V
 W U REFind :(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer; Y Z coldfusion/runtime/CFPage \
 ] [ _boolean (Ljava/lang/Object;)Z _ `
 W a - c   e all g Replace \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String; i j
 ] k Val (Ljava/lang/String;)D m n
 ] o _Object (D)Ljava/lang/Object; q r
 W s higher u (D)Ljava/lang/String; S w
 W x concat &(Ljava/lang/String;)Ljava/lang/String; z { java/lang/String }
 ~ | lower � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; = �
   � 
formatPort � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � java/lang/Object � name � access � private � hint � +Format a port based on the specified range. � 
Parameters � REQUIRED � Yes � HINT � Specifies the port number. � NAME � port � ([Ljava/lang/Object;)V  �
 � � USpecifies the range designation:<ul><li>single</li><li>higher</li><li>lower</li></ul> � portType � getMetadata ()Ljava/lang/Object; this *Lcfsecurity2ecfc1927877911$funcFORMATPORT; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 1       � �     � �  �   "     � ��    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   -     � ~Y0SY<S�    �        � �    � �  �  �    i+� � :+� ,� :	+� :
-� $� *:-� .:*0� 6� ::*<� 6� ::
-0� @� F-<� @H� L�� [-ڶ PR-0� @� X� ^� b� 
-0� @� F� .
-߶ P-߶ P-0� @� Xdfh� l� p� t� F� �-<� @v� L�� 6
-� P-� P-0� @� Xdfh� l� p� yd� � F� a-<� @�� L�� 6
d-� P-� P-0� @� Xdfh� l� p� y� � F� 
-� P-0� @� X� p� t� F-
� ���    �   �   i � �    i � �   i � �   i � �   i � �   i � �   i � �   i + ,   i  �   i  � 	  i  � 
  i / �   i ; �  �  � |  � L� N� N� N� N� L� W� W� ]� ]� n� n� p� p� p� p� y� y� n� n� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� n� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��������$�$�$�$�-�-�/�/�1�1�$�$�$�$�$�$�$�$������N�N�N�N�N�N�N�N�E��� �� �� W�`�`�`�`�`� L�     �   #     *� 
�    �        � �    �   �   �     �� �Y� �Y�SY�SY�SY�SY�SY�SY�SY� �Y� �Y� �Y�SY�SY�SY�SY�SY�S� �SY� �Y� �Y�SY�SY�SY�SY�SY�S� �SS� �� ��    �       � � �        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc ,cfsecurity2ecfc1927877911$funcSETRDSPASSWORD  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / PASSWORD 1 string 3 getVariable  (I)Lcoldfusion/runtime/Variable; 5 6 %coldfusion/runtime/ArgumentCollection 8
 9 7 3coldfusion/tagext/validation/CFTypeValidatorFactory ; STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; = >	 < ? _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; A B
  C _setCurrentLineNo (I)V E F
 " G 	component I CFIDE.adminapi.accessmanager K CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; M N coldfusion/runtime/CFPage P
 Q O set (Ljava/lang/Object;)V S T coldfusion/runtime/Variable V
 W U java Y  coldfusion.server.ServiceFactory [ getSecurityService ] java/lang/Object _ _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; a b
 " c _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; e f
 " g checkRootAdminUser i setRdsPassword k java/lang/String m _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; o p
 " q LOGAUDIT s &(Ljava/lang/String;)Ljava/lang/Object; e u
 " v logaudit x msg z  changed RDS password. | )([Ljava/lang/Object;[Ljava/lang/Object;)V  ~
 9  
_invokeUDF b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object; � �
 " � setRDSPassword � metaData Ljava/lang/Object; � �	  � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � hint � Sets the RDS password. � 
Parameters � REQUIRED � Yes � TYPE � HINT � RDS password. � NAME � password � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this .Lcfsecurity2ecfc1927877911$funcSETRDSPASSWORD; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       � �     � �  �   "     � ��    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   (     
� nY2S�    �       
 � �    � �  �  G     �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:*24� :� @� D:
- �� H-JL� R� X- �� H-- �� H-Z\� R^� `� d� X- �� H--
� hj� `� dW- �� H--� hl� `Y-� nY2S� rS� dW- �� H-t� wy-� 9Y� nY{S� `Y}S� �� �W�    �   �    � � �     � � �    � � �    � � �    � � �    � � �    � � �    � - .    �  �    �  � 	   �  � 
   �  �    � 1 �  �   � .   � G � Q � Q � S � S � P � P � P � P � G � G � [ � m � m � o � o � l � l � d � d � d � d � [ � [ � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �     �   #     *� 
�    �        � �    �   �   �     �� �Y
� `Y�SY�SY�SY�SY�SY�SY�SY�SY�SY	� `Y� �Y� `Y�SY�SY�SY4SY�SY�SY�SY�S� �SS� �� ��    �       � � �    � �  �   !     ��    �        � �        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc 1cfsecurity2ecfc1927877911$funcGETUSEADMINPASSWORD  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   SECURITY  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - _setCurrentLineNo (I)V / 0
   1 java 3  coldfusion.server.ServiceFactory 5 CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; 7 8 coldfusion/runtime/CFPage :
 ; 9 getSecurityService = java/lang/Object ? _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; A B
   C set (Ljava/lang/Object;)V E F coldfusion/runtime/Variable H
 I G _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; K L
   M isAdminSecurityEnabled O java/lang/String Q getUseAdminPassword S metaData Ljava/lang/Object; U V	  W false Y &coldfusion/runtime/AttributeCollection [ name ] access _ public a output c hint e =Checks whether ColdFusion Administrator security is required. g 
Parameters i ([Ljava/lang/Object;)V  k
 \ l getMetadata ()Ljava/lang/Object; this 3Lcfsecurity2ecfc1927877911$funcGETUSEADMINPASSWORD; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       U V     n o  s   "     � X�    r        p q    t u  s   !     T�    r        p q    v w  s         �    r        p q    x y  s   #     � R�    r        p q    z {  s  J     h+� � :+� ,� :	+� :
-� $� *:-� .:
-� 2--� 2-46� <>� @� D� J-� 2--
� NP� @� D��    r   p    h p q     h | }    h ~ V    h  �    h � �    h � �    h � V    h + ,    h  �    h  � 	   h  � 
 �   Z     ,  <  <  >  >  ;  ;  4  4  4  4  ,  ,  V  V  U  U  U  U  U  U      s   #     *� 
�    r        p q    �   s   f     H� \Y
� @Y^SYTSY`SYbSYdSYZSYfSYhSYjSY	� @S� m� X�    r       H p q    � u  s   !     Z�    r        p q        ����  -� 
SourceFile /CFIDE/adminapi/security.cfc 6cfsecurity2ecfc1927877911$funcDELETEDISABLEDCFFUNCTION  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   TARGET  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   PERMISSIONS  ACCESSMANAGER ! AENABLEDCFFUNCTIONS # 	TARGETPOS % SECURITY ' 
TARGETTEMP ) WEBAPP + ARRAYPOS - coldfusion/runtime/CfJspPage / pageContext #Lcoldfusion/runtime/NeoPageContext; 1 2	 0 3 getOut ()Ljavax/servlet/jsp/JspWriter; 5 6 javax/servlet/jsp/JspContext 8
 9 7 parent Ljavax/servlet/jsp/tagext/Tag; ; <	 0 = 	DIRECTORY ? getVariable  (I)Lcoldfusion/runtime/Variable; A B %coldfusion/runtime/ArgumentCollection D
 E C _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; G H
  I FUNCTIONNAME K / M set (Ljava/lang/Object;)V O P coldfusion/runtime/Variable R
 S Q _setCurrentLineNo (I)V U V
 0 W ArrayNew (I)Ljava/util/List; Y Z coldfusion/runtime/CFPage \
 ] [ GETDISABLEDCFFUNCTIONS _ _get &(Ljava/lang/String;)Ljava/lang/Object; a b
 0 c getDisabledCFFunctions e java/lang/Object g _autoscalarize i b
 0 j 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; l m
 0 n _List $(Ljava/lang/Object;)Ljava/util/List; p q coldfusion/runtime/Cast s
 t r ArrayToList $(Ljava/util/List;)Ljava/lang/String; v w
 ] x 1 z   | 0 ~ 	component � CFIDE.adminapi.accessmanager � CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; � �
 ] � java �  coldfusion.server.ServiceFactory � getSecurityService � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
 0 � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; a �
 0 � checkAdminRoles � coldfusion.sandboxsecurity � GETSECURABLECFFUNCTIONS � getSecurableCFFunctions � java/lang/String � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 0 � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 t � ListFindNoCase '(Ljava/lang/String;Ljava/lang/String;)I � �
 ] � _boolean (D)Z � �
 t � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 0 � coldfusion/tagext/lang/ThrowTag � cfthrow � message � SECURITY_INVALIDFUNCTION � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 0 � 
setMessage (Ljava/lang/String;)V � �
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 0 � CONTEXTS � _resolve � �
 0 � i �
 0 � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
 0 � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 t � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 ] � throw � setCalledName � �
 � � SANDBOX_NOT_FOUND � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
 0 � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 ] � GETFUNCTIONPERMISSIONPOSITION � getFunctionPermissionPosition � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
 0 � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; �
 0 * _compare '(Ljava/lang/Object;Ljava/lang/String;)D
 0 Left '(Ljava/lang/String;I)Ljava/lang/String;

 ] *- RemoveChars ((Ljava/lang/String;II)Ljava/lang/String;
 ] _Object (I)Ljava/lang/Object;
 t _int (Ljava/lang/Object;)I
 t ListDeleteAt
 ] ListLen (Ljava/lang/String;)I 
 ]! (Ljava/lang/Object;D)D#
 0$ concat &(Ljava/lang/String;)Ljava/lang/String;&'
 �( _structSetAt :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)V*+
 0, _LhsResolve. �
 0/ _arraySetAt1+
 02 LOGAUDIT4 logaudit6 msg8 java/lang/StringBuffer:  removed a function <  �
;> append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;@A
;B F from the list of disabled functions in the sandbox for the directory D .F toString ()Ljava/lang/String;HI
 hJ )([Ljava/lang/Object;[Ljava/lang/Object;)V L
 EM b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object; lO
 0P deleteDisabledCFFunctionR metaData Ljava/lang/Object;TU	 V voidX falseZ &coldfusion/runtime/AttributeCollection\ name^ access` publicb outputd 
returntypef hinth ERemove a function from the list of disabled functions in the sandbox.j 
Parametersl REQUIREDn truep HINTr BSpecifies the sandbox directory for which the function is enabled.t NAMEv 	directoryx ([Ljava/lang/Object;)V z
]{ -Specifies the name of the function to enable.} functionName getMetadata ()Ljava/lang/Object; this 8Lcfsecurity2ecfc1927877911$funcDELETEDISABLEDCFFUNCTION; LocalVariableTable Code getName 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw39 !Lcoldfusion/tagext/lang/ThrowTag; throw40 LineNumberTable <clinit> 	getOutput 1       � �   TU   	 �� �   "     �W�   �       ��   �I �   "     S�   �       ��   �� �         �   �       ��   �I �   "     Y�   �       ��   �� �   -     � �Y@SYLS�   �       ��   �� �  
a    �+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :+(� :+*� :+,� :+.� :-� 4� ::-� >:*@� F� J:*L� F� J:N� T-�� X-� ^� T-�� X-�� X-`� df-� hY-@� kS� o� u� y� T{� T
}� T� T}� T-�� X-��� �� T-�� X--�� X-��� ��� h� �� T-�� X--� ��� hY�S� �W-�� X-�� X-�� X-�� d�-� h� o� u� y-� �YLS� �� �� ��� ��� @-� �'� �� �:-�� X��-ƶ k� �� ʶ �� �� ؙ �-�� X--� �Y�S� �-� ߸ � �-� �Y@S� �� �� ��� H-� �(� �� �:-�� X�� ���-� k� ��� ʶ �� �� ؙ �-�� X--� �Y�S� �� hY-� �SY-@� kS� �� �� T-Ķ X-�� d�-� hY-� �SY-@� kS� o� T
---� ߶ � �� �YS�� T-
� ��	�� � �-̶ X-
� ߸ ���	�� �-ж X-
� ߸ ��� T-Ѷ X-� ߸ �-L� k� �� ��� T-Ҷ X-� ߸ �-� ߸�� T-ֶ X-� ߸ ��"��%�� 
� T� %
� T
-
� ߸ �-� ߸ ��)� T� 
� T---� ߶ � �� �YS-
� ߶--� �Y�S�0� hY-� �SY-@� kS-� ߸3-� X-5� d7-� EY� �Y9S� hY�;Y=�?-� �YLS� �� ��CE�C-� �Y@S� �� ��CG�C�KS�N�QW�   �   �   ���    ���   ��U   ���   ���   ���   ��U   � ; <   � �   � � 	  � � 
  � �   � !�   � #�   � %�   � '�   � )�   � +�   � -�   � ?�   � K�   ���   ��� �  �7  � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ���������������3�3�A�A�2�2�2�2�]�]�]�]�]�]�]�]�]�]�s�s�s�s�]�]�]�]�]�]�����������]�������������������������������������/�/�/�/����Z�Z�o�o�x�x�Y�Y�Y�Y�Y�Y�P�����������������������������������������������������������������������������
�-�-�-�-�6�6�6�6�-�-�-�-�$�Q�Q�Q�Q�Z�Z�Z�Z�Q�Q�Q�Q�H�p�p�p�p�p�p�������������������������������������������������p��������������������������������������� � �����������:�:�@�@�@�@�@�@�U�U�[�[�[�[�[�[�p�p�6�6�����    �   #     *� 
�   �       ��   �  �   �     ��� �� ��]Y� hY_SYSSYaSYcSYeSY[SYgSYYSYiSY	kSY
mSY� hY�]Y� hYoSYqSYsSYuSYwSYyS�|SY�]Y� hYoSYqSYsSY~SYwSY�S�|SS�|�W�   �       ���   �I �   "     [�   �       ��        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc /cfsecurity2ecfc1927877911$funcSETUSERDSPASSWORD  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / USEADMINPASSWORD 1 boolean 3 getVariable  (I)Lcoldfusion/runtime/Variable; 5 6 %coldfusion/runtime/ArgumentCollection 8
 9 7 3coldfusion/tagext/validation/CFTypeValidatorFactory ; BOOL_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; = >	 < ? _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; A B
  C _setCurrentLineNo (I)V E F
 " G 	component I CFIDE.adminapi.accessmanager K CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; M N coldfusion/runtime/CFPage P
 Q O set (Ljava/lang/Object;)V S T coldfusion/runtime/Variable V
 W U java Y  coldfusion.server.ServiceFactory [ getSecurityService ] java/lang/Object _ _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; a b
 " c _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; e f
 " g checkRootAdminUser i setRDSSecurityEnabled k java/lang/String m _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; o p
 " q LOGAUDIT s &(Ljava/lang/String;)Ljava/lang/Object; e u
 " v logaudit x msg z isapplication |  changed RDS password. ~ true � )([Ljava/lang/Object;[Ljava/lang/Object;)V  �
 9 � 
_invokeUDF b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object; � �
 " � setUseRDSPassword � metaData Ljava/lang/Object; � �	  � void � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � +Specifies whether RDS security is required. � 
Parameters � REQUIRED � Yes � TYPE � HINT � Specify true or false. � NAME � useAdminPassword � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this 1Lcfsecurity2ecfc1927877911$funcSETUSERDSPASSWORD; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       � �   	  � �  �   "     � ��    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   !     ��    �        � �    � �  �   (     
� nY2S�    �       
 � �    � �  �  Y     �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:*24� :� @� D:
- �� H-JL� R� X- �� H-- �� H-Z\� R^� `� d� X- �� H--
� hj� `� dW- �� H--� hl� `Y-� nY2S� rS� dW- Ķ H-t� wy-� 9Y� nY{SY}S� `YSY�S� �� �W�    �   �    � � �     � � �    � � �    � � �    � � �    � � �    � � �    � - .    �  �    �  � 	   �  � 
   �  �    � 1 �  �   � 0   � G � Q � Q � S � S � P � P � P � P � G � G � [ � m � m � o � o � l � l � d � d � d � d � [ � [ � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �     �   #     *� 
�    �        � �    �   �   �     �� �Y� `Y�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� `Y� �Y� `Y�SY�SY�SY4SY�SY�SY�SY�S� �SS� �� ��    �       � � �    � �  �   !     ��    �        � �        ����  -� 
SourceFile /CFIDE/adminapi/security.cfc 1cfsecurity2ecfc1927877911$funcDELETESECUREDIPPORT  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ST  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   PERMISSIONS  SUCCESS ! ACCESSMANAGER # ADDWILDCARD % SECURITY ' I ) WEBAPP + coldfusion/runtime/CfJspPage - pageContext #Lcoldfusion/runtime/NeoPageContext; / 0	 . 1 getOut ()Ljavax/servlet/jsp/JspWriter; 3 4 javax/servlet/jsp/JspContext 6
 7 5 parent Ljavax/servlet/jsp/tagext/Tag; 9 :	 . ; 	DIRECTORY = getVariable  (I)Lcoldfusion/runtime/Variable; ? @ %coldfusion/runtime/ArgumentCollection B
 C A _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; E F
  G IP I PORT K get (I)Ljava/lang/Object; M N
 C O PORTTYPE Q single S put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; U V
 C W / Y set (Ljava/lang/Object;)V [ \ coldfusion/runtime/Variable ^
 _ ] true a _setCurrentLineNo (I)V c d
 . e ArrayNew (I)Ljava/util/List; g h coldfusion/runtime/CFPage j
 k i 	StructNew !()Lcoldfusion/util/FastHashtable; m n
 k o 1 q 	component s CFIDE.adminapi.accessmanager u CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; w x
 k y java {  coldfusion.server.ServiceFactory } getSecurityService  java/lang/Object � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
 . � _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
 . � checkAdminRoles � coldfusion.sandboxsecurity � java/lang/String � CONTEXTS � _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 . � _autoscalarize � �
 . � _arrayGetAt � V
 . � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � _resolveAndAutoscalarize � �
 . � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 k � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 . � coldfusion/tagext/lang/ThrowTag � throw � setCalledName (Ljava/lang/String;)V � � coldfusion/tagext/GenericTag �
 � � cfthrow � message � SANDBOX_NOT_FOUND � &(Ljava/lang/String;)Ljava/lang/Object; � �
 . � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 . � 
setMessage � �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 . � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
 . � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 k � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
 . � CLASS � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
 . � java.net.SocketPermission � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 . � TARGET � java/lang/StringBuffer �  �
 � � : � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 � � 
FORMATPORT � �
 . 
formatPort 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;
 .	 toString ()Ljava/lang/String;
 � '(Ljava/lang/Object;Ljava/lang/Object;)D �
 . _List $(Ljava/lang/Object;)Ljava/util/List;
 � _int (Ljava/lang/Object;)I
 � ArrayDeleteAt (Ljava/util/List;I)Z
 k _double (Ljava/lang/Object;)D
 �  _Object (D)Ljava/lang/Object;"#
 �$ ArrayLen&
 k'" N
 �) false+ _boolean (Ljava/lang/Object;)Z-.
 �/ _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V12
 .3 *5 ACTION7 connect,resolve9 ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z;<
 k= _LhsResolve? �
 .@ _arraySetAt :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)VBC
 .D LOGAUDITF logauditH msgJ  removed a IP L F from the list of disabled functions in the sandbox for the directory N .P )([Ljava/lang/Object;[Ljava/lang/Object;)V R
 CS b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object;U
 .V deleteSecuredIPPortX metaData Ljava/lang/Object;Z[	 \ &coldfusion/runtime/AttributeCollection^ name` accessb publicd outputf hinth ?Removes a specified IP address and port from restricted status.j 
Parametersl REQUIREDn HINTp ESpecifies the sandbox directory for which the restriction is removed.r NAMEt 	directoryv ([Ljava/lang/Object;)V x
_y  Specifies the target IP address.{ Specifies the target port.} DEFAULT �Specifies the port type:<ul><li>single - Single port</li><li>higher - The specified port and higher</li><li>lower - The specified port and lower</li><li>range - Specified range of ports</li></ul>� portType� getMetadata ()Ljava/lang/Object; this 3Lcfsecurity2ecfc1927877911$funcDELETESECUREDIPPORT; LocalVariableTable Code getName 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw52 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getOutput 1       � �   Z[    �� �   "     �]�   �       ��   � �   "     Y�   �       ��   �� �         �   �       ��   �� �   7     � �Y>SYJSYLSYRS�   �       ��   �� �  	�    g+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :+(� :+*� :+,� :-� 2� 8:-� <:*>� D� H:*J� D� H:*L� D� H:� P� RT� XW� D:Z� `b� `-�� f-� l� `
-�� f� p� `r� `b� `-�� f-tv� z� `-�� f--�� f-|~� z�� �� �� `-�� f--� ��� �Y�S� �W-�� f--� �Y�S� �-� �� �� �-� �Y>S� �� �� ��� H-� �4� �� �:-�� f�� ���-Ͷ и ��� Զ �� �� ߙ �-�� f--� �Y�S� �� �Y-� �SY->� �S� � � `r� `� �---� �� � �� �Y�S� �� ��� �---� �� � �� �Y�S� � �Y-J� и �� ��� -�� f-�-� �Y-L� �SY-R� �S�
� �� ���~�� !-�� f--� ��-� ���W-� ��!c�%� `-� �-�� f-� ��(�*��t|���r� `� G---� �� � �� �Y�S� �� ��� ,� `� =-� ��!c�%� `-� �-�� f-� ��(�*��t|����-� ��0� S-
� �Y�S�4-
� �Y�S6�4-
� �Y8S:�4-�� f-� ��-
� ��>W-� �Y�S�A� �Y-� �SY->� �S-� ��E-Ŷ f-G�I-� CY� �YKS� �Y� �YM� �-� �YJS� �� �� O� -� �Y>S� �� �� Q� �S�T�WW�   �   �   g��    g��   g�[   g��   g��   g��   g�[   g 9 :   g �   g � 	  g � 
  g �   g !�   g #�   g %�   g '�   g )�   g +�   g =�   g I�   g K�   g Q�   g�� �  Z  � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �������	�	�	�	� �-�-�;�;�,�,�,�J�J�Y�Y�J�J�J�J�e�e�e�e�I�I�I�I�I�I����������I�������������������������������������
�
���"�"�0�0�,�,�L�L�L�L�X�X�d�d�u�u�~�~�d�d�d�d�H�H�,�,�����������������������,������������������������������������������������������������'�'�'�'�%�-���2�2�2�2�;�;�2�2�2�2�0�C�C�P�P�P�P�C�C���j�j���������v���������������������������������������j����������������������� ��������$�$�$�$�$�$�9�9�?�?�?�?�?�?�T�T�����������    �   #     *� 
�   �       ��   �  �  K    -�� �� ��_Y
� �YaSYYSYcSYeSYgSY,SYiSYkSYmSY	� �Y�_Y� �YoSYbSYqSYsSYuSYwS�zSY�_Y� �YoSYbSYqSY|SYuSYJS�zSY�_Y� �YoSYbSYqSY~SYuSYLS�zSY�_Y� �YoSY,SY�SYTSYqSY�SYuSY�S�zSS�z�]�   �      -��   � �   "     ,�   �       ��        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc 3cfsecurity2ecfc1927877911$funcISLOGINUSERIDREQUIRED  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   SECURITY  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - _setCurrentLineNo (I)V / 0
   1 java 3  coldfusion.server.ServiceFactory 5 CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; 7 8 coldfusion/runtime/CFPage :
 ; 9 getSecurityService = java/lang/Object ? _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; A B
   C set (Ljava/lang/Object;)V E F coldfusion/runtime/Variable H
 I G _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; K L
   M isAdminUserIdRequired O java/lang/String Q isLoginUserIdRequired S metaData Ljava/lang/Object; U V	  W false Y &coldfusion/runtime/AttributeCollection [ name ] access _ public a output c hint e �Checks whether or not a user id is required in addition to a password in order to login. If this returns true, a user id must be passed to the login function in addition to a password. g 
Parameters i ([Ljava/lang/Object;)V  k
 \ l getMetadata ()Ljava/lang/Object; this 5Lcfsecurity2ecfc1927877911$funcISLOGINUSERIDREQUIRED; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       U V     n o  s   "     � X�    r        p q    t u  s   !     T�    r        p q    v w  s         �    r        p q    x y  s   #     � R�    r        p q    z {  s  F     h+� � :+� ,� :	+� :
-� $� *:-� .:
-r� 2--r� 2-46� <>� @� D� J-s� 2--
� NP� @� D��    r   p    h p q     h | }    h ~ V    h  �    h � �    h � �    h � V    h + ,    h  �    h  � 	   h  � 
 �   V    q , r < r < r > r > r ; r ; r 4 r 4 r 4 r 4 r , r , r V s V s U s U s U s U s U s     s   #     *� 
�    r        p q    �   s   f     H� \Y
� @Y^SYTSY`SYbSYdSYZSYfSYhSYjSY	� @S� m� X�    r       H p q    � u  s   !     Z�    r        p q        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc 0cfsecurity2ecfc1927877911$funcCHECKADMINPASSWORD  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / PASSWORD 1 string 3 getVariable  (I)Lcoldfusion/runtime/Variable; 5 6 %coldfusion/runtime/ArgumentCollection 8
 9 7 3coldfusion/tagext/validation/CFTypeValidatorFactory ; STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; = >	 < ? _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; A B
  C get (I)Ljava/lang/Object; E F
 9 G ISHASHED I false K put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; M N
 9 O boolean Q BOOL_VALIDATOR S >	 < T _validateArgWithValidator V B
  W _setCurrentLineNo (I)V Y Z
 " [ 	component ] CFIDE.adminapi.accessmanager _ CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; a b coldfusion/runtime/CFPage d
 e c set (Ljava/lang/Object;)V g h coldfusion/runtime/Variable j
 k i java m  coldfusion.server.ServiceFactory o getSecurityService q java/lang/Object s _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; u v
 " w _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; y z
 " { checkRootAdminUser } checkAdminPassword  java/lang/String � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 " � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � access � public � output � hint � Checks admin password. � 
Parameters � REQUIRED � Yes � TYPE � HINT � Administrator password. � NAME � password � ([Ljava/lang/Object;)V  �
 � � ;Set it to true if the password sent is already hashed once. � no � DEFAULT � isHashed � getMetadata ()Ljava/lang/Object; this 2Lcfsecurity2ecfc1927877911$funcCHECKADMINPASSWORD; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       � �     � �  �   "     � ��    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   -     � �Y2SYJS�    �        � �    � �  �  U     �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:*24� :� @� D:� H� JL� PW*JR� :� U� X:
- �� \-^`� f� l- �� \-- �� \-np� fr� t� x� l- �� \--
� |~� t� xW- �� \--� |�� tY-� �Y2S� �SY-� �YJS� �S� x��    �   �    � � �     � � �    � � �    � � �    � � �    � � �    � � �    � - .    �  �    �  � 	   �  � 
   �  �    � 1 �    � I �  �   � ,   � U � U � n � x � x � z � z � w � w � w � w � n � n � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �     �   #     *� 
�    �        � �    �   �   �     ƻ �Y
� tY�SY�SY�SY�SY�SYLSY�SY�SY�SY	� tY� �Y� tY�SY�SY�SY4SY�SY�SY�SY�S� �SY� �Y
� tY�SY�SY�SY�SY�SYRSY�SYLSY�SY	�S� �SS� �� ��    �       � � �    � �  �   !     L�    �        � �        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc 0cfsecurity2ecfc1927877911$funcGETWEBINFDIRECTORY  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;  	   getOut ()Ljavax/servlet/jsp/JspWriter;   ! javax/servlet/jsp/JspContext #
 $ " parent Ljavax/servlet/jsp/tagext/Tag; & '	  ( %class$coldfusion$tagext$lang$ParamTag Ljava/lang/Class; coldfusion.tagext.lang.ParamTag , forName %(Ljava/lang/String;)Ljava/lang/Class; . / java/lang/Class 1
 2 0 * +	  4 _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; 6 7
  8 coldfusion/tagext/lang/ParamTag : _setCurrentLineNo (I)V < =
  > sep @ setName (Ljava/lang/String;)V B C
 ; D cfparam F default H java J java.lang.System L CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; N O coldfusion/runtime/CFPage Q
 R P getProperty T java/lang/Object V file.separator X _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; Z [
  \ _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object; ^ _
  ` 
setDefault (Ljava/lang/Object;)V b c
 ; d 	hasEndTag (Z)V f g coldfusion/tagext/GenericTag i
 j h _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z l m
  n DIR p GetPageContext %()Lcoldfusion/runtime/NeoPageContext; r s
 R t getServletContext v getRealPath x 	/WEB-INF/ z _set '(Ljava/lang/String;Ljava/lang/Object;)V | }
  ~ _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � Trim &(Ljava/lang/String;)Ljava/lang/String; � �
 R � Right '(Ljava/lang/String;I)Ljava/lang/String; � �
 R � SEP � _compare '(Ljava/lang/Object;Ljava/lang/Object;)D � �
  � concat � � java/lang/String �
 � � getWebInfDirectory � metaData Ljava/lang/Object; � �	  � false � &coldfusion/runtime/AttributeCollection � name � access � private � output � hint � Returns full path for WEB-INF � 
Parameters � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this 2Lcfsecurity2ecfc1927877911$funcGETWEBINFDIRECTORY; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; param30 !Lcoldfusion/tagext/lang/ParamTag; LineNumberTable <clinit> 	getOutput 1       * +    � �     � �  �   "     � ��    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   #     � ��    �        � �    � �  �  � 
   +� � :+� ,� :	-� � %:-� ):-� 5� 9� ;:
-�� ?
A� E
GI-�� ?--�� ?-KM� SU� WYYS� ]� a� e
� k
� o� �-q-�� ?--�� ?--�� ?-� uw� W� ]y� WY{S� ]� -�� ?-�� ?-q� �� �� �� �-�� �� ��~� -q-q� �� �-�� �� �� �� -q� ���    �   p    � �     � �    � �    � �    � �    � �    � �    & '     �     � 	   � � 
 �   � ?  � =� =� X� X� Z� Z� W� W� g� g� O� O� O� O� $� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ������� ��     �   #     *� 
�    �        � �    �   �   n     P-� 3� 5� �Y
� WY�SY�SY�SY�SY�SY�SY�SY�SY�SY	� WS� �� ��    �       P � �    � �  �   !     ��    �        � �        ����  - 
SourceFile /CFIDE/adminapi/security.cfc 5cfsecurity2ecfc1927877911$funcGETSECURABLECFFUNCTIONS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
AFUNCTIONS  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   ACCESSMANAGER  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / _setCurrentLineNo (I)V 1 2
 " 3 ArrayNew (I)Ljava/util/List; 5 6 coldfusion/runtime/CFPage 8
 9 7 set (Ljava/lang/Object;)V ; < coldfusion/runtime/Variable >
 ? = 	component A CFIDE.adminapi.accessmanager C CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; E F
 9 G _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; I J
 " K checkAdminRoles M java/lang/Object O coldfusion.sandboxsecurity Q _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; S T
 " U _autoscalarize W J
 " X _List $(Ljava/lang/Object;)Ljava/util/List; Z [ coldfusion/runtime/Cast ]
 ^ \ E ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z a b
 9 c CreateObject(COM) e CreateObject(CORBA) g CreateObject(Java) i CreateObject(.NET) k CreateObject(WebService) m DirectoryExists o 
ExpandPath q FileOpen s 
FileExists u FileCopy w FileMove y 
FileDelete { FileRead } 
FileUpload  FileUploadAll � 	FileWrite � FileSetAttribute � FileSetAccessmode � FileSetLastModified � GetFileInfo � DirectoryCreate � DirectoryCopy � DirectoryList � DirectoryDelete � DirectoryRename � GetDirectoryFromPath � GetFileFromPath � GetGatewayHelper � GetPrinterInfo � GetProfileString � GetTempDirectory � GetTempFile � GetTemplatePath � GetBaseTemplatePath � LoadCFObject � SaveCFObject � SendGatewayMessage � SetProfileString � CreateDynamicProxy � CacheGetAllIds � CacheGetSession � CacheRemoveAll � CacheRegionNew � CacheRegionRemove � CacheSetProperties � RemoveCachedQuery � GetCpuUsage � GetSystemFreeMemory � GetSystemTotalMemory � GetTotalSpace � GetFreeSpace � GetPageContext � 
textnocase � asc � 	ArraySort 7(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z � �
 9 � java/lang/String � getSecurableCFFunctions � metaData Ljava/lang/Object; � �	  � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � hint � (Returns an array of securable functions. � 
Parameters � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this 7Lcfsecurity2ecfc1927877911$funcGETSECURABLECFFUNCTIONS; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       � �     � �  �   "     � ܰ    �        � �    � �  �   !     ذ    �        � �    � �  �         �    �        � �    � �  �   #     � ְ    �        � �    � �  �  �    %+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:
-�� 4-� :� @-�� 4-BD� H� @-�� 4--� LN� PYRS� VW-�� 4-
� Y� _`� dW-�� 4-
� Y� _f� dW-�� 4-
� Y� _h� dW- � 4-
� Y� _j� dW-� 4-
� Y� _l� dW-� 4-
� Y� _n� dW-� 4-
� Y� _p� dW-� 4-
� Y� _r� dW-� 4-
� Y� _t� dW-� 4-
� Y� _v� dW-� 4-
� Y� _x� dW-� 4-
� Y� _z� dW-	� 4-
� Y� _|� dW-
� 4-
� Y� _~� dW-� 4-
� Y� _�� dW-� 4-
� Y� _�� dW-� 4-
� Y� _�� dW-� 4-
� Y� _�� dW-� 4-
� Y� _�� dW-� 4-
� Y� _�� dW-� 4-
� Y� _�� dW-� 4-
� Y� _�� dW-� 4-
� Y� _�� dW-� 4-
� Y� _�� dW-� 4-
� Y� _�� dW-� 4-
� Y� _�� dW-� 4-
� Y� _�� dW-� 4-
� Y� _�� dW-� 4-
� Y� _�� dW-� 4-
� Y� _�� dW-� 4-
� Y� _�� dW-� 4-
� Y� _�� dW-� 4-
� Y� _�� dW-� 4-
� Y� _�� dW-� 4-
� Y� _�� dW- � 4-
� Y� _�� dW-!� 4-
� Y� _�� dW-"� 4-
� Y� _�� dW-#� 4-
� Y� _�� dW-%� 4-
� Y� _�� dW-(� 4-
� Y� _�� dW-)� 4-
� Y� _�� dW-*� 4-
� Y� _�� dW-+� 4-
� Y� _�� dW-,� 4-
� Y� _�� dW--� 4-
� Y� _�� dW-.� 4-
� Y� _�� dW-7� 4-
� Y� _¸ dW-8� 4-
� Y� _ĸ dW-9� 4-
� Y� _Ƹ dW-:� 4-
� Y� _ȸ dW-;� 4-
� Y� _ʸ dW-<� 4-
� Y� _̸ dW->� 4-
� Y� _�и �W-
� Y��    �   z   % � �    %    % �   %   %   %   %	 �   % - .   % 
   % 
 	  % 
 
  % 
   .  � 4� >� >� =� =� =� =� 4� 4� E� O� O� Q� Q� N� N� N� N� E� E� a� a� o� o� `� `� `� `� }� }� }� }� �� �� }� }� }� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �  �  �  �  �  �  �  �  �  � � � � � � � � � � � � � � � � � �

  ----66---CCCCLLCCCYYYYbbYYYooooxxooo�	�	�	�	�	�	�	�	�	�
�
�
�
�
�
�
�
�
������������������������������������							((5555>>555KKKKTTKKKaaaajjaaawwww��www����������������������������������������������������''''00'''====FF===SSSS\\SSSiiiirriii    � �    �!�!�!�!�!�!�!�!�!�"�"�"�"�"�"�"�"�"�#�#�#�#�#�#�#�#�#�%�%�%�%�%�%�%�%�%�(�(�(�(�(�(�(�(�()))))))))****"*"****/+/+/+/+8+8+/+/+/+E,E,E,E,N,N,E,E,E,[-[-[-[-d-d-[-[-[-q.q.q.q.z.z.q.q.q.�7�7�7�7�7�7�7�7�7�8�8�8�8�8�8�8�8�8�9�9�9�9�9�9�9�9�9�:�:�:�:�:�:�:�:�:�;�;�;�;�;�;�;�;�;�<�<�<�<�<�<�<�<�<>>>>>>>>>>>????? }�     �   #     *� 
�    �        � �      �   f     H� �Y
� PY�SY�SY�SY�SY�SY�SY�SY�SY�SY	� PS� � ܱ    �       H � �    �  �   !     ް    �        � �        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc (cfsecurity2ecfc1927877911$funcDELETEUSER  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / USERNAME 1 getVariable  (I)Lcoldfusion/runtime/Variable; 3 4 %coldfusion/runtime/ArgumentCollection 6
 7 5 _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; 9 :
  ; _setCurrentLineNo (I)V = >
 " ? 	component A CFIDE.adminapi.accessmanager C CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; E F coldfusion/runtime/CFPage H
 I G set (Ljava/lang/Object;)V K L coldfusion/runtime/Variable N
 O M java Q  coldfusion.server.ServiceFactory S getSecurityService U java/lang/Object W _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; Y Z
 " [ _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; ] ^
 " _ checkRootAdminUser a deleteAuthorizedUser c java/lang/String e _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; g h
 " i LOGAUDIT k &(Ljava/lang/String;)Ljava/lang/Object; ] m
 " n logaudit p msg r java/lang/StringBuffer t  removed the user  v (Ljava/lang/String;)V  x
 u y _String &(Ljava/lang/Object;)Ljava/lang/String; { | coldfusion/runtime/Cast ~
  } append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 u � . � toString ()Ljava/lang/String; � �
 X � )([Ljava/lang/Object;[Ljava/lang/Object;)V  �
 7 � 
_invokeUDF b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object; � �
 " � 
deleteUser � metaData Ljava/lang/Object; � �	  � void � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � Removes the user. � 
Parameters � REQUIRED � true � HINT � -Specifies the username of the user to delete. � NAME � username � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this *Lcfsecurity2ecfc1927877911$funcDELETEUSER; LocalVariableTable Code getName 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       � �   	  � �  �   "     � ��    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   !     ��    �        � �    � �  �   (     
� fY2S�    �       
 � �    � �  �  �    +� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:*2� 8� <:
-	�� @-BD� J� P-	�� @--	�� @-RT� JV� X� \� P-	�� @--
� `b� X� \W-	�� @--� `d� XY-� fY2S� jS� \W-	�� @-l� oq-� 7Y� fYsS� XY� uYw� z-� fY2S� j� �� ��� �� �S� �� �W�    �   �    � �     � �    � �    � �    � �    � �    � �    - .     �     � 	    � 
    �    1 �  �   � 9  	� D	� N	� N	� P	� P	� M	� M	� M	� M	� D	� D	� X	� j	� j	� l	� l	� i	� i	� a	� a	� a	� a	� X	� X	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� 	� 	� �	� �	� �	� �	� �	� �	�     �   #     *� 
�    �        � �    �   �   �     �� �Y� XY�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� XY� �Y� XY�SY�SY�SY�SY�SY�S� �SS� �� ��    �       � � �    � �  �   !     ��    �        � �        ����  - 
SourceFile /CFIDE/adminapi/security.cfc 0cfsecurity2ecfc1927877911$funcGETSECURABLECFTAGS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ATAGS  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   ACCESSMANAGER  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / _setCurrentLineNo (I)V 1 2
 " 3 ArrayNew (I)Ljava/util/List; 5 6 coldfusion/runtime/CFPage 8
 9 7 set (Ljava/lang/Object;)V ; < coldfusion/runtime/Variable >
 ? = 	component A CFIDE.adminapi.accessmanager C CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; E F
 9 G _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; I J
 " K checkAdminRoles M java/lang/Object O coldfusion.sandboxsecurity Q _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; S T
 " U _autoscalarize W J
 " X _List $(Ljava/lang/Object;)Ljava/util/List; Z [ coldfusion/runtime/Cast ]
 ^ \ 	CFContent ` ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z b c
 9 d CFDirectory f CFFile h CFObject j 
CFRegistry l 	CFExecute n CFFtp p CFMail r CFLog t CFCollection v CFCookie x CFHTTP z CFHTTPParam | CFIndex ~ CFLDAP � CFInvoke � 
CFSchedule � CFSearch � CFTransaction � CFPOP � CFQuery � CFInsert � CFUpdate � CFStoredProc � CFGridUpdate � 
CFDocument � CFReport � CFThread � CFImage � CFFeed � CFExchangeConnection � CFExchangeCalendar � CFExchangeMail � CFExchangeContact � CFExchangeTask � CFPdf � CFPrint � CFDBInfo � CFObjectCache � CFSharepoint � CFSpreadSheet � CFCache � CFIMAP � CFFileUpload � CFExchangeConversation � CFExchangeFolder � CFWebSocket � CFHtmlToPdf � 
textnocase � asc � 	ArraySort 7(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z � �
 9 � java/lang/String � getSecurableCFTags � metaData Ljava/lang/Object; � �	  � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � hint � #Returns an array of securable tags. � 
Parameters � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this 2Lcfsecurity2ecfc1927877911$funcGETSECURABLECFTAGS; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       � �     � �  �   "     � Ӱ    �        � �    � �  �   !     ϰ    �        � �    � �  �         �    �        � �    � �  �   #     � Ͱ    �        � �    � �  �  �    �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:
-ʶ 4-� :� @-˶ 4-BD� H� @-̶ 4--� LN� PYRS� VW-϶ 4-
� Y� _a� eW-ж 4-
� Y� _g� eW-Ѷ 4-
� Y� _i� eW-Ҷ 4-
� Y� _k� eW-Ӷ 4-
� Y� _m� eW-Զ 4-
� Y� _o� eW-ն 4-
� Y� _q� eW-ֶ 4-
� Y� _s� eW-׶ 4-
� Y� _u� eW-ڶ 4-
� Y� _w� eW-۶ 4-
� Y� _y� eW-ܶ 4-
� Y� _{� eW-ݶ 4-
� Y� _}� eW-޶ 4-
� Y� _� eW-߶ 4-
� Y� _�� eW-� 4-
� Y� _�� eW-� 4-
� Y� _�� eW-� 4-
� Y� _�� eW-� 4-
� Y� _�� eW-� 4-
� Y� _�� eW-� 4-
� Y� _�� eW-� 4-
� Y� _�� eW-� 4-
� Y� _�� eW-� 4-
� Y� _�� eW-� 4-
� Y� _�� eW-� 4-
� Y� _�� eW-� 4-
� Y� _�� eW-� 4-
� Y� _�� eW-� 4-
� Y� _�� eW-� 4-
� Y� _�� eW-� 4-
� Y� _�� eW-� 4-
� Y� _�� eW-�� 4-
� Y� _�� eW-�� 4-
� Y� _�� eW-�� 4-
� Y� _�� eW-�� 4-
� Y� _�� eW-�� 4-
� Y� _�� eW-�� 4-
� Y� _�� eW-�� 4-
� Y� _�� eW-�� 4-
� Y� _�� eW-�� 4-
� Y� _�� eW- � 4-
� Y� _�� eW-� 4-
� Y� _�� eW-� 4-
� Y� _�� eW-� 4-
� Y� _�� eW-� 4-
� Y� _�� eW-� 4-
� Y� _�� eW-
� 4-
� Y� _ø eW-� 4-
� Y� _�Ǹ �W-
� Y��    �   z   � � �    � � �   � � �   � � �   � � �   � � �   �  �   � - .   �    �  	  �  
  �    z�  � 4� >� >� =� =� =� =� 4� 4� E� O� O� Q� Q� N� N� N� N� E� E� a� a� o� o� `� `� `� `� }� }� }� }� �� �� }� }� }� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ������
�
�������� � ����-�-�-�-�6�6�-�-�-�C�C�C�C�L�L�C�C�C�Y�Y�Y�Y�b�b�Y�Y�Y�o�o�o�o�x�x�o�o�o�������������������������������������������������������������������������������������������������������������	�	�	�	���	�	�	�����(�(����5�5�5�5�>�>�5�5�5�K�K�K�K�T�T�K�K�K�a�a�a�a�j�j�a�a�a�w�w�w�w�����w�w�w��������������������������������������������������������������������������������������������������������������������'�'�'�'�0�0�'�'�'�=�=�=�=�F�F�=�=�=�S�S�S�S�\�\�S�S�S�i�i�i�i�r�r�i�i�i������������������������������������������������������������������������������������������������������         ""////88///EEEENNEEE[[[[dd[[[qqqqzzqqq�
�
�
�
�
�
�
�
�
���������������� }�     �   #     *� 
�    �        � �      �   f     H� �Y
� PY�SY�SY�SY�SY�SY�SY�SY�SY�SY	� PS� � ӱ    �       H � �    �  �   !     հ    �        � �        ����  -z 
SourceFile /CFIDE/adminapi/security.cfc 0cfsecurity2ecfc1927877911$funcSETSECURITYSANDBOX  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  DIR ! WEBAPP # coldfusion/runtime/CfJspPage % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	 & ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/JspContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	 & 3 	DIRECTORY 5 string 7 getVariable  (I)Lcoldfusion/runtime/Variable; 9 : %coldfusion/runtime/ArgumentCollection <
 = ; 3coldfusion/tagext/validation/CFTypeValidatorFactory ? STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; A B	 @ C _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; E F
  G SANDBOX I array K ARRAY_VALIDATOR M B	 @ N _validateArgWithValidator P F
  Q / S set (Ljava/lang/Object;)V U V coldfusion/runtime/Variable X
 Y W java/lang/String [ _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; ] ^
 & _ _setCurrentLineNo (I)V a b
 & c 	component e CFIDE.adminapi.accessmanager g CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; i j coldfusion/runtime/CFPage l
 m k java o  coldfusion.server.ServiceFactory q getSecurityService s java/lang/Object u _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; w x
 & y _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; { |
 & } checkAdminRoles  coldfusion.sandboxsecurity � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � DirectoryExists (Ljava/lang/String;)Z � �
 m � CONTEXTS � _resolve � ^
 & � _autoscalarize � |
 & � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
 & � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 m � _Object (Z)Ljava/lang/Object; � �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � arguments.sandbox � 	IsDefined � �
 m � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 & � coldfusion/tagext/lang/ThrowTag � throw � setCalledName (Ljava/lang/String;)V � � coldfusion/tagext/GenericTag �
 � � cfthrow � message � SANDBOX_ALREADY_EXISTS � &(Ljava/lang/String;)Ljava/lang/Object; � �
 & � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 & � 
setMessage � �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 & � _set '(Ljava/lang/String;Ljava/lang/Object;)V � �
 & � GETDEFAULTSECURITYSANDBOX � { �
 & � getDefaultSecuritySandbox � 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; � �
 & � _LhsResolve � ^
 & � _arraySetAt :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 & � /* � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 & � GETCFIDEDIRECTORY � getCFIDEDirectory � '(Ljava/lang/Object;Ljava/lang/Object;)D � �
 &  GETWEBINFDIRECTORY getWebInfDirectory SETDEFAULTFILEPERMISSION setDefaultFilePermission ERROR_INVALIDDIRECTORY
 LOGAUDIT logaudit msg java/lang/StringBuffer . created a security sandbox for the directory   �
 append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;
 . toString ()Ljava/lang/String;
 v  )([Ljava/lang/Object;[Ljava/lang/Object;)V "
 =# b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object; �%
 && setSecuritySandbox( metaData Ljava/lang/Object;*+	 , void. false0 &coldfusion/runtime/AttributeCollection2 name4 access6 public8 output: 
returntype< hint> 5Creates a security sandbox for a specified directory.@ 
ParametersB REQUIREDD trueF TYPEH HINTJ Specifies a sandbox directory.L NAMEN 	directoryP ([Ljava/lang/Object;)V R
3S NoU aThe sandbox array object, which is an array of structures with each structure being a permission.W sandboxY getMetadata ()Ljava/lang/Object; this 2Lcfsecurity2ecfc1927877911$funcSETSECURITYSANDBOX; LocalVariableTable Code getName 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw26 !Lcoldfusion/tagext/lang/ThrowTag; throw27 LineNumberTable <clinit> 	getOutput 1       � �   *+   	 [\ `   "     �-�   _       ]^   a `   "     )�   _       ]^   bc `         �   _       ]^   d `   "     /�   _       ]^   ef `   -     � \Y6SYJS�   _       ]^   gh `  �    h+� � :+� ,� :	+� :
+ � :+"� :+$� :-� *� 0:-� 4:*68� >� D� H:*JL� >� O� R:T� Z-� \Y6S� `� Z
-�� d-fh� n� Z-�� d--�� d-pr� nt� v� z� Z-� d--
� ~�� vY�S� zW-� d--� \Y6S� `� �� ���-� d--� \Y�S� �-� �� �� �-� �� �� �� �Y� �� W-� d-�� ��� �� �� R-� �� �� �:-� d�� ���-Ͷ и ��� Զ �� �� ߙ ��5-� d-�� �� -J-� \YJS� `� � )-J-� d-� ��-� vY-� �S� �� �-� \Y�S� �� vY-� �SY-� �S-J� и �-� \Y6S� `�� ��~� �Y� �� 4W-� \Y6S� `-� d-�� ��-� v� ���~� �Y� �� 6W-� \Y6S� `-� d-� �-� v� ���~� �� �� &-� d-� �	-� vY-� �S� �W� I-� �� �� �:-� d�� ���-� и ��� Զ �� �� ߙ �-� d-� �-� =Y� \YS� vY�Y�-� \Y6S� `� ����!S�$�'W�   _   �   h]^    hij   hk+   hlm   hno   hpq   hr+   h 1 2   h s   h s 	  h s 
  h s   h !s   h #s   h 5s   h Is   htu   hvu w  � �  � j� l� l� l� l� j� q� s� s� s� s� q� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � � � � � � � � � � � �==<<<<<<<<qqM�����
�
�
�
�
���������������  44JJJJ4444ll����llll���������� � j�::@@@@@@UU66    `   #     *� 
�   _       ]^   x  `       ��� �� ��3Y� vY5SY)SY7SY9SY;SY1SY=SY/SY?SY	ASY
CSY� vY�3Y� vYESYGSYISY8SYKSYMSYOSYQS�TSY�3Y� vYESYVSYISYLSYKSYXSYOSYZS�TSS�T�-�   _       �]^   y `   "     1�   _       ]^        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc 5cfsecurity2ecfc1927877911$funcSETUSESINGLERDSPASSWORD  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / USESINGLERDSPASSWORD 1 boolean 3 getVariable  (I)Lcoldfusion/runtime/Variable; 5 6 %coldfusion/runtime/ArgumentCollection 8
 9 7 3coldfusion/tagext/validation/CFTypeValidatorFactory ; BOOL_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; = >	 < ? _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; A B
  C _setCurrentLineNo (I)V E F
 " G 	component I CFIDE.adminapi.accessmanager K CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; M N coldfusion/runtime/CFPage P
 Q O set (Ljava/lang/Object;)V S T coldfusion/runtime/Variable V
 W U java Y  coldfusion.server.ServiceFactory [ getSecurityService ] java/lang/Object _ _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; a b
 " c _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; e f
 " g checkRootAdminUser i setUseSingleRdsPassword k java/lang/String m _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; o p
 " q LOGAUDIT s &(Ljava/lang/String;)Ljava/lang/Object; e u
 " v logaudit x msg z java/lang/StringBuffer | & changed using single RDS password to  ~ (Ljava/lang/String;)V  �
 } � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 } � . � toString ()Ljava/lang/String; � �
 ` � )([Ljava/lang/Object;[Ljava/lang/Object;)V  �
 9 � 
_invokeUDF b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object; � �
 " � setUseSingleRDSPassword � metaData Ljava/lang/Object; � �	  � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � hint � VSets whether or not to allow a user id in addition to a password for logging in to RDS � 
Parameters � REQUIRED � true � TYPE � NAME � useSingleRDSPassword � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this 7Lcfsecurity2ecfc1927877911$funcSETUSESINGLERDSPASSWORD; LocalVariableTable Code getName 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       � �     � �  �   "     � ��    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   (     
� nY2S�    �       
 � �    � �  �  �    +� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:*24� :� @� D:
- � H-JL� R� X- � H-- � H-Z\� R^� `� d� X- � H--
� hj� `� dW- �� H--� hl� `Y-� nY2S� rS� dW- � H-t� wy-� 9Y� nY{S� `Y� }Y� �-� nY2S� r� �� ��� �� �S� �� �W�    �   �    � �     � �    � �    � �    � �    � �    � �    - .     �     � 	    � 
    �    1 �  �   � 8   � G � Q � Q � S � S � P � P � P � P � G � G � [ � m � m � o � o � l � l � d � d � d � d � [ � [ � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �     �   #     *� 
�    �        � �    �   �   �     u� �Y
� `Y�SY�SY�SY�SY�SY�SY�SY�SY�SY	� `Y� �Y� `Y�SY�SY�SY4SY�SY�S� �SS� �� ��    �       u � �    � �  �   !     ��    �        � �        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc 2cfsecurity2ecfc1927877911$funcDISABLESECUREPROFILE  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / _setCurrentLineNo (I)V 1 2
 " 3 	component 5 CFIDE.adminapi.accessmanager 7 CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; 9 : coldfusion/runtime/CFPage <
 = ; set (Ljava/lang/Object;)V ? @ coldfusion/runtime/Variable B
 C A _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; E F
 " G checkRootAdminUser I java/lang/Object K _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; M N
 " O java Q  coldfusion.server.ServiceFactory S getSecurityService U disableSecureProfile W java/lang/String Y metaData Ljava/lang/Object; [ \	  ] false _ &coldfusion/runtime/AttributeCollection a name c access e public g output i hint k ]Disables secure profile and reverts all required settings from secure value to default value. m 
Parameters o ([Ljava/lang/Object;)V  q
 b r getMetadata ()Ljava/lang/Object; this 4Lcfsecurity2ecfc1927877911$funcDISABLESECUREPROFILE; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       [ \     t u  y   "     � ^�    x        v w    z {  y   !     X�    x        v w    | }  y         �    x        v w    ~   y   #     � Z�    x        v w    � �  y  �     �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:
-K� 4-68� >� D-M� 4--
� HJ� L� PW-N� 4--N� 4-RT� >V� L� P� D-O� 4--� HX� L� P��    x   z    � v w     � � �    � � \    � � �    � � �    � � �    � � \    � - .    �  �    �  � 	   �  � 
   �  �  �   � %   J 4 K = K = K ? K ? K < K < K < K < K 4 K 4 K N M N M M M M M M M ^ N n N n N p N p N m N m N f N f N f N f N ^ N � O � O � O � O � O � O � O M L     y   #     *� 
�    x        v w    �   y   f     H� bY
� LYdSYXSYfSYhSYjSY`SYlSYnSYpSY	� LS� s� ^�    x       H v w    � {  y   !     `�    x        v w        ����  -O 
SourceFile /CFIDE/adminapi/security.cfc 4cfsecurity2ecfc1927877911$funcGETDISABLEDCFFUNCTIONS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   TARGET  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   	ADISABLED  PERMISSIONS ! AENABLEDFUNCTIONS # ACCESSMANAGER % SECURITY ' I ) WEBAPP + ARRAYPOS - coldfusion/runtime/CfJspPage / pageContext #Lcoldfusion/runtime/NeoPageContext; 1 2	 0 3 getOut ()Ljavax/servlet/jsp/JspWriter; 5 6 javax/servlet/jsp/JspContext 8
 9 7 parent Ljavax/servlet/jsp/tagext/Tag; ; <	 0 = 	DIRECTORY ? getVariable  (I)Lcoldfusion/runtime/Variable; A B %coldfusion/runtime/ArgumentCollection D
 E C _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; G H
  I / K set (Ljava/lang/Object;)V M N coldfusion/runtime/Variable P
 Q O _setCurrentLineNo (I)V S T
 0 U ArrayNew (I)Ljava/util/List; W X coldfusion/runtime/CFPage Z
 [ Y 1 ]   _ 	component a CFIDE.adminapi.accessmanager c CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; e f
 [ g java i  coldfusion.server.ServiceFactory k getSecurityService m java/lang/Object o _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; q r
 0 s _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; u v
 0 w checkAdminRoles y Ucoldfusion.sandboxsecurity,coldfusion.serversettings,coldfusion.serversettingssummary { false } java/lang/String  CONTEXTS � _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 0 � _autoscalarize � v
 0 � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
 0 � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � _resolveAndAutoscalarize � �
 0 � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 [ � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 0 � coldfusion/tagext/lang/ThrowTag � throw � setCalledName (Ljava/lang/String;)V � � coldfusion/tagext/GenericTag �
 � � cfthrow � message � SANDBOX_NOT_FOUND � &(Ljava/lang/String;)Ljava/lang/Object; � �
 0 � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 0 � 
setMessage � �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 0 � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
 0 � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 [ � GETFUNCTIONPERMISSIONPOSITION � u �
 0 � getFunctionPermissionPosition � 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; � �
 0 � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
 0 � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
 0 � * � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 0 � Left '(Ljava/lang/String;I)Ljava/lang/String; � �
 [ � *- � 	_contains '(Ljava/lang/String;Ljava/lang/String;)Z � �
 0 � RemoveChars ((Ljava/lang/String;II)Ljava/lang/String; � �
 [ � ListToArray $(Ljava/lang/String;)Ljava/util/List; � �
 [ � _List $(Ljava/lang/Object;)Ljava/util/List; 
 � 
textnocase asc 	ArraySort 7(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z	
 [
 getDisabledCFFunctions metaData Ljava/lang/Object;	  &coldfusion/runtime/AttributeCollection name access public output hint FReturns an array of functions that have been disabled for the sandbox. 
Parameters  REQUIRED" true$ HINT& JSpecifies the sandbox directory for which disabled functions are returned.( NAME* 	directory, ([Ljava/lang/Object;)V .
/ getMetadata ()Ljava/lang/Object; this 6Lcfsecurity2ecfc1927877911$funcGETDISABLEDCFFUNCTIONS; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw36 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getOutput 1       � �       12 6   "     ��   5       34   78 6   "     �   5       34   9: 6         �   5       34   ;< 6   (     
� �Y@S�   5       
34   => 6  � 	   �+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :+(� :+*� :+,� :+.� :-� 4� ::-� >:*@� F� J:L� R-%� V-� \� R-&� V-� \� R^� R^� R-)� V-� \� R
`� R-+� V-bd� h� R-,� V--,� V-jl� hn� p� t� R--� V--� xz� pY|SY~S� tW-0� V--� �Y�S� �-� �� �� �-� �Y@S� �� �� ��� H-� �$� �� �:-2� V�� ���-�� �� ��� Ŷ �� �� Й �-6� V--� �Y�S� �� pY-� �SY-@� �S� Ӹ ׶ R-9� V-ٶ ��-� pY-� �SY-@� �S� � R
---� �� � �� �YS� � R-
� �� ��� � C-?� V-
� �� �� �� �� '-C� V-C� V-
� �� �� �� �� R-E� V-� ���W-� ���   5   �   �34    �?@   �A   �BC   �DE   �FG   �H   � ; <   � I   � I 	  � I 
  � I   � !I   � #I   � %I   � 'I   � )I   � +I   � -I   � ?I   �JK L  " �  " |$ ~$ ~$ ~$ ~$ |$ |$ �% �% �% �% �% �% �% �% �% �& �& �& �& �& �& �& �& �& �' �' �' �' �' �' �' �( �( �( �( �( �( �( �) �) �) �) �) �) �) �) �) �* �* �* �* �* �* �* �+ �+ �+ �+ �+ �+ �+ �+ �+ �+ �+ �, �, �, �, �, �, �, �, �, �, �, �, �,----------.0.0=0=0.0.0.0.0I0I0I0I0-0-0-0-0-0-0�2�2�2�2c2-0�6�6�6�6�6�6�6�6�6�6�6�6�6�9�9�9�999�9�9�9�9�9;;;;;;;/</<5<5<I?I?I?I?R?R?I?I?I?I?V?V?I?I?nCnCnCnCwCwCxCxCnCnCnCnCnCnCnCnC^CI?I?/<�E�E�E�E�E�E�E�E�E�E�E�F�F�F�F�F-/    6   #     *� 
�   5       34   M  6   �     ��� �� ��Y
� pYSYSYSYSYSY~SYSYSY!SY	� pY�Y� pY#SY%SY'SY)SY+SY-S�0SS�0��   5       �34   N8 6   !     ~�   5       34        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc 9cfsecurity2ecfc1927877911$funcISALLOWCONCURRENTADMINLOGIN  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / _setCurrentLineNo (I)V 1 2
 " 3 	component 5 CFIDE.adminapi.accessmanager 7 CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; 9 : coldfusion/runtime/CFPage <
 = ; set (Ljava/lang/Object;)V ? @ coldfusion/runtime/Variable B
 C A _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; E F
 " G checkRootAdminUser I java/lang/Object K _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; M N
 " O java Q  coldfusion.server.ServiceFactory S getSecurityService U isAllowConcurrentAdminLogin W java/lang/String Y metaData Ljava/lang/Object; [ \	  ] false _ &coldfusion/runtime/AttributeCollection a name c access e public g output i hint k 4Checks whether concurrent login sessions are allowed m 
Parameters o ([Ljava/lang/Object;)V  q
 b r getMetadata ()Ljava/lang/Object; this ;Lcfsecurity2ecfc1927877911$funcISALLOWCONCURRENTADMINLOGIN; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       [ \     t u  y   "     � ^�    x        v w    z {  y   !     X�    x        v w    | }  y         �    x        v w    ~   y   #     � Z�    x        v w    � �  y  �     �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:
-$� 4-68� >� D-&� 4--
� HJ� L� PW-'� 4--'� 4-RT� >V� L� P� D-(� 4--� HX� L� P��    x   z    � v w     � � �    � � \    � � �    � � �    � � �    � � \    � - .    �  �    �  � 	   �  � 
   �  �  �   � %   # 4 $ = $ = $ ? $ ? $ < $ < $ < $ < $ 4 $ 4 $ N & N & M & M & M & ^ ' n ' n ' p ' p ' m ' m ' f ' f ' f ' f ' ^ ' � ( � ( � ( � ( � ( � ( � ( M %     y   #     *� 
�    x        v w    �   y   f     H� bY
� LYdSYXSYfSYhSYjSY`SYlSYnSYpSY	� LS� s� ^�    x       H v w    � {  y   !     `�    x        v w        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc .cfsecurity2ecfc1927877911$funcSETADMINPASSWORD  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / PASSWORD 1 string 3 getVariable  (I)Lcoldfusion/runtime/Variable; 5 6 %coldfusion/runtime/ArgumentCollection 8
 9 7 3coldfusion/tagext/validation/CFTypeValidatorFactory ; STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; = >	 < ? _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; A B
  C get (I)Ljava/lang/Object; E F
 9 G ISHASHED I false K put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; M N
 9 O boolean Q BOOL_VALIDATOR S >	 < T _validateArgWithValidator V B
  W _setCurrentLineNo (I)V Y Z
 " [ 	component ] CFIDE.adminapi.accessmanager _ CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; a b coldfusion/runtime/CFPage d
 e c set (Ljava/lang/Object;)V g h coldfusion/runtime/Variable j
 k i java m  coldfusion.server.ServiceFactory o getSecurityService q java/lang/Object s _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; u v
 " w _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; y z
 " { checkRootAdminUser } setAdminPassword  java/lang/String � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 " � _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; � �
 " � LOGAUDIT � y �
 " � logaudit � msg �  changed admin password. � )([Ljava/lang/Object;[Ljava/lang/Object;)V  �
 9 � 
_invokeUDF b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object; � �
 " � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � access � public � output � hint � +Sets the ColdFusion Administrator password. � 
Parameters � REQUIRED � Yes � TYPE � HINT � Administrator password. � NAME � password � ([Ljava/lang/Object;)V  �
 � � ;Set it to true if the password sent is already hashed once. � no � DEFAULT � isHashed � getMetadata ()Ljava/lang/Object; this 0Lcfsecurity2ecfc1927877911$funcSETADMINPASSWORD; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       � �     � �  �   "     � ��    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   -     � �Y2SYJS�    �        � �    � �  �  �    !+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:*24� :� @� D:� H� JL� PW*JR� :� U� X:
- �� \-^`� f� l- �� \-- �� \-np� fr� t� x� l- �� \--
� |~� t� xW- �� \--� |�� tY-� �Y2S� �SY-J� �S� xW- �� \-�� ��-� 9Y� �Y�S� tY�S� �� �W�    �   �   ! � �    ! � �   ! � �   ! � �   ! � �   ! � �   ! � �   ! - .   !  �   !  � 	  !  � 
  !  �   ! 1 �   ! I �  �   � 2   � U � U � n � x � x � z � z � w � w � w � w � n � n � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �     �   #     *� 
�    �        � �    �   �   �     ƻ �Y
� tY�SY�SY�SY�SY�SYLSY�SY�SY�SY	� tY� �Y� tY�SY�SY�SY4SY�SY�SY�SY�S� �SY� �Y
� tY�SY�SY�SY�SY�SYRSY�SYLSY�SY	�S� �SS� �� ��    �       � � �    � �  �   !     L�    �        � �        ����  -7 
SourceFile /CFIDE/adminapi/security.cfc 7cfsecurity2ecfc1927877911$funcGETDEFAULTSECURITYSANDBOX  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ALLRUNTIMEPERMISSIONS  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   ACCESSMANAGER  K ! WEBAPP # coldfusion/runtime/CfJspPage % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	 & ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/JspContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	 & 3 	DIRECTORY 5 getVariable  (I)Lcoldfusion/runtime/Variable; 7 8 %coldfusion/runtime/ArgumentCollection :
 ; 9 _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; = >
  ? _setCurrentLineNo (I)V A B
 & C 	component E CFIDE.adminapi.accessmanager G CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; I J coldfusion/runtime/CFPage L
 M K set (Ljava/lang/Object;)V O P coldfusion/runtime/Variable R
 S Q / U _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; W X
 & Y checkAdminRoles [ java/lang/Object ] coldfusion.sandboxsecurity _ _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; a b
 & c PERMISSIONS e ArrayNew (I)Ljava/util/List; g h
 M i _set '(Ljava/lang/String;Ljava/lang/Object;)V k l
 & m INTERNAL o ISINTERNALSANDBOX q &(Ljava/lang/String;)Ljava/lang/Object; W s
 & t isInternalSandBox v _autoscalarize x s
 & y 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; { |
 & } 
PERMISSION  	StructNew !()Lcoldfusion/util/FastHashtable; � �
 M � java/lang/String � CLASS � java.io.SerializablePermission � _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 & � TARGET � * � ACTION �   � _List $(Ljava/lang/Object;)Ljava/util/List; � � coldfusion/runtime/Cast �
 � � ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z � �
 M � java.util.PropertyPermission � 
read,write � java.net.NetPermission � java.sql.SQLPermission �  java.security.SecurityPermission � java.net.SocketPermission � connect,resolve � _factor1 j(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;Lcoldfusion/runtime/CFPage;)Ljava/lang/Object; � �
  � _boolean (Ljava/lang/Object;)Z � �
 � � java.lang.RuntimePermission � #coldfusion.sql.DataSourcePermission � java.io.FilePermission � <<ALL FILES>> � read,write,execute,delete � coldfusion.vfs.VFilePermission � ram:///- � ram:/// � %coldfusion.runtime.FunctionPermission � _factor0 � �
  � *-createobject(java) � GETALLRUNTIMEPERMISSIONS � getAllRuntimePermissions � 1 � x X
 & � _arrayGetAt C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
 & � _double (Ljava/lang/Object;)D � �
 � � _Object (D)Ljava/lang/Object; � �
 � � ArrayLen (Ljava/lang/Object;)I � �
 M � (I)Ljava/lang/Object; � �
 � � _compare '(Ljava/lang/Object;Ljava/lang/Object;)D � �
 & � #java.lang.reflect.ReflectPermission � &coldfusion.tagext.GenericTagPermission � 'coldfusion.tagext.lang.ModulePermission � getDefaultSecuritySandbox � metaData Ljava/lang/Object; � �	  � false � &coldfusion/runtime/AttributeCollection � name � access � private output hint 1Create the default structure for a blank sandbox. 
Parameters	 REQUIRED true HINT 'Specifies the directory of the sandbox. NAME 	directory ([Ljava/lang/Object;)V 
 � getMetadata ()Ljava/lang/Object; this 9Lcfsecurity2ecfc1927877911$funcGETDEFAULTSECURITYSANDBOX; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; __factorParent out Ljavax/servlet/jsp/JspWriter; 
parentPage Lcoldfusion/runtime/CFPage; value LineNumberTable runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance __arguments 'Lcoldfusion/runtime/ArgumentCollection; Lcoldfusion/runtime/Variable; <clinit> 	getOutput 1       � �   
     "     � ��              !    !     ��             "#          �             $%    (     
� �Y6S�          
    � �   �    -�-� D� �� n-�� �Y�S�� �-�� �Y�S�� �-�� �Y�S�� �-� D-f� z� �-�� z� �W-�-� D� �� n-�� �Y�S�� �-�� �Y�S�� �-�� �Y�S�� �-� D-f� z� �-�� z� �W-�-� D� �� n-�� �Y�S�� �-�� �Y�S�� �-�� �Y�S�� �-� D-f� z� �-�� z� �W-�-�� D� �� n-�� �Y�S¶ �-�� �Y�SĶ �-�� �Y�S�� �-�� D-f� z� �-�� z� �W-�-�� D� �� n-�� �Y�S¶ �-�� �Y�Sƶ �-�� �Y�S�� �- � D-f� z� �-�� z� �W-�-� D� �� n-�� �Y�Sȶ �-�� �Y�S�� �-�� �Y�S�� �-�      4       & 2   '(   )*   + � ,  � � 
� 
� 
� 
�  � � � � � � -� -� -� -� !� >� >� >� >� 2� J� J� J� J� S� S� J� J� J� g� g� g� g� ]� y� y� y� y� m� �� �� �� �� ~� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �����������!�!�!�!��3�3�3�3�'�D�D�D�D�8�U�U�U�U�I�a�a�a�a�j�j�a�a�a�~�~�~�~�t�������������������������������� � � � � � � � � ���������������  � �   �    -�-�� D� �� n-�� �Y�S�� �-�� �Y�S�� �-�� �Y�S�� �-�� D-f� z� �-�� z� �W-�-�� D� �� n-�� �Y�S�� �-�� �Y�S�� �-�� �Y�S�� �-ö D-f� z� �-�� z� �W-�-Ŷ D� �� n-�� �Y�S�� �-�� �Y�S�� �-�� �Y�S�� �-ɶ D-f� z� �-�� z� �W-�-˶ D� �� n-�� �Y�S�� �-�� �Y�S�� �-�� �Y�S�� �-϶ D-f� z� �-�� z� �W-�-Ѷ D� �� n-�� �Y�S�� �-�� �Y�S�� �-�� �Y�S�� �-ն D-f� z� �-�� z� �W-�-׶ D� �� n-�� �Y�S�� �-�� �Y�S�� �-�� �Y�S�� �-�      4       & 2   '(   )*   + � ,  � � 
� 
� 
� 
�  � � � � � � -� -� -� -� !� >� >� >� >� 2� J� J� J� J� S� S� J� J� J� g� g� g� g� ]� y� y� y� y� m� �� �� �� �� ~� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �����������!�!�!�!��3�3�3�3�'�D�D�D�D�8�U�U�U�U�I�a�a�a�a�j�j�a�a�a�~�~�~�~�t������������������������������������������������������������������������������������ -.   � 
   i+� � :+� ,� :	+� :
+ � :+"� :+$� :-� *� 0:-� 4:*6� <� @:-�� D-FH� N� TV� T-�� D--� Z\� ^Y`S� dW-f-�� D-� j� n-p-�� D-r� uw-� ^Y-6� zS� ~� n*-� �� �-۶ D-f� z� �-�� z� �W-p� z� �� /*-� �� �-� D-f� z� �-�� z� �W�'-�-� D� �� n-�� �Y�Sȶ �-�� �Y�SͶ �-�� �Y�S�� �-� D-f� z� �-�� z� �W
-� D-϶ u�-� ^� ~� TӶ T� }-�-� D� �� n-�� �Y�S�� �-�� �Y�S-
-� ն ٶ �-�� �Y�S�� �-� D-f� z� �-�� z� �W-� ո �c� � T-� �-� D-
� ո � � ��t|���b-�-� D� �� n-�� �Y�S� �-�� �Y�S�� �-�� �Y�S�� �-#� D-f� z� �-�� z� �W-�-&� D� �� n-�� �Y�S� �-�� �Y�S�� �-�� �Y�S�� �-*� D-f� z� �-�� z� �W-�--� D� �� n-�� �Y�S� �-�� �Y�S�� �-�� �Y�S�� �-1� D-f� z� �-�� z� �W-f� z��      �   i    i/0   i1 �   i)*   i23   i'(   i+ �   i 1 2   i 4   i 4 	  i 4 
  i 4   i !4   i #4   i 54 ,  � �  � T� ^� ^� `� `� ]� ]� ]� ]� T� T� h� j� j� j� j� h� w� w� �� �� v� v� v� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��////%AAAA5RRRRFccccWooooxxooo�������������������������������������������""////""� ��SSSSIe e e e Y v!v!v!v!j!�"�"�"�"{"�#�#�#�#�#�#�#�#�#�&�&�&�&�&�'�'�'�'�'�(�(�(�(�(�)�)�)�)�)�*�*�*�*�*�*�*�*�*-----.....0/0/0/0/$/A0A0A0A050M1M1M1M1V1V1M1M1M1`3`3`3`3`3 h�       #     *� 
�             5     �     �� �Y
� ^Y�SY�SY SYSYSY�SYSYSY
SY	� ^Y� �Y� ^YSYSYSYSYSYS�SS�� ��          �   6!    !     ��                  ����  -� 
SourceFile /CFIDE/adminapi/security.cfc 3cfsecurity2ecfc1927877911$funcDELETESECURITYSANDBOX  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   THISAPP  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   AC  ACCESSMANAGER ! SECURITY # THISAPPCONTEXT % THISPATLIST ' THISDIR ) WEBAPP + coldfusion/runtime/CfJspPage - pageContext #Lcoldfusion/runtime/NeoPageContext; / 0	 . 1 getOut ()Ljavax/servlet/jsp/JspWriter; 3 4 javax/servlet/jsp/JspContext 6
 7 5 parent Ljavax/servlet/jsp/tagext/Tag; 9 :	 . ; 	DIRECTORY = getVariable  (I)Lcoldfusion/runtime/Variable; ? @ %coldfusion/runtime/ArgumentCollection B
 C A _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; E F
  G / I set (Ljava/lang/Object;)V K L coldfusion/runtime/Variable N
 O M _setCurrentLineNo (I)V Q R
 . S _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; U V
 . W _String &(Ljava/lang/Object;)Ljava/lang/String; Y Z coldfusion/runtime/Cast \
 ] [ Trim &(Ljava/lang/String;)Ljava/lang/String; _ ` coldfusion/runtime/CFPage b
 c a &(Ljava/lang/String;)Ljava/lang/Object; U e
 . f   h 	component j CFIDE.adminapi.accessmanager l CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; n o
 c p java r  coldfusion.server.ServiceFactory t getSecurityService v java/lang/Object x _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; z {
 . | _get ~ V
 .  checkAdminRoles � coldfusion.sandboxsecurity � java/lang/String � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 . � /* � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 . � _Object (Z)Ljava/lang/Object; � �
 ] � _boolean (Ljava/lang/Object;)Z � �
 ] � GETCFIDEDIRECTORY � ~ e
 . � getCFIDEDirectory � 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; � �
 . � '(Ljava/lang/Object;Ljava/lang/Object;)D � �
 . � GETWEBINFDIRECTORY � getWebInfDirectory � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 . � coldfusion/tagext/lang/ThrowTag � throw � setCalledName (Ljava/lang/String;)V � � coldfusion/tagext/GenericTag �
 � � cfthrow � message � CANNOT_DELETE_SYSTEM_SANDBOXES � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 . � 
setMessage � �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 . � CONTEXTS � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 ] � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 c � _resolve � �
 . � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
 . � IsStruct � �
 c � RESULT � StructDelete %(Ljava/util/Map;Ljava/lang/String;Z)Z � �
 c � _set '(Ljava/lang/String;Ljava/lang/Object;)V � �
 . � SANDBOX_NOT_FOUND � security.constraints � 	IsDefined (Ljava/lang/String;)Z � �
 c � CONSTRAINTS � THISAPPCONST StructKeyArray +(Ljava/util/Map;)Lcoldfusion/runtime/Array;
 c I 1	 C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; �
 . 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; �
 . url-pattern-list 9(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; �
 . D _int (Ljava/lang/Object;)I
 ] , 	ListGetAt 9(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
 c  ListDeleteAt"
 c# _arraySetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V%&
 .' _double (Ljava/lang/Object;)D)*
 ]+ (D)Ljava/lang/Object; �-
 ]. ListLen (Ljava/lang/String;)I01
 c2 (I)Ljava/lang/Object; �4
 ]5 Len7
 c8 (Ljava/lang/Object;D)D �:
 .; � �
 c= ArrayLen?
 c@ LOGAUDITB logauditD msgF java/lang/StringBufferH 9 removed security sandbox restrictions for the directory J  �
IL append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;NO
IP .R toString ()Ljava/lang/String;TU
 yV )([Ljava/lang/Object;[Ljava/lang/Object;)V X
 CY b(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;Ljava/util/Map;)Ljava/lang/Object; �[
 .\ deleteSecuritySandbox^ metaData Ljava/lang/Object;`a	 b voidd truef &coldfusion/runtime/AttributeCollectionh namej accessl publicn outputp 
returntyper hintt 6Removes security sandbox restrictions for a directory.v 
Parametersx REQUIREDz HINT| >Specifies the directory of the security sandbox to be removed.~ NAME� 	directory� ([Ljava/lang/Object;)V �
i� getMetadata ()Ljava/lang/Object; this 5Lcfsecurity2ecfc1927877911$funcDELETESECURITYSANDBOX; LocalVariableTable Code getName 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw28 !Lcoldfusion/tagext/lang/ThrowTag; throw29 LineNumberTable <clinit> 	getOutput 1       � �   `a   	 �� �   "     �c�   �       ��   �U �   "     _�   �       ��   �� �         �   �       ��   �U �   "     e�   �       ��   �� �   (     
� �Y>S�   �       
��   �� �  }    �+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :+(� :+*� :+,� :-� 2� 8:-� <:*>� D� H:J� P
-'� T-� X� ^� d� P-(� T->� g� ^� d� Pi� Pi� Pi� P-,� T-km� q� P--� T---� T-su� qw� y� }� P-/� T--� ��� yY�S� }W-� �Y>S� ��� ��~�� �Y� �� 6W-� �Y>S� �-2� T-�� ��-� y� �� ��~�� �Y� �� 6W-� �Y>S� �-3� T-�� ��-� y� �� ��~�� �� �� H-� �� �� �:-5� T�� ���-ɶ g� ^�� Ͷ �� �� ؙ �-;� T--� �Y�S� �� �-
� X� ^� � �-=� T-� �Y�S� �-
� X� � � �-� �Y�S� �-
� X� � P-�-@� T--� X� �-� X� ^� � �� �-� g� ��� H-� �� �� �:-D� T�� ���-�� g� ^�� Ͷ �� �� ؙ �-J� T-�� ��w-L� T-� �Y S� �� �Z-N� T--� �Y S� �� �-
� X� ^� �0--� �Y S� �-
� X� � �-Q� T--� g� ޶� P-
� ���-U� T---� g��� ��-W� T----� g��� �� �b-� yY--� g�SYS�� P-
� �� �-]� T-� X� ^-� g��!-� X� ��~�� R-_� T-� X� ^-� g��$� P-� yY--� g�SYS-� X�(� _--� g�,c�/� �-� g-[� T-� yY--� g�SYS�� ^�3�6� ��t|���--f� T-f� T-� X� ^� d�9�6�<�� )-h� T--� g� �--� g�� ^�>W--� g�,c�/� �-� g-S� T-� X�A�6� ��t|���$-q� T-C� �E-� CY� �YGS� yY�IYK�M-� �Y>S� �� ^�QS�Q�WS�Z�]W�   �   �   ���    ���   ��a   ���   ���   ���   ��a   � 9 :   � �   � � 	  � � 
  � �   � !�   � #�   � %�   � '�   � )�   � +�   � =�   ���   ��� �  �w  " t& v& v& v& v& t& {' �' �' �' �' �' �' �' �' {' �( �( �( �( �( �( �( �( �( �( �) �) �) �) �) �) �* �* �* �* �* �* �+ �+ �+ �+ �+ �+ �, �, �, �, �, �, �, �, �, �, �- �- �- �- �- �- �- �- �- �- �- �-//// / / /11%1%11111;2;2Q2Q2Q2Q2;2;2;2;22222u3u3�3�3�3�3u3u3u3u333�5�5�51�;�;�;�;;;;;�;�;"="=1=1="="="="=B?B?Q?Q?B?B?B?B?@?h@h@h@h@q@q@q@q@z@z@g@g@g@g@]@�B�B�B�B�B�B�D�D�D�D�D�B"=�;�J�J�J�J�L�L�L�LNNNNNNNNNN2P2PBPBP2P2P2P2P.PXQXQXQXQWQWQWQWQNQlSlSlSlShS�U�U|U|U|U|U�W�W�W�W�W�W�W�W�W�W�Y�Y�Y�Y�Y�Y�Y�Y�Y�[�[�[�[�[�]�]�]�]]]]]]]�]�]]]�]�],_,_,_,_5_5_5_5_?_?_,_,_,_,_#_U`U`b`b`f`f`f`f`H`oa�]v[v[v[v[�[�[v[v[v[v[r[�[�[�[�[�[�[�[�[�[�[�[�[�[�[�[�f�f�f�f�f�f�f�f�f�f�h�h�h�hhh	h	h	h	h�h�h�h�f�W|U!S!S!S!S+S+S!S!S!S!SS3S3SASASASAS3S3ShSN�L�J t%bqbq�q�q�q�q�q�q�q�q�q�q�q�qbqbqbqbq    �   #     *� 
�   �       ��   �  �   �     ��� �� ��iY� yYkSY_SYmSYoSYqSYgSYsSYeSYuSY	wSY
ySY� yY�iY� yY{SYgSY}SYSY�SY�S��SS���c�   �       ���   �U �   "     g�   �       ��        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc 6cfsecurity2ecfc1927877911$funcSETENABLESANDBOXSECURITY  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / ENABLE 1 boolean 3 getVariable  (I)Lcoldfusion/runtime/Variable; 5 6 %coldfusion/runtime/ArgumentCollection 8
 9 7 3coldfusion/tagext/validation/CFTypeValidatorFactory ; BOOL_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; = >	 < ? _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; A B
  C _setCurrentLineNo (I)V E F
 " G 	component I CFIDE.adminapi.accessmanager K CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; M N coldfusion/runtime/CFPage P
 Q O set (Ljava/lang/Object;)V S T coldfusion/runtime/Variable V
 W U java Y  coldfusion.server.ServiceFactory [ getSecurityService ] java/lang/Object _ _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; a b
 " c _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; e f
 " g checkAdminRoles i %enterprise,coldfusion.sandboxsecurity k setSandboxSecurityEnabled m java/lang/String o _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; q r
 " s _boolean (Ljava/lang/Object;)Z u v coldfusion/runtime/Cast x
 y w CREATEDEFAULTSANDBOXES { &(Ljava/lang/String;)Ljava/lang/Object; e }
 " ~ createDefaultSandboxes � 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; � �
 " � setEnableSandboxSecurity � metaData Ljava/lang/Object; � �	  � void � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � -Specifies whether to enable sandbox security. � 
Parameters � REQUIRED � Yes � TYPE � HINT � True or False � NAME � enable � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this 8Lcfsecurity2ecfc1927877911$funcSETENABLESANDBOXSECURITY; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       � �   	  � �  �   "     � ��    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   !     ��    �        � �    � �  �   (     
� pY2S�    �       
 � �    � �  �  X     �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:*24� :� @� D:
-ƶ H-JL� R� X-Ƕ H--Ƕ H-Z\� R^� `� d� X-ȶ H--
� hj� `YlS� dW-ʶ H--� hn� `Y-� pY2S� tS� dW-� pY2S� t� z� -Ͷ H-|� �-� `� �W�    �   �    � � �     � � �    � � �    � � �    � � �    � � �    � � �    � - .    �  �    �  � 	   �  � 
   �  �    � 1 �  �   � 1  � G� Q� Q� S� S� P� P� P� P� G� G� [� m� m� o� o� l� l� d� d� d� d� [� [� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��     �   #     *� 
�    �        � �    �   �   �     �� �Y� `Y�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� `Y� �Y� `Y�SY�SY�SY4SY�SY�SY�SY�S� �SS� �� ��    �       � � �    � �  �   !     ��    �        � �        ����  - � 
SourceFile /CFIDE/adminapi/security.cfc ;cfsecurity2ecfc1927877911$funcGETFUNCTIONPERMISSIONPOSITION  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   PERMISSIONS  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SECURITY  APOS ! coldfusion/runtime/CfJspPage # pageContext #Lcoldfusion/runtime/NeoPageContext; % &	 $ ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
 - + parent Ljavax/servlet/jsp/tagext/Tag; / 0	 $ 1 WEBAPP 3 getVariable  (I)Lcoldfusion/runtime/Variable; 5 6 %coldfusion/runtime/ArgumentCollection 8
 9 7 _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; ; <
  = 	DIRECTORY ? _setCurrentLineNo (I)V A B
 $ C ArrayNew (I)Ljava/util/List; E F coldfusion/runtime/CFPage H
 I G set (Ljava/lang/Object;)V K L coldfusion/runtime/Variable N
 O M 0 Q java S  coldfusion.server.ServiceFactory U CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; W X
 I Y getSecurityService [ java/lang/Object ] _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; _ `
 $ a java/lang/String c CONTEXTS e _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; g h
 $ i _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; k l
 $ m _arrayGetAt 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; o p
 $ q 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; s t
 I u I w 1 y _set '(Ljava/lang/String;Ljava/lang/Object;)V { |
 $ } C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; o 
 $ � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � CLASS � _resolveAndAutoscalarize 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
 $ � %coldfusion.runtime.FunctionPermission � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 $ � _double (Ljava/lang/Object;)D � �
 � � _Object (D)Ljava/lang/Object; � �
 � � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; k �
 $ � ArrayLen (Ljava/lang/Object;)I � �
 I � (I)Ljava/lang/Object; � �
 � � '(Ljava/lang/Object;Ljava/lang/Object;)D � �
 $ � getFunctionPermissionPosition � metaData Ljava/lang/Object; � �	  � false � &coldfusion/runtime/AttributeCollection � name � access � private � output � hint � 4Returns the index in the function permissions array. � 
Parameters � REQUIRED � true � HINT � DSpecifies the name of the web application using the secured sandbox. � NAME � webapp � ([Ljava/lang/Object;)V  �
 � � @Specifies the sandbox directory for which the index is returned. � 	directory � getMetadata ()Ljava/lang/Object; this =Lcfsecurity2ecfc1927877911$funcGETFUNCTIONPERMISSIONPOSITION; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       � �     � �  �   "     � ��    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   -     � dY4SY@S�    �        � �    � �  �  [    Q+� � :+� ,� :	+� :
+ � :+"� :-� (� .:-� 2:*4� :� >:*@� :� >:
-	 � D-� J� PR� P-	"� D--	"� D-TV� Z\� ^� b� P
-	&� D--� dYfS� j� ^Y-4� nSY-@� nS� r� v� P-xz� ~� H--
-x� n� �� �� dY�S� ��� ��� -x� n� P-x-x� n� �c� �� ~-x� n-	(� D-
� �� �� �� ��t|����-� ���    �   �   Q � �    Q � �   Q � �   Q � �   Q � �   Q � �   Q � �   Q / 0   Q  �   Q  � 	  Q  � 
  Q  �   Q ! �   Q 3 �   Q ? �  �  Z V  	 \	  f	  f	  e	  e	  e	  e	  \	  \	  m	! o	! o	! o	! o	! m	! m	! t	" �	" �	" �	" �	" �	" �	" }	" }	" }	" }	" t	" t	" �	& �	& �	& �	& �	& �	& �	& �	& �	& �	& �	& �	& �	& �	( �	( �	( �	( �	( �	+ �	+ �	+ �	+ �	+ �	+	-	-	-	-	- �	+	(	(	(	(	(	(	(	(	(	(	(!	(!	(.	(.	(.	(.	(!	(!	( �	(H	1H	1H	1H	1H	1 �	$     �   #     *� 
�    �        � �    �   �   �     �� �Y
� ^Y�SY�SY�SY�SY�SY�SY�SY�SY�SY	� ^Y� �Y� ^Y�SY�SY�SY�SY�SY�S� �SY� �Y� ^Y�SY�SY�SY�SY�SY�S� �SS� ϳ ��    �       � � �    � �  �   !     ��    �        � �        