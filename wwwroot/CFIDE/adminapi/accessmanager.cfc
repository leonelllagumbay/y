����  - � 
SourceFile !/CFIDE/adminapi/accessmanager.cfc /cfaccessmanager2ecfc293914889$funcCANACCESSPAGE  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ISADMINAPI  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - PAGE / string 1 getVariable  (I)Lcoldfusion/runtime/Variable; 3 4 %coldfusion/runtime/ArgumentCollection 6
 7 5 3coldfusion/tagext/validation/CFTypeValidatorFactory 9 STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; ; <	 : = _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; ? @
  A *coldfusion/runtime/TransientVariableHolder C &(Lcoldfusion/runtime/NeoPageContext;)V  E
 D F FCONTEXT H _setCurrentLineNo (I)V J K
   L GetPageContext %()Lcoldfusion/runtime/NeoPageContext; N O coldfusion/runtime/CFPage Q
 R P getFusionContext T java/lang/Object V _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; X Y
   Z _set '(Ljava/lang/String;Ljava/lang/Object;)V \ ]
   ^ _get &(Ljava/lang/String;)Ljava/lang/Object; ` a
   b 
isAdminAPI d set (Ljava/lang/Object;)V f g coldfusion/runtime/Variable i
 j h _isNull (Ljava/lang/Object;Z)Z l m
   n _Object (Z)Ljava/lang/Object; p q coldfusion/runtime/Cast s
 t r _boolean (Ljava/lang/Object;)Z v w
 t x isFlashRemoting z setIsAdminAPI | false ~ true � SECURITY � canAccessPage � _autoscalarize � a
   � unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; � � coldfusion/runtime/NeoException �
 � � t0 [Ljava/lang/String; java/lang/String � ANY � � �	  � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I � �
 � � CFCATCH � bind � ]
 D � unbind � 
 D � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
   � metaData Ljava/lang/Object; � �	  � boolean � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � GIndicates whether or not the current user can access the specified page � 
Parameters � REQUIRED � TYPE � NAME � page � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this 1Lcfaccessmanager2ecfc293914889$funcCANACCESSPAGE; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t12 ,Lcoldfusion/runtime/TransientVariableHolder; t13 t14 #Lcoldfusion/runtime/AbortException; t15 Ljava/lang/Exception; __cfcatchThrowable2 Ljava/lang/Throwable; t17 t18 LineNumberTable !coldfusion/runtime/AbortException � java/lang/Exception � java/lang/Throwable � <clinit> 	getOutput 1       � �    � �   	  � �  �   "     � ��    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   !     ��    �        � �    � �  �   (     
� �Y0S�    �       
 � �    � �  �  �    �+� � :+� ,� :	+� :
-� $� *:-� .:*02� 8� >� B:� DY-� $� G:-I-x� M--x� M-� SU� W� [� _
-y� M--I� ce� W� [� k-I� o�� uY� y� W-z� M--I� c{� W� [� y� "-{� M--I� c}� WYS� [W� +-I� o�� -}� M--I� c}� WY�S� [W- �� M--�� c�� WY-0� �S� [:� T�� N� u:�:� �:� �� ��    !           �� ��� �� � 5:� �:� �- �� M--I� c}� WY-
� �S� [W��  L , �&), � L 1 �&)1 � L l �&)l �,il �lql �  �   �   � � �    � � �   � � �   � � �   � � �   � � �   � � �   � + ,   �  �   �  � 	  �  � 
  � / �   � � �   � � �   � � �   � � �   � � �   � � �   � � �  �  6 M   u \ x \ x U x U x U x U x L x L x l y u y u y t y t y t y t y l y l y � z � z � z � z � z � z � z � z � z � z � z � z � z � z � z � z � { � { � { � { � { � { � { � { � | � | � | � | � | � | � } � } � } � } � } � } � } � } � | � z � � � � � � � � �] �� �� �� �� �� �� �� �� � ? w     �   #     *� 
�    �        � �    �   �   �     �� �Y�S� �� �Y� WY�SY�SY�SY�SY�SYSY�SY�SY�SY	�SY
�SY� WY� �Y� WY�SY�SY�SY2SY�SY�S� �SS� ȳ ��    �       � � �    � �  �   !     �    �        � �        ����  -� 
SourceFile !/CFIDE/adminapi/accessmanager.cfc 1cfaccessmanager2ecfc293914889$funcCHECKADMINROLES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ISROOT  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
ISADMINAPI  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / get (I)Ljava/lang/Object; 1 2 %coldfusion/runtime/ArgumentCollection 4
 5 3 REQUIREDROLES 7   9 put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; ; <
 5 = getVariable  (I)Lcoldfusion/runtime/Variable; ? @
 5 A CHECKALLROLES C true E boolean G 3coldfusion/tagext/validation/CFTypeValidatorFactory I BOOL_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; K L	 J M _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; O P
  Q *coldfusion/runtime/TransientVariableHolder S &(Lcoldfusion/runtime/NeoPageContext;)V  U
 T V FCONTEXT X _setCurrentLineNo (I)V Z [
 " \ GetPageContext %()Lcoldfusion/runtime/NeoPageContext; ^ _ coldfusion/runtime/CFPage a
 b ` getFusionContext d java/lang/Object f _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; h i
 " j _set '(Ljava/lang/String;Ljava/lang/Object;)V l m
 " n _get &(Ljava/lang/String;)Ljava/lang/Object; p q
 " r 
isAdminAPI t set (Ljava/lang/Object;)V v w coldfusion/runtime/Variable y
 z x _isNull (Ljava/lang/Object;Z)Z | }
 " ~ _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � isFlashRemoting � setIsAdminAPI � false � SECURITY � isRootAdminUser � _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
 " � arguments.requiredRoles � 	IsDefined (Ljava/lang/String;)Z � �
 b � � q
 " � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � jrun � ListContains '(Ljava/lang/String;Ljava/lang/String;)I � �
 b � � 2
 � � _compare (Ljava/lang/Object;D)D � �
 " � 
standalone � j2ee � 
enterprise � standard � windows � unix � isAdminUser � admin � IsUserInRole � �
 b � coldfusion.adminapi � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 " � coldfusion/tagext/lang/ThrowTag � cfthrow � message � INVALIDUSER � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 " � 
setMessage (Ljava/lang/String;)V � �
 � � cfadminapiSecurityError � setType � �
 � � 	errorcode � CFACCESSDENIED � setErrorcode � �
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 " � ROLE � , � bindPageVariable P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; � 
 " java/util/StringTokenizer '(Ljava/lang/String;Ljava/lang/String;)V 
 	nextToken ()Ljava/lang/String;	

 Trim &(Ljava/lang/String;)Ljava/lang/String;
 b 5jrun,standalone,j2ee,enterprise,standard,windows,unix CFLOOP checkRequestTimeout �
 " hasMoreTokens ()Z
 ISINROLE unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; coldfusion/runtime/NeoException 
! t0 [Ljava/lang/String; java/lang/String% ANY'#$	 ) findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I+,
!- CFCATCH/ bind1 m
 T2 unbind4 
 T5 checkAdminRoles7 metaData Ljava/lang/Object;9:	 ; &coldfusion/runtime/AttributeCollection= name? accessA publicC outputE hintG ^Checks whether the current user is in the required administrative roles, else throws an error.I 
ParametersK REQUIREDM NoO DEFAULTQ HINTS List of required roles.U NAMEW requiredRolesY ([Ljava/lang/Object;)V [
>\ TYPE^ checkAllRoles` getMetadata ()Ljava/lang/Object; this 3Lcfaccessmanager2ecfc293914889$funcCHECKADMINROLES; LocalVariableTable Code getName 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t14 ,Lcoldfusion/runtime/TransientVariableHolder; t15 throw2 !Lcoldfusion/tagext/lang/ThrowTag; t17 t18 Ljava/lang/String; t19 t20 I t21 t22 Ljava/util/StringTokenizer; throw3 t24 t25 t26 t27 t28 t29 throw4 t31 t32 #Lcoldfusion/runtime/AbortException; t33 Ljava/lang/Exception; __cfcatchThrowable0 Ljava/lang/Throwable; t35 t36 LineNumberTable !coldfusion/runtime/AbortException� java/lang/Exception� java/lang/Throwable� <clinit> 	getOutput 1       � �   #$   9:    bc g   "     �<�   f       de   h	 g   "     8�   f       de   ij g         �   f       de   kl g   -     �&Y8SYDS�   f       de   mn g  r  %   +� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:� 6� 8:� >W� B:� 6� DF� >W*DH� B� N� R:� TY-� &� W:-Y-� ]--� ]-� ce� g� k� o- � ]--Y� su� g� k� {-Y� �� �Y� �� W-!� ]--Y� s�� g� k� �� "-"� ]--Y� s�� gY�S� kW� +-Y� �� -$� ]--Y� s�� gYFS� kW
-)� ]--�� s�� g� k� {-
� �Y� ��IW-+� ]-�� ��� �Y� ��0W-,� ]-8� �� ��� �� �� ��~�� �Y� �� (W--� ]-8� �� ��� �� �� ��~�� �Y� �� (W-.� ]-8� �� ��� �� �� ��~�� �Y� �� (W-/� ]-8� �� ��� �� �� ��~�� �Y� �� (W-0� ]-8� �� ��� �� �� ��~�� �Y� �� (W-1� ]-8� �� ��� �� �� ��~�� �Y� �� (W-2� ]-8� �� ��� �� �� ��~�� �� �� :�(�-
� �� ��� �Y� �� TW-8� ]--�� s�� g� k� ��� �Y� �� W-8� ]-�� ��� �Y� �� W-8� ]-Ķ ��� �� �� b-� �� �� �:-9� ]��-ܶ �� �� � �� ���-�� �� �� � �� �� �� :�]�-�:� o-D� �� ��-8� �� �:�:6-�+�:�Y�:� ��:� {-�-A� ]-�� �� ��� o-
� �� ��� �Y� �� 5W-
� �Y� �� 'W-C� ]-�� �� �� �� �� ��~� �Y� �� W-D� ]--�� �� ��� �� �� L-� �� �� �:-E� ]��-ܶ �� �� � �� �� �� �� :�E��`6���� �-�� o-8� �� �:�:6-�+�:�Y�:� H�:� {-K� ]--K� ]-�� �� ���  -F� o� �`6����-� �� ��� L-� �� �� �:-Q� ]��-ܶ �� �� � �� �� �� �� :� U�� O� u:  �:!!�":""�*�.�    "           0"�3"�� !�� � 4:#� #�:$�6-Y� ]--Y� s�� gY-� �S� kW�$�  �����x��~����������� �����x��~����������� �����x��~������������������� f  t %   de     op    q:    rs    tu    vw    x:     - .     y     y 	    y 
    y     7y     Cy    z{    |:    }~    :    ��    ��    ��    �y    ��    �~    �:    ��    ��    ��    �y    ��    �~    �:    ��     �� !   �� "   �� #   �: $�  ^�    B  B  ^  ^  �  �  �  �  �  �  �  �  �   �   �   �   �   �   �   �   �   � ! � ! � ! � ! � ! � ! � ! � ! � ! � ! � ! � ! � ! � ! � ! � ! � " � " " " � " � " � " � " # # # # # #! $! $/ $/ $  $  $  $  $ # � !6 )? )? )> )> )> )> )6 )6 )Q *Q *Q *Q *f +f +e +e +e +e +e +e +e +e +~ ,~ ,~ ,~ ,� ,� ,~ ,~ ,� ,� ,~ ,~ ,~ ,~ ,� -� -� -� -� -� -� -� -� -� -� -� -� -� -~ -~ -~ -~ -� .� .� .� .� .� .� .� .� .� .� .� .� .� .~ .~ .~ .~ . / / / / / / / / / / / / / /~ /~ /~ /~ /. 0. 0. 0. 07 07 0. 0. 0? 0? 0. 0. 0. 0. 0~ 0~ 0~ 0~ 0Z 1Z 1Z 1Z 1c 1c 1Z 1Z 1k 1k 1Z 1Z 1Z 1Z 1~ 1~ 1~ 1~ 1� 2� 2� 2� 2� 2� 2� 2� 2� 2� 2� 2� 2� 2� 2~ 2~ 2~ 2~ 2e ,e ,e ,e ,Q +Q +� 3Q *� 7� 7� 7� 7� 7� 7� 7� 7� 8� 8� 8� 8� 8� 8� 8� 8� 8� 8� 8� 8� 8� 8� 8� 8� 8� 8� 8� 8� 8� 8� 8� 8 8 8 8 8 8 8 8 8 8 8� 8� 8� 8� 8� 8� 8: 9: 9: 9: 9L 9L 9W 9W 9W 9W 9 9� 7� <� <� <� <~ <~ <� >� >� ?� ?� ?� ?� A� A� A� A� A� A� A� A� A� A� B� B� B� B� B� B� B� B� C� C� C� C C C C C C C C C C C C C C C� C� C� C� C� C� C� C� C9 D9 D8 D8 D8 D8 D8 D8 D8 D8 D� D� Dh Eh Eh Eh Ez Ez EM E� B� ?� ?� I� I� I� I� I� I� J� J� J� J� K� K� K� K� K� K� K� K L L L L L L M� K+ J� J. P. P. P. P. P. PX QX QX QX Qj Qj Q= Q. P� H� >� U� Y� Y� Y� Y� Y� Y� Y� Y w     g   #     *� 
�   f       de   �  g       �ȸ γ ��&Y(S�*�>Y
� gY@SY8SYBSYDSYFSY�SYHSYJSYLSY	� gY�>Y� gYNSYPSYRSY:SYTSYVSYXSYZS�]SY�>Y� gYNSYPSY_SYHSYRSYFSYXSYaS�]SS�]�<�   f       �de   �	 g   !     ��   f       de        ����  - 
SourceFile !/CFIDE/adminapi/accessmanager.cfc 4cfaccessmanager2ecfc293914889$funcCHECKROOTADMINUSER  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ISADMINAPI  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - *coldfusion/runtime/TransientVariableHolder / &(Lcoldfusion/runtime/NeoPageContext;)V  1
 0 2 FCONTEXT 4 _setCurrentLineNo (I)V 6 7
   8 GetPageContext %()Lcoldfusion/runtime/NeoPageContext; : ; coldfusion/runtime/CFPage =
 > < getFusionContext @ java/lang/Object B _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; D E
   F _set '(Ljava/lang/String;Ljava/lang/Object;)V H I
   J _get &(Ljava/lang/String;)Ljava/lang/Object; L M
   N 
isAdminAPI P set (Ljava/lang/Object;)V R S coldfusion/runtime/Variable U
 V T _isNull (Ljava/lang/Object;Z)Z X Y
   Z _Object (Z)Ljava/lang/Object; \ ] coldfusion/runtime/Cast _
 ` ^ _boolean (Ljava/lang/Object;)Z b c
 ` d isFlashRemoting f setIsAdminAPI h false j true l SECURITY n isRootAdminUser p %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag t forName %(Ljava/lang/String;)Ljava/lang/Class; v w java/lang/Class y
 z x r s	  | _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; ~ 
   � coldfusion/tagext/lang/ThrowTag � cfthrow � message � INVALIDUSER � _autoscalarize � M
   � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 ` � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
   � 
setMessage (Ljava/lang/String;)V � �
 � � cfadminapiSecurityError � setType � �
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
   � unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; � � coldfusion/runtime/NeoException �
 � � t0 [Ljava/lang/String; java/lang/String � ANY � � �	  � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I � �
 � � CFCATCH � bind � I
 0 � unbind � 
 0 � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
   � checkRootAdminUser � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � access � public � output � hint � MChecks whether the current user is the root admin user, else throws an error. � 
Parameters � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this 6Lcfaccessmanager2ecfc293914889$funcCHECKROOTADMINUSER; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t11 ,Lcoldfusion/runtime/TransientVariableHolder; throw5 !Lcoldfusion/tagext/lang/ThrowTag; t13 t14 #Lcoldfusion/runtime/AbortException; t15 Ljava/lang/Exception; __cfcatchThrowable1 Ljava/lang/Throwable; t17 t18 LineNumberTable !coldfusion/runtime/AbortException java/lang/Exception java/lang/Throwable	 <clinit> 	getOutput 1       r s    � �    � �     � �  �   "     � ʰ    �        � �    � �  �   !     ư    �        � �    � �  �         �    �        � �    � �  �   #     � ��    �        � �    � �  �  5    �+� � :+� ,� :	+� :
-� $� *:-� .:� 0Y-� $� 3:-5-`� 9--`� 9-� ?A� C� G� K
-a� 9--5� OQ� C� G� W-5� [�� aY� e� W-b� 9--5� Og� C� G� e� "-c� 9--5� Oi� CYkS� GW� +-5� [�� -e� 9--5� Oi� CYmS� GW-h� 9--o� Oq� C� G� e�� L-� }� �� �:-i� 9��-�� �� �� �� ��� �� �� �� :� T�� N� t:�:� �:� �� ��    !           �� ��� �� � 4:� �:� �-p� 9--5� Oi� CY-
� �S� GW��  9LXRUX 9L]RU] 9L�
RU�
X��
���
  �   �   � � �    � � �   � � �   � � �   � � �   � � �   � � �   � + ,   �  �   �  � 	  �  � 
  � � �   � � �   � � �   � � �   � � �   �    �   � �   R T   ^ I ` I ` B ` B ` B ` B ` 9 ` 9 ` Y a b a b a a a a a a a a a Y a Y a t b t b t b t b t b t b t b t b � b � b � b � b � b � b t b t b � c � c � c � c � c � c � c � c � d � d � d � d � d � d � e � e � e � e � e � e � e � e � d t b � h � h � h � h � h � h � h � h$ i$ i$ i$ i6 i6 i	 i � h� l� p� p� p� p� p� p� p� p , _     �   #     *� 
�    �        � �      �   z     \u� {� }� �Y�S� �� �Y
� CY�SY�SY�SY�SY�SYkSY�SY�SY�SY	� CS� ݳ ʱ    �       \ � �    �  �   !     k�    �        � �        ����  -; 
SourceFile !/CFIDE/adminapi/accessmanager.cfc cfaccessmanager2ecfc293914889  coldfusion/runtime/CFComponent  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   CFACCESSDENIED Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   REQUEST   	   SECURITY   	    FACTORY " " 	  $ com.macromedia.SourceModTime  R^�v pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	  + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/JspContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	  5 set (Ljava/lang/Object;)V 7 8 coldfusion/runtime/Variable :
 ; 9 LOCALE = REQUEST.LOCALE ? _setCurrentLineNo (I)V A B
  C java E java.util.Locale G CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; I J coldfusion/runtime/CFPage L
 M K 
getDefault O java/lang/Object Q _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; S T
  U getLanguage W checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V Y Z
  [  coldfusion.server.ServiceFactory ] _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; _ `
  a getSecurityService c 	VARIABLES e java/lang/String g 
LOCALEFILE i java/lang/StringBuffer k resources/adminapi_ m (Ljava/lang/String;)V  o
 l p _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; r s
  t _String &(Ljava/lang/Object;)Ljava/lang/String; v w coldfusion/runtime/Cast y
 z x append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; | }
 l ~ .cfm � toString ()Ljava/lang/String; � �
 R � _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � (class$coldfusion$tagext$lang$ImportedTag Ljava/lang/Class; "coldfusion.tagext.lang.ImportedTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � "coldfusion/tagext/lang/ImportedTag � l10n � /CFIDE/adminapi/customtags � admin � setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V � �
 � � &coldfusion/runtime/AttributeCollection � id � invalidUser � var � file � ([Ljava/lang/Object;)V  �
 � � setAttributecollection (Ljava/util/Map;)V � �  coldfusion/tagext/lang/ModuleTag �
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � 
doStartTag ()I � �
 � � 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � 9The current user is not authorized to invoke this method. � write � o java/io/Writer �
 � � doAfterBody � �
 � � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � doEndTag � � #javax/servlet/jsp/tagext/TagSupport �
 � � doCatch (Ljava/lang/Throwable;)V � �
 � � 	doFinally � 
 � � canAccessPage Lcoldfusion/runtime/UDFMethod; /cfaccessmanager2ecfc293914889$funcCANACCESSPAGE �
 � 	 � �	  � CANACCESSPAGE � registerUDF 3(Ljava/lang/String;Lcoldfusion/runtime/UDFMethod;)V � �
  � checkAdminRoles 1cfaccessmanager2ecfc293914889$funcCHECKADMINROLES �
 � 	 � �	  � CHECKADMINROLES � checkRootAdminUser 4cfaccessmanager2ecfc293914889$funcCHECKROOTADMINUSER �
 � 	 � �	  � CHECKROOTADMINUSER � metaData Ljava/lang/Object; � �	   _implicitMethods Ljava/util/Map;	  name accessmanager displayname
 Access Manager hint kProvides functions to check  whether the current user has the access rights required for invoking functions Name 	Functions	 � 	 � 	 �  getMetadata ()Ljava/lang/Object; this Lcfaccessmanager2ecfc293914889; LocalVariableTable Code _setImplicitMethods implicitMethods varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; registerUDFs runPage out Ljavax/servlet/jsp/JspWriter; value module1 $Lcoldfusion/tagext/lang/ImportedTag; mode1 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 LineNumberTable java/lang/Throwable6 _getImplicitMethods ()Ljava/util/Map; <clinit> 1     
                 "     � �    � �    � �    � �    � �   
        "     ��              �    -     +��                        i     7*+,� **+,� � **+,� � **+,� � !**#+,� � %�           7     7!"    7#$  %     :     *� � �*�� � �*�� �� ��             &   R    �*� ,� 2L*� 6N*� � <**� >@*� D**� D**� D*FH� NP� R� VX� R� V� \*� %*� D*F^� N� <*� !*� D***� %� bd� R� V� <*f� hYjS� lYn� q*� hY>S� u� {� �� � �� �*� �-� �� �:*� D���� �� �Y� RY�SY�SY�SY�SY�SY*f� hYjS� uS� �� �� �� �Y6� 5*+� �L+ȶ �� К��� � :� �:*+� �L�� �� :� #�� � #:		� ݨ � :
� 
�:� �� &AD7DID7dp7jmp7d7jm7p|7�7    z   �    �'(   �) �   � 3 4   �*+   �,-   �./   �0 �   �1 �   �2/ 	  �3/ 
  �4 � 5   � ;  
  
  
  
  
  
   4  4  6  6  3  3  ,  ,  %  %  %  %  [  [  ]  ]  Z  Z  Z  Z  P  p  p  o  o  o  o  e  �  �  �  �  �  �  �  �  �  �  �  �  �  P  �  �  �  �  �  �  �  �  �           #     *� 
�             89    "     ��             :     � 	    ��� �� �� �Y� � � �Y� � � �Y� �� �� �Y
� RYSY	SYSYSYSYSYSY	SYSY	� RY�SY�SY�SS� ���          �  5     q u q u w  w  } ^ } ^       &    '