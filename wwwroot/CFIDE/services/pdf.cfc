����  -~ 
SourceFile /CFIDE/services/pdf.cfc %cfpdf2ecfc2041577581$funcEXTRACTIMAGE  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   HTTPURLFORDIRECTORY  ARRAY ! 
SOURCEPATH # DESTINATION % I ' 	FILESLIST ) FILENAME + MAP - coldfusion/runtime/CfJspPage / pageContext #Lcoldfusion/runtime/NeoPageContext; 1 2	 0 3 getOut ()Ljavax/servlet/jsp/JspWriter; 5 6 javax/servlet/jsp/JspContext 8
 9 7 parent Ljavax/servlet/jsp/tagext/Tag; ; <	 0 = SERVICEUSERNAME ? string A getVariable  (I)Lcoldfusion/runtime/Variable; C D %coldfusion/runtime/ArgumentCollection F
 G E 3coldfusion/tagext/validation/CFTypeValidatorFactory I STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; K L	 J M _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; O P
  Q SERVICEPASSWORD S SOURCE U FORMAT W IMAGEPREFIX Y PASSWORD [ PAGES ]   _ set (Ljava/lang/Object;)V a b coldfusion/runtime/Variable d
 e c _setCurrentLineNo (I)V g h
 0 i 	ISALLOWED k _get &(Ljava/lang/String;)Ljava/lang/Object; m n
 0 o 	isAllowed q java/lang/Object s _autoscalarize u n
 0 v pdf x 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; z {
 0 | ISALLOWEDIP ~ isAllowedIP � READFILEFROMURL � readFileFromURL � GETTEMPFILEPATH � getTempFilePath � imageextract � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; u �
 0 � java/lang/String � ACTION � extractimage � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 0 � ALLOWEXTRAATTRIBUTES � true � format � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 0 � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � imageprefix � pages � password � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 0 � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � 
doStartTag ()I � �
 � � doAfterBody � �
 � � doEndTag � �
 � � doCatch (Ljava/lang/Throwable;)V � �
 � � 	doFinally � 
 � � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � name � DirectoryList 9(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/Object; � �
 � � ArrayNew (I)Ljava/util/List; � �
 � � 1 � 
GETHTTPURL  
getHttpUrl _List $(Ljava/lang/Object;)Ljava/util/List;
 � java/util/List size
 �	 bindPageVariable P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;
 0 get (I)Ljava/lang/Object;	 	component CFIDE.services.element CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
 � KEY VALUE /! concat &(Ljava/lang/String;)Ljava/lang/String;#$
 �% 2(Lcoldfusion/runtime/Variable;I)Ljava/lang/Object; u'
 0( _double (Ljava/lang/Object;)D*+
 �, (D)Ljava/lang/Object; �.
 �/ _arraySetAt1 �
 02 extractImage4 metaData Ljava/lang/Object;67	 8 CFIDE.services.element[]: &coldfusion/runtime/AttributeCollection< access> remote@ 
returntypeB 
ParametersD TYPEF NAMEH serviceusernameJ ([Ljava/lang/Object;)V L
=M servicepasswordO sourceQ getMetadata ()Ljava/lang/Object; this 'Lcfpdf2ecfc2041577581$funcEXTRACTIMAGE; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf6 Lcoldfusion/tagext/lang/PDFTag; mode6 t28 t29 Ljava/lang/Throwable; t30 t31 t32 Ljava/util/List; t33 t34 t35 t36 LineNumberTable java/lang/Throwable{ <clinit> 1       � �   67    ST X   "     �9�   W       UV   YZ X   "     5�   W       UV   [ � X         �   W       UV   \Z X   "     ;�   W       UV   ]^ X   H     *� �Y@SYTSYVSYXSYZSY\SY^S�   W       *UV   _` X  K 	 %  �+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :+(� :+*� :+,� :+.� :-� 4� ::-� >:*@B� H� N� R:*TB� H� N� R:*VB� H� N� R:*XB� H� N� R:*ZB� H� N� R:*\B� H� N� R:*^B� H� N� R:`� f-� j-l� pr-� tY-@� wSY-T� wSYyS� }W-� j-� p�-� tY-@� wSYyS� }W-� j-�� p�-� tY-V� wS� }� f-� j-�� p�-� tY�S� }� f
-� �� f-
� �Y�S�� �-
� �YVS-� �� �-
� �Y&S-� �� �-
� �Y�S�� �-� j-�� ��� �Y� �� W-X� w`� ��~�� �� �� - � j--
� �� ��� �W-!� j-�� ��� �Y� �� W-Z� w`� ��~�� �� �� -"� j--
� �� ��� �W-#� j-�� ��� �Y� �� W-^� w`� ��~�� �� �� -$� j--
� �� ��� �W-%� j-�� ��� �Y� �� W-\� w`� ��~�� �� �� -&� j--
� �� ��� �W-� �� �� �:-*� j�-
� �� �� �� �Y6� � ���� �� :� #�� � #:� � � :� �:� �-+� j--� �� ��� �� f--� j-� �� f�� f`� f-0� j-� p-� tY-� �S� }� f-� ��: 6!6" � 6#-,+�:$� � "� :$� f� |-2� j-�� f-� �YS-� �� �-� �Y S-� �� �"�&-� �� �&� �-� tY- �)�-�0S-� ��3"!`6""#��d-� ��� Bam|gjm|Ba||gj||my|||�|| W  t %  �UV    �ab   �c7   �de   �fg   �hi   �j7   � ; <   � k   � k 	  � k 
  � k   � !k   � #k   � %k   � 'k   � )k   � +k   � -k   � ?k   � Sk   � Uk   � Wk   � Yk   � [k   � ]k   �lm   �n '   �o7   �pq   �rq   �s7   �tu    �v ' !  �w ' "  �x ' #  �yk $z  �4   � � � � � �  !!   //>>GG///NWWffWWWWNs||��||||s��������������������������������������' ' ' ' 0 0 & & & �>!>!=!=!=!=!=!=!=!=!P!P!V!V!P!P!P!P!=!=!r"r"r"r"{"{"q"q"q"=!�#�#�#�#�#�#�#�#�#�#�#�#�#�#�#�#�#�#�#�#�$�$�$�$�$�$�$�$�$�#�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%&&&&&&&&&�% �2*2*2*2**�+�+�+�+�+�+�+�+�+�+�+�+�+�+�+�-�-�-�-�-�-�-�-�-�.�.�.�.�.�.�.�/�/�/�/�/�/�/�0�0�0�0�0�0�0�0�0�0�0�1�1�1�1-27272:2:262626262-2-2P3P3P3P3C3C3f4f4f4f4o4o4f4f4f4f4u4u4u4u4f4f4f4f4Y4Y4�5�5�5�5�5�5�5�5�5�5�5�5�1�1�8�8�8�8�8    X   #     *� 
�   W       UV   }  X  i    Kĸ ʳ ̻=Y� tY�SY5SY?SYASYCSY;SYESY� tY�=Y� tYGSYBSYISYKS�NSY�=Y� tYGSYBSYISYPS�NSY�=Y� tYGSYBSYISYRS�NSY�=Y� tYGSYBSYISY�S�NSY�=Y� tYGSYBSYISY�S�NSY�=Y� tYGSYBSYISY�S�NSY�=Y� tYGSYBSYISY�S�NSS�N�9�   W      KUV        ����  -6 
SourceFile /CFIDE/services/pdf.cfc %cfpdf2ecfc2041577581$funcADDWATERMARK  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   COPYFROMPATH  
SOURCEPATH ! 	IMAGEPATH # coldfusion/runtime/CfJspPage % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	 & ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/JspContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	 & 3 SERVICEUSERNAME 5 string 7 getVariable  (I)Lcoldfusion/runtime/Variable; 9 : %coldfusion/runtime/ArgumentCollection <
 = ; 3coldfusion/tagext/validation/CFTypeValidatorFactory ? STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; A B	 @ C _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; E F
  G SERVICEPASSWORD I SOURCE K COPYFROMURL M IMAGEURL O 
FOREGROUND Q ISBASE64 S OPACITY U PAGES W PASSWORD Y POSITION [ ROTATION ] SHOWONPRINT _ _setCurrentLineNo (I)V a b
 & c 	ISALLOWED e _get &(Ljava/lang/String;)Ljava/lang/Object; g h
 & i 	isAllowed k java/lang/Object m _autoscalarize o h
 & p pdf r 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; t u
 & v ISALLOWEDIP x isAllowedIP z READFILEFROMURL | readFileFromURL ~ set (Ljava/lang/Object;)V � � coldfusion/runtime/Variable �
 � � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; o �
 & � java/lang/String � ACTION � addwatermark � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 & � ALLOWEXTRAATTRIBUTES � true � copyfromurl � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �   � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 & � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � copyfrom � StructInsert 6(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z � �
 � � imageurl � image � 
foreground � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � isbase64 � opacity � pages � password � position � rotation � showonprint � destination � DESTINATION � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 & � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 & � 
GETHTTPURL � 
getHttpUrl � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name access remote 
returntype 
Parameters	 TYPE NAME serviceusername ([Ljava/lang/Object;)V 
  servicepassword source getMetadata ()Ljava/lang/Object; this 'Lcfpdf2ecfc2041577581$funcADDWATERMARK; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf0 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �    � �        "     � ��                 !     ��              !          �             "    !     8�             #$    l     N� �Y6SYJSYLSYNSYPSYRSYTSYVSYXSY	ZSY
\SY^SY`S�          N   %&   g 	   �+� � :+� ,� :	+� :
+ � :+"� :+$� :-� *� 0:-� 4:*68� >� D� H:*J8� >� D� H:*L8� >� D� H:*N8� >� D� H:*P8� >� D� H:*R8� >� D� H:*T8� >� D� H:*V8� >� D� H:*X8� >� D� H:*Z8	� >� D� H:*\8
� >� D� H:*^8� >� D� H:*`8� >� D� H:-� d-f� jl-� nY-6� qSY-J� qSYsS� wW-� d-y� j{-� nY-6� qSYsS� wW-� d-}� j-� nY-L� qS� w� �
-� �� �-
� �Y�S�� �-
� �YLS-� �� �-
� �Y�S�� �-� d-�� �� �Y� �� W-N� q�� ��~� �� �� C-� d-}� j-� nY-N� qS� w� �-� d--
� �� ��-� �� �W- � d-�� �� �Y� �� W-P� q�� ��~� �� �� C-"� d-}� j-� nY-P� qS� w� �-#� d--
� �� ��-� �� �W-%� d-�� ��� �Y� �� W-R� q�� ��~�� �� �� -&� d--
� �� ��� �W-'� d-Ķ ��� �Y� �� W-T� q�� ��~�� �� �� -(� d--
� �� �Ķ �W-)� d-ƶ ��� �Y� �� W-V� q�� ��~�� �� �� -*� d--
� �� �ƶ �W-+� d-ȶ ��� �Y� �� W-X� q�� ��~�� �� �� -,� d--
� �� �ȶ �W--� d-ʶ ��� �Y� �� W-Z� q�� ��~�� �� �� -.� d--
� �� �ʶ �W-/� d-̶ ��� �Y� �� W-\� q�� ��~�� �� �� -0� d--
� �� �̶ �W-1� d-ζ ��� �Y� �� W-^� q�� ��~�� �� �� -2� d--
� �� �ζ �W-3� d-ж ��� �Y� �� W-`� q�� ��~�� �� �� -4� d--
� �� �ж �W-5� d-Ҷ ��� �Y� �� W-Զ q�� ��~�� �� �� -6� d--
� �� �Ҷ �W-� �� �� �:-8� d�-
� �� �� �� �� �-9� d-�� j�-� nY-� �S� w��        �    �'(   �) �   �*+   �,-   �./   �0 �   � 1 2   � 1   � 1 	  � 1 
  � 1   � !1   � #1   � 51   � I1   � K1   � M1   � O1   � Q1   � S1   � U1   � W1   � Y1   � [1   � ]1   � _1   �23 4  v�   H H W W ` ` i i H H H v v � � � � v v v � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �                 * 2 2 A A 2 2 2 2 * U U U U ^ ^ ` ` T T T  q  q  p  p  p  p  �  �  �  �  �  �  �  �  p  p  � "� "� "� "� "� "� "� "� "� "� #� #� #� #� #� #� #� #� #� #� #p  � %� %� %� %� %� %� %� %� %� %� %� %� %� %� %� %� %� %� %� % & & & & & & & & &� %) ') '( '( '( '( '( '( '( '( '; '; 'A 'A '; '; '; '; '( '( '\ (\ (\ (\ (e (e ([ ([ ([ (( 'r )r )q )q )q )q )q )q )q )q )� )� )� )� )� )� )� )� )q )q )� *� *� *� *� *� *� *� *� *q )� +� +� +� +� +� +� +� +� +� +� +� +� +� +� +� +� +� +� +� +� ,� ,� ,� ,� ,� ,� ,� ,� ,� + - - - - - - - - - - - - - - - - - - - -7 .7 .7 .7 .@ .@ .6 .6 .6 . -M /M /L /L /L /L /L /L /L /L /_ /_ /e /e /_ /_ /_ /_ /L /L /� 0� 0� 0� 0� 0� 0 0 0 0L /� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 1� 2� 2� 2� 2� 2� 2� 2� 2� 2� 1� 3� 3� 3� 3� 3� 3� 3� 3� 3� 3� 3� 3� 3� 3� 3� 3� 3� 3� 3� 3 4 4 4 4 4 4 4 4 4� 3( 5( 5' 5' 5' 5' 5' 5' 5' 5' 5: 5: 5@ 5@ 5: 5: 5: 5: 5' 5' 5[ 6[ 6[ 6[ 6d 6d 6Z 6Z 6Z 6' 5H � 8� 8� 8� 8j 8� 9� 9� 9� 9� 9� 9� 9� 9� 9       #     *� 
�             5    F    (ظ ޳ � Y� nYSY�SYSYSYSY8SY
SY� nY� Y� nYSY8SYSYS�SY� Y� nYSY8SYSYS�SY� Y� nYSY8SYSYS�SY� Y� nYSY8SYSY�S�SY� Y� nYSY8SYSY�S�SY� Y� nYSY8SYSY�S�SY� Y� nYSY8SYSY�S�SY� Y� nYSY8SYSY�S�SY� Y� nYSY8SYSY�S�SY	� Y� nYSY8SYSY�S�SY
� Y� nYSY8SYSY�S�SY� Y� nYSY8SYSY�S�SY� Y� nYSY8SYSY�S�SS�� ��         (        ����  - 
SourceFile /CFIDE/services/pdf.cfc cfpdf2ecfc2041577581  coldfusion/runtime/CFComponent  <init> ()V  
  	 com.macromedia.SourceModTime  R^#J coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;  	   getOut ()Ljavax/servlet/jsp/JspWriter;   javax/servlet/jsp/JspContext 
   parent Ljavax/servlet/jsp/tagext/Tag;  	   _factor0 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object;  
    _factor1 " 
  # archive Lcoldfusion/runtime/UDFMethod;  cfpdf2ecfc2041577581$funcARCHIVE '
 ( 	 % &	  * ARCHIVE , registerUDF 3(Ljava/lang/String;Lcoldfusion/runtime/UDFMethod;)V . /
  0 
processDDX #cfpdf2ecfc2041577581$funcPROCESSDDX 3
 4 	 2 &	  6 
PROCESSDDX 8 readsignaturefields ,cfpdf2ecfc2041577581$funcREADSIGNATUREFIELDS ;
 < 	 : &	  > READSIGNATUREFIELDS @ getinfo  cfpdf2ecfc2041577581$funcGETINFO C
 D 	 B &	  F GETINFO H removewatermark (cfpdf2ecfc2041577581$funcREMOVEWATERMARK K
 L 	 J &	  N REMOVEWATERMARK P sign cfpdf2ecfc2041577581$funcSIGN S
 T 	 R &	  V SIGN X extractPages %cfpdf2ecfc2041577581$funcEXTRACTPAGES [
 \ 	 Z &	  ^ EXTRACTPAGES ` extractImage %cfpdf2ecfc2041577581$funcEXTRACTIMAGE c
 d 	 b &	  f EXTRACTIMAGE h validatesignature *cfpdf2ecfc2041577581$funcVALIDATESIGNATURE k
 l 	 j &	  n VALIDATESIGNATURE p deletepages $cfpdf2ecfc2041577581$funcDELETEPAGES s
 t 	 r &	  v DELETEPAGES x (convertArrayOfStructToPDFPageDetailArray Acfpdf2ecfc2041577581$funcCONVERTARRAYOFSTRUCTTOPDFPAGEDETAILARRAY {
 | 	 z &	  ~ (CONVERTARRAYOFSTRUCTTOPDFPAGEDETAILARRAY � addwatermark %cfpdf2ecfc2041577581$funcADDWATERMARK �
 � 	 � &	  � ADDWATERMARK � unsign cfpdf2ecfc2041577581$funcUNSIGN �
 � 	 � &	  � UNSIGN � 
mergeFiles #cfpdf2ecfc2041577581$funcMERGEFILES �
 � 	 � &	  � 
MERGEFILES � protect  cfpdf2ecfc2041577581$funcPROTECT �
 � 	 � &	  � PROTECT � 	thumbnail "cfpdf2ecfc2041577581$funcTHUMBNAIL �
 � 	 � &	  � 	THUMBNAIL � mergespecificpages +cfpdf2ecfc2041577581$funcMERGESPECIFICPAGES �
 � 	 � &	  � MERGESPECIFICPAGES � setinfo  cfpdf2ecfc2041577581$funcSETINFO �
 � 	 � &	  � SETINFO � extractText $cfpdf2ecfc2041577581$funcEXTRACTTEXT �
 � 	 � &	  � EXTRACTTEXT � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � _implicitMethods Ljava/util/Map; � �	  � java/lang/Object � style � document � extends � base � 	wsversion � 1 � Name � pdf � 	Functions �	 ( �	 4 �	 < �	 D �	 L �	 T �	 \ �	 d �	 l �	 t �	 | �	 � �	 � �	 � �	 � �	 � �	 � �	 � �	 � � ([Ljava/lang/Object;)V  �
 � � getMetadata ()Ljava/lang/Object; this Lcfpdf2ecfc2041577581; LocalVariableTable Code _setImplicitMethods (Ljava/util/Map;)V implicitMethods __factorParent out Ljavax/servlet/jsp/JspWriter; value 
getExtends ()Ljava/lang/String; registerUDFs runPage LineNumberTable _getImplicitMethods ()Ljava/util/Map; <clinit> 1       % &    2 &    : &    B &    J &    R &    Z &    b &    j &    r &    z &    � &    � &    � &    � &    � &    � &    � &    � &    � �   
 � �   
  � �  �   "     � Ű    �        � �    � �  �   -     +� ˱    �        � �      � �      �   >     *�    �   *     � �      �           �   "   �   >     *�    �   *     � �      �           �    �   !     հ    �        � �      �   �     �*-� +� 1*9� 7� 1*A� ?� 1*I� G� 1*Q� O� 1*Y� W� 1*a� _� 1*i� g� 1*q� o� 1*y� w� 1*�� � 1*�� �� 1*�� �� 1*�� �� 1*�� �� 1*�� �� 1*�� �� 1*�� �� 1*�� �� 1�    �       � � �    �  �   o     '*� � L*� N*-+� !� �*-+� $� ��    �   *    ' � �     '     ' �    '               �   #     *� 
�    �        � �   	  �   "     � ˰    �        � �   
   �  D 	   �� (Y� )� +� 4Y� 5� 7� <Y� =� ?� DY� E� G� LY� M� O� TY� U� W� \Y� ]� _� dY� e� g� lY� m� o� tY� u� w� |Y� }� � �Y� �� �� �Y� �� �� �Y� �� �� �Y� �� �� �Y� �� �� �Y� �� �� �Y� �� �� �Y� �� �� �Y
� �Y�SY�SY�SY�SY�SY�SY�SY�SY�SY	� �Y� �SY� �SY� �SY� �SY� �SY� �SY� �SY� �SY� �SY	� �SY
� �SY� �SY� �SY� �SY� �SY� �SY� �SY� �SY� �SS� �� ű    �      � � �     � &��bb�� R R;;& �& �--4�4�; <; <B �B �I I P�P�W �W �^�^�evevl;l;sVsVz �z �           ����  -  
SourceFile /CFIDE/services/pdf.cfc *cfpdf2ecfc2041577581$funcVALIDATESIGNATURE  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
SOURCEPATH  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / SERVICEUSERNAME 1 string 3 getVariable  (I)Lcoldfusion/runtime/Variable; 5 6 %coldfusion/runtime/ArgumentCollection 8
 9 7 3coldfusion/tagext/validation/CFTypeValidatorFactory ; STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; = >	 < ? _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; A B
  C SERVICEPASSWORD E SOURCE G PASSWORD I _setCurrentLineNo (I)V K L
 " M 	ISALLOWED O _get &(Ljava/lang/String;)Ljava/lang/Object; Q R
 " S 	isAllowed U java/lang/Object W _autoscalarize Y R
 " Z pdf \ 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; ^ _
 " ` ISALLOWEDIP b isAllowedIP d READFILEFROMURL f readFileFromURL h set (Ljava/lang/Object;)V j k coldfusion/runtime/Variable m
 n l 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; Y p
 " q java/lang/String s ACTION u validatesignature w _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V y z
 " { NAME } res  password � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �   � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 " � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 " � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 " � RES � metaData Ljava/lang/Object; � �	  � struct � &coldfusion/runtime/AttributeCollection � name � access � remote � 
returntype � 
Parameters � TYPE � serviceusername � ([Ljava/lang/Object;)V  �
 � � servicepassword � source � getMetadata ()Ljava/lang/Object; this ,Lcfpdf2ecfc2041577581$funcVALIDATESIGNATURE; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf12 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �    � �     � �  �   "     � Ȱ    �        � �    � �  �   !     x�    �        � �    � �  �         �    �        � �    � �  �   !     ʰ    �        � �    � �  �   7     � tY2SYFSYHSYJS�    �        � �    � �  �   	   �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:*24� :� @� D:*F4� :� @� D:*H4� :� @� D:*J4� :� @� D:-Ƕ N-P� TV-� XY-2� [SY-F� [SY]S� aW-ȶ N-c� Te-� XY-2� [SY]S� aW-ɶ N-g� Ti-� XY-H� [S� a� o
-� r� o-
� tYvSx� |-
� tYHS-� r� |-
� tY~S�� |-ж N-�� ��� �Y� �� W-J� [�� ��~�� �� �� -Ѷ N--
� r� ��� �W-� �� �� �:-Ӷ N�-
� r� �� ��  �-Ķ [��    �   �   � � �    � � �   � � �   � � �   � � �   � � �   � � �   � - .   �  �   �  � 	  �  � 
  �  �   � 1 �   � E �   � G �   � I �   � � �  �  ~ _  � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �������"�"�"�"��7�7�7�7�+�D�D�C�C�C�C�C�C�C�C�V�V�\�\�V�V�V�V�C�C�x�x�x�x�����w�w�w�C� ��������������������������     �   #     *� 
�    �        � �    �   �   �     ��� �� �� �Y� XY�SYxSY�SY�SY�SY�SY�SY� XY� �Y� XY�SY4SY~SY�S� �SY� �Y� XY�SY4SY~SY�S� �SY� �Y� XY�SY4SY~SY�S� �SY� �Y� XY�SY4SY~SY�S� �SS� ݳ ȱ    �       � � �        ����  - 
SourceFile /CFIDE/services/pdf.cfc $cfpdf2ecfc2041577581$funcEXTRACTTEXT  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
SOURCEPATH  INFO ! coldfusion/runtime/CfJspPage # pageContext #Lcoldfusion/runtime/NeoPageContext; % &	 $ ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
 - + parent Ljavax/servlet/jsp/tagext/Tag; / 0	 $ 1 SERVICEUSERNAME 3 string 5 getVariable  (I)Lcoldfusion/runtime/Variable; 7 8 %coldfusion/runtime/ArgumentCollection :
 ; 9 3coldfusion/tagext/validation/CFTypeValidatorFactory = STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; ? @	 > A _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; C D
  E SERVICEPASSWORD G SOURCE I PASSWORD K PAGES M ADDQUADS O HONOURSPACES Q USESTRUCTURE S TYPE U   W set (Ljava/lang/Object;)V Y Z coldfusion/runtime/Variable \
 ] [ _setCurrentLineNo (I)V _ `
 $ a 	ISALLOWED c _get &(Ljava/lang/String;)Ljava/lang/Object; e f
 $ g 	isAllowed i java/lang/Object k _autoscalarize m f
 $ n pdf p 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; r s
 $ t ISALLOWEDIP v isAllowedIP x READFILEFROMURL z readFileFromURL | 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; m ~
 $  java/lang/String � ACTION � extracttext � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 $ � NAME � info � ALLOWEXTRAATTRIBUTES � true � addquads � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 $ � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � password � honourspaces � usestructure � type � pages � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 $ � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 $ � extractText � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � access � remote � 
returntype � 
Parameters � serviceusername � ([Ljava/lang/Object;)V  �
 � � servicepassword � source � getMetadata ()Ljava/lang/Object; this &Lcfpdf2ecfc2041577581$funcEXTRACTTEXT; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf5 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �    � �     � �  �   "     � �    �        � �    � �  �   !     ް    �        � �      �         �    �        � �    �  �   !     6�    �        � �     �   T     6	� �Y4SYHSYJSYLSYNSYPSYRSYTSYVS�    �       6 � �     �  � 	   �+� � :+� ,� :	+� :
+ � :+"� :-� (� .:-� 2:*46� <� B� F:*H6� <� B� F:*J6� <� B� F:*L6� <� B� F:*N6� <� B� F:*P6� <� B� F:*R6� <� B� F:*T6� <� B� F:*V6� <� B� F:X� ^- � b-d� hj-� lY-4� oSY-H� oSYqS� uW- � b-w� hy-� lY-4� oSYqS� uW- �� b-{� h}-� lY-J� oS� u� ^
-� �� ^-
� �Y�S�� �-
� �Y�S�� �-
� �YJS-� �� �-
� �Y�S�� �- �� b-�� ��� �Y� �� W-P� oX� ��~�� �� �� - �� b--
� �� ��� �W- �� b-�� ��� �Y� �� W-L� oX� ��~�� �� �� - �� b--
� �� ��� �W- �� b-�� ��� �Y� �� W-R� oX� ��~�� �� �� - �� b--
� �� ��� �W- �� b-�� ��� �Y� �� W-T� oX� ��~�� �� �� - �� b--
� �� ��� �W- �� b-�� ��� �Y� �� W-V� oX� ��~�� �� �� - �� b--
� �� ��� �W- �� b-�� ��� �Y� �� W-N� oX� ��~�� �� �� - � b--
� �� ��� �W-� �� �� �:-� b�-
� �� �� �� ܙ �-� ���    �   �   � � �    �   �	 �   �
   �   �   � �   � / 0   �    �  	  �  
  �    � !   � 3   � G   � I   � K   � M   � O   � Q   � S   � U   �   � �   � � � � � � � � � � � � � � � � � � � � � � � � � � � � �' �' �6 �6 �? �? �' �' �' �F �O �O �^ �^ �O �O �O �O �F �k �m �m �m �m �k �� �� �� �� �v �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � �� �� �� �� � � � � � � � � � � �# �# �) �) �# �# �# �# � � �E �E �E �E �N �N �D �D �D � �\ �\ �[ �[ �[ �[ �[ �[ �[ �[ �n �n �t �t �n �n �n �n �[ �[ �� �� �� �� �� �� �� �� �� �[ �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � �
 �
 � � � � �� �� �& �& �& �& �/ �/ �% �% �% �� �= �= �< �< �< �< �< �< �< �< �O �O �U �U �O �O �O �O �< �< �q q q q z z p p p < � � �����������     �   #     *� 
�    �        � �      �  �    z�� ĳ ƻ �Y� lY�SY�SY�SY�SY�SY6SY�SY	� lY� �Y� lYVSY6SY�SY�S� �SY� �Y� lYVSY6SY�SY�S� �SY� �Y� lYVSY6SY�SY�S� �SY� �Y� lYVSY6SY�SY�S� �SY� �Y� lYVSY6SY�SY�S� �SY� �Y� lYVSY6SY�SY�S� �SY� �Y� lYVSY6SY�SY�S� �SY� �Y� lYVSY6SY�SY�S� �SY� �Y� lYVSY6SY�SY�S� �SS� � �    �      z � �        ����  - 
SourceFile /CFIDE/services/pdf.cfc  cfpdf2ecfc2041577581$funcPROTECT  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
SOURCEPATH  DESTINATION ! coldfusion/runtime/CfJspPage # pageContext #Lcoldfusion/runtime/NeoPageContext; % &	 $ ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
 - + parent Ljavax/servlet/jsp/tagext/Tag; / 0	 $ 1 SERVICEUSERNAME 3 string 5 getVariable  (I)Lcoldfusion/runtime/Variable; 7 8 %coldfusion/runtime/ArgumentCollection :
 ; 9 3coldfusion/tagext/validation/CFTypeValidatorFactory = STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; ? @	 > A _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; C D
  E SERVICEPASSWORD G SOURCE I NEWUSERPASSWORD K NEWOWNERPASSWORD M PERMISSIONS O ENCRYPT Q PASSWORD S _setCurrentLineNo (I)V U V
 $ W 	ISALLOWED Y _get &(Ljava/lang/String;)Ljava/lang/Object; [ \
 $ ] 	isAllowed _ java/lang/Object a _autoscalarize c \
 $ d pdf f 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; h i
 $ j ISALLOWEDIP l isAllowedIP n READFILEFROMURL p readFileFromURL r set (Ljava/lang/Object;)V t u coldfusion/runtime/Variable w
 x v GETTEMPFILEPATH z getTempFilePath | 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; c ~
 $  java/lang/String � ACTION � protect � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 $ � ALLOWEXTRAATTRIBUTES � true � newUserPassword � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �   � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 $ � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � newOwnerPassword � encrypt � password � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 $ � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 $ � 
GETHTTPURL � 
getHttpUrl � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � access � remote � 
returntype � 
Parameters � TYPE � NAME � serviceusername � ([Ljava/lang/Object;)V  �
 � � servicepassword � source � permissions � getMetadata ()Ljava/lang/Object; this "Lcfpdf2ecfc2041577581$funcPROTECT; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf10 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �    � �     � �  �   "     � ް    �        � �      �   !     ��    �        � �     �         �    �        � �     �   !     6�    �        � �     �   N     0� �Y4SYHSYJSYLSYNSYPSYRSYTS�    �       0 � �     �  p 	   P+� � :+� ,� :	+� :
+ � :+"� :-� (� .:-� 2:*46� <� B� F:*H6� <� B� F:*J6� <� B� F:*L6� <� B� F:*N6� <� B� F:*P6� <� B� F:*R6� <� B� F:*T6� <� B� F:-�� X-Z� ^`-� bY-4� eSY-H� eSYgS� kW-�� X-m� ^o-� bY-4� eSYgS� kW-�� X-q� ^s-� bY-J� eS� k� y-�� X-{� ^}-� bY-� �S� k� y
-� �� y-
� �Y�S�� �-
� �YJS-� �� �-
� �Y"S-� �� �-
� �Y�S�� �-�� X-�� ��� �Y� �� W-L� e�� ��~�� �� �� -�� X--
� �� ��� �W-�� X-�� ��� �Y� �� W-N� e�� ��~�� �� �� -�� X--
� �� ��� �W-�� X-�� ��� �Y� �� W-R� e�� ��~�� �� �� -�� X--
� �� ��� �W-�� X-�� ��� �Y� �� W-T� e�� ��~�� �� �� -�� X--
� �� ��� �W-� �
� �� �:-�� X�-
� �� �� �� ֙ �-�� X-ض ^�-� bY-� �S� k��    �   �   P � �    P	
   P �   P   P   P   P �   P / 0   P    P  	  P  
  P    P !   P 3   P G   P I   P K   P M   P O   P Q   P S   P   * �  � �� �� �� �� �� �� �� �� �� �� ������$�$����+�4�4�C�C�4�4�4�4�+�P�Y�Y�h�h�Y�Y�Y�Y�P�u�w�w�w�w�u������������������������������������������������������������������������������������������������������1�1�7�7�1�1�1�1���S�S�S�S�\�\�R�R�R��j�j�i�i�i�i�i�i�i�i�|�|�����|�|�|�|�i�i�������������������i������������������������������������������������������������� ��������4�4�C�C�4�4�4�4�4�     �   #     *� 
�    �        � �      �  u    W�� �� �� �Y� bY�SY�SY�SY�SY�SY6SY�SY� bY� �Y� bY�SY6SY�SY�S� �SY� �Y� bY�SY6SY�SY�S� �SY� �Y� bY�SY6SY�SY�S� �SY� �Y� bY�SY6SY�SY�S� �SY� �Y� bY�SY6SY�SY�S� �SY� �Y� bY�SY6SY�SY�S� �SY� �Y� bY�SY6SY�SY�S� �SY� �Y� bY�SY6SY�SY�S� �SS� � ޱ    �      W � �        ����  - 
SourceFile /CFIDE/services/pdf.cfc cfpdf2ecfc2041577581$funcUNSIGN  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
SOURCEPATH  DESTINATION ! coldfusion/runtime/CfJspPage # pageContext #Lcoldfusion/runtime/NeoPageContext; % &	 $ ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
 - + parent Ljavax/servlet/jsp/tagext/Tag; / 0	 $ 1 SERVICEUSERNAME 3 string 5 getVariable  (I)Lcoldfusion/runtime/Variable; 7 8 %coldfusion/runtime/ArgumentCollection :
 ; 9 3coldfusion/tagext/validation/CFTypeValidatorFactory = STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; ? @	 > A _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; C D
  E SERVICEPASSWORD G SOURCE I PASSWORD K SIGNATUREFIELDNAME M 	UNSIGNALL O _setCurrentLineNo (I)V Q R
 $ S 	ISALLOWED U _get &(Ljava/lang/String;)Ljava/lang/Object; W X
 $ Y 	isAllowed [ java/lang/Object ] _autoscalarize _ X
 $ ` pdf b 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; d e
 $ f ISALLOWEDIP h isAllowedIP j READFILEFROMURL l readFileFromURL n set (Ljava/lang/Object;)V p q coldfusion/runtime/Variable s
 t r GETTEMPFILEPATH v getTempFilePath x 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; _ z
 $ { java/lang/String } ACTION  unsign � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 $ � password � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �   � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 $ � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � signaturefieldname � 	unsignall � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 $ � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 $ � 
GETHTTPURL � 
getHttpUrl � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � access � remote � 
returntype � 
Parameters � TYPE � NAME � serviceusername � ([Ljava/lang/Object;)V  �
 � � servicepassword � source � getMetadata ()Ljava/lang/Object; this !Lcfpdf2ecfc2041577581$funcUNSIGN; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf14 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �    � �     � �  �   "     � ԰    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   !     6�    �        � �    � �  �   B     $� ~Y4SYHSYJSYLSYNSYPS�    �       $ � �    � �  �  L 	   �+� � :+� ,� :	+� :
+ � :+"� :-� (� .:-� 2:*46� <� B� F:*H6� <� B� F:*J6� <� B� F:*L6� <� B� F:*N6� <� B� F:*P6� <� B� F:-� T-V� Z\-� ^Y-4� aSY-H� aSYcS� gW-�� T-i� Zk-� ^Y-4� aSYcS� gW-�� T-m� Zo-� ^Y-J� aS� g� u-�� T-w� Zy-� ^Y-� |S� g� u
-� |� u-
� ~Y�S�� �-
� ~YJS-� |� �-
� ~Y"S-� |� �-�� T-�� ��� �Y� �� W-L� a�� ��~�� �� �� -�� T--
� |� ��� �W-�� T-�� ��� �Y� �� W-N� a�� ��~�� �� �� - � T--
� |� ��� �W-� T-�� ��� �Y� �� W-P� a�� ��~�� �� �� -� T--
� |� ��� �W-� �� �� �:-� T�-
� |� �� �� ̙ �-� T-ζ Z�-� ^Y-� |S� g��    �   �   � � �    � � �   � � �   �    �   �   � �   � / 0   �    �  	  �  
  �    � !   � 3   � G   � I   � K   � M   � O   �	 
  � �  � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ������������(�1�1�@�@�1�1�1�1�(�M�O�O�O�O�M�d�d�d�d�X�u�u�u�u�i���������~�����������������������������������������������������������������������������������������������������    # #    ��1100000000CCIICCCC00eeeennddd0 ������t���������     �   #     *� 
�    �        � �      �  /    �� �� �� �Y� ^Y�SY�SY�SY�SY�SY6SY�SY� ^Y� �Y� ^Y�SY6SY�SY�S� �SY� �Y� ^Y�SY6SY�SY�S� �SY� �Y� ^Y�SY6SY�SY�S� �SY� �Y� ^Y�SY6SY�SY�S� �SY� �Y� ^Y�SY6SY�SY�S� �SY� �Y� ^Y�SY6SY�SY�S� �SS� � Ա    �       � �        ����  - � 
SourceFile /CFIDE/services/pdf.cfc Acfpdf2ecfc2041577581$funcCONVERTARRAYOFSTRUCTTOPDFPAGEDETAILARRAY  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ARRAY  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   I  MAP ! KEY # coldfusion/runtime/CfJspPage % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	 & ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/JspContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	 & 3 VALUE 5 array 7 getVariable  (I)Lcoldfusion/runtime/Variable; 9 : %coldfusion/runtime/ArgumentCollection <
 = ; 3coldfusion/tagext/validation/CFTypeValidatorFactory ? ARRAY_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; A B	 @ C _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; E F
  G ROTATION I _setCurrentLineNo (I)V K L
 & M ArrayNew (I)Ljava/util/List; O P coldfusion/runtime/CFPage R
 S Q set (Ljava/lang/Object;)V U V coldfusion/runtime/Variable X
 Y W 1 [   ] _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; _ `
 & a _List $(Ljava/lang/Object;)Ljava/util/List; c d coldfusion/runtime/Cast f
 g e java/util/List i size ()I k l j m bindPageVariable P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; o p
 & q get (I)Ljava/lang/Object; s t j u 	component w CFIDE.services.pdfpagedetail y CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; { |
 S } java/lang/String  HEIGHT � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 & � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 & � WIDTH � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; _ �
 & � _arrayGetAt 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; � �
 & � java/lang/Object � 2(Lcoldfusion/runtime/Variable;I)Ljava/lang/Object; _ �
 & � _double (Ljava/lang/Object;)D � �
 g � _Object (D)Ljava/lang/Object; � �
 g � _arraySetAt � �
 & � (convertArrayOfStructToPDFPageDetailArray � metaData Ljava/lang/Object; � �	  � CFIDE.services.pdfpagedetail[] � &coldfusion/runtime/AttributeCollection � name � access � private � 
returntype � 
Parameters � TYPE � NAME � value � ([Ljava/lang/Object;)V  �
 � � rotation � getMetadata ()Ljava/lang/Object; this CLcfpdf2ecfc2041577581$funcCONVERTARRAYOFSTRUCTTOPDFPAGEDETAILARRAY; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; Lcoldfusion/runtime/Variable; t16 Ljava/util/List; t17 t18 t19 t20 LineNumberTable <clinit> 1       � �     � �  �   "     � ��    �        � �    � �  �   !     ��    �        � �    � l  �         �    �        � �    � �  �   !     ��    �        � �    � �  �   -     � �Y6SYJS�    �        � �    � �  �  � 	   k+� � :+� ,� :	+� :
+ � :+"� :+$� :-� *� 0:-� 4:*68� >� D� H:*J8� >� D� H:
- �� N-� T� Z\� Z^� Z-6� b� h:66� n 6-$+� r:� �� v :� Z� �- �� N-xz� ~� Z-� �Y�S-� �Y�S� �� �-� �Y�S-� �Y�S� �� �-� �YJS-J-� �� �� �-
� �Y- � �� �� �S-� �� �`6��P-
� ���    �   �   k � �    k � �   k � �   k � �   k � �   k � �   k � �   k 1 2   k  �   k  � 	  k  � 
  k  �   k ! �   k # �   k 5 �   k I �   k � �   k �    k �    k �    k � �  �  : N   � j � t � t � s � s � s � s � j � j � { � } � } � } � } � { � { � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �& �& �# �# �# �# � � �; �; �; �; �; �; �K �K �K �K �2 �2 �_ � � �b �b �b �b �b �     �   #     *� 
�    �        � �    �   �   �     �� �Y� �Y�SY�SY�SY�SY�SY�SY�SY� �Y� �Y� �Y�SY8SY�SY�S� �SY� �Y� �Y�SY8SY�SY�S� �SS� �� ��    �       � � �        ����  -� 
SourceFile /CFIDE/services/pdf.cfc "cfpdf2ecfc2041577581$funcTHUMBNAIL  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   HTTPURLFORDIRECTORY  ARRAY ! UTIL # 
SOURCEPATH % DESTINATION ' I ) 	FILESLIST + FILENAME - MAP / coldfusion/runtime/CfJspPage 1 pageContext #Lcoldfusion/runtime/NeoPageContext; 3 4	 2 5 getOut ()Ljavax/servlet/jsp/JspWriter; 7 8 javax/servlet/jsp/JspContext :
 ; 9 parent Ljavax/servlet/jsp/tagext/Tag; = >	 2 ? SERVICEUSERNAME A string C getVariable  (I)Lcoldfusion/runtime/Variable; E F %coldfusion/runtime/ArgumentCollection H
 I G 3coldfusion/tagext/validation/CFTypeValidatorFactory K STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; M N	 L O _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; Q R
  S SERVICEPASSWORD U SOURCE W FORMAT Y IMAGEPREFIX [ PASSWORD ] PAGES _ 
RESOLUTION a SCALE c TRANSPARENT e _setCurrentLineNo (I)V g h
 2 i 	ISALLOWED k _get &(Ljava/lang/String;)Ljava/lang/Object; m n
 2 o 	isAllowed q java/lang/Object s _autoscalarize u n
 2 v pdf x 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; z {
 2 | ISALLOWEDIP ~ isAllowedIP � READFILEFROMURL � readFileFromURL � set (Ljava/lang/Object;)V � � coldfusion/runtime/Variable �
 � � GETTEMPFILEPATH � getTempFilePath � 	thumbnail � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; u �
 2 � java/lang/String � ACTION � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 2 � ALLOWEXTRAATTRIBUTES � true � format � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �   � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 2 � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � imageprefix � pages � password � 
resolution � scale � transparent � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 2 � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � 
doStartTag ()I � �
 � � doAfterBody � �
 � � doEndTag � �
 � � doCatch (Ljava/lang/Throwable;)V � �
 � � 	doFinally � 
 � � java � coldfusion.servicelayer.Utils � CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; 
 � m �
 2 sortThumnailFiles _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;	
 2
 ArrayNew (I)Ljava/util/List;
 � 1 
GETHTTPURL 
getHttpUrl _List $(Ljava/lang/Object;)Ljava/util/List;
 � java/util/List size � bindPageVariable P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; 
 2! get (I)Ljava/lang/Object;#$% 	component' CFIDE.services.element) KEY+ VALUE- _String &(Ljava/lang/Object;)Ljava/lang/String;/0
 �1 /3 concat &(Ljava/lang/String;)Ljava/lang/String;56
 �7 2(Lcoldfusion/runtime/Variable;I)Ljava/lang/Object; u9
 2: _double (Ljava/lang/Object;)D<=
 �> (D)Ljava/lang/Object; �@
 �A _arraySetAtC �
 2D metaData Ljava/lang/Object;FG	 H CFIDE.services.element[]J &coldfusion/runtime/AttributeCollectionL nameN accessP remoteR 
returntypeT 
ParametersV TYPEX NAMEZ serviceusername\ ([Ljava/lang/Object;)V ^
M_ servicepassworda sourcec getMetadata ()Ljava/lang/Object; this $Lcfpdf2ecfc2041577581$funcTHUMBNAIL; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf18 Lcoldfusion/tagext/lang/PDFTag; mode18 t32 t33 Ljava/lang/Throwable; t34 t35 t36 Ljava/util/List; t37 t38 t39 t40 LineNumberTable java/lang/Throwable� <clinit> 1       � �   FG    ef j   "     �I�   i       gh   kl j   !     ��   i       gh   m � j         �   i       gh   nl j   "     K�   i       gh   op j   Z     <
� �YBSYVSYXSYZSY\SY^SY`SYbSYdSY	fS�   i       <gh   qr j   	 )  �+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :+(� :+*� :+,� :+.� :+0� :-� 6� <:-� @:*BD� J� P� T:*VD� J� P� T:*XD� J� P� T:*ZD� J� P� T:*\D� J� P� T:*^D� J� P� T:*`D� J� P� T:*bD� J� P� T:*dD� J� P� T:*fD	� J� P� T:-�� j-l� pr-� tY-B� wSY-V� wSYyS� }W-�� j-� p�-� tY-B� wSYyS� }W-�� j-�� p�-� tY-X� wS� }� �-�� j-�� p�-� tY�S� }� �
-� �� �-
� �Y�S�� �-
� �YXS-� �� �-
� �Y(S-� �� �-
� �Y�S�� �-�� j-�� ��� �Y� �� W-Z� w�� ��~�� �� �� -�� j--
� �� ��� �W-�� j-¶ ��� �Y� �� W-\� w�� ��~�� �� �� -�� j--
� �� �¶ �W-�� j-Ķ ��� �Y� �� W-`� w�� ��~�� �� �� -�� j--
� �� �Ķ �W-�� j-ƶ ��� �Y� �� W-^� w�� ��~�� �� �� -�� j--
� �� �ƶ �W-�� j-ȶ ��� �Y� �� W-b� w�� ��~�� �� �� -�� j--
� �� �ȶ �W-�� j-ʶ ��� �Y� �� W-d� w�� ��~�� �� �� -�� j--
� �� �ʶ �W-�� j-̶ ��� �Y� �� W-f� w�� ��~�� �� �� -�� j--
� �� �̶ �W-� �� �� �:-�� j�-
� �� �� �� �Y6� � ���� �� : � # �� � #:!!� �� � :"� "�:#� ��#-�� j-���� �-�� j--�� tY-� �S�� �-�� j-�� �� ��� �-�� j-� p-� tY-� �S� }� �-� ��:$6%6&$� 6'-.+�":(� �$&�& :(� �� |-�� j-(*�� �-� �Y,S-� �� �-� �Y.S-� ��24�8-� ��2�8� �-� tY- �;�?�BS-� ��E&%`6&&'��d-� ��� `������`�������������� i  � )  �gh    �st   �uG   �vw   �xy   �z{   �|G   � = >   � }   � } 	  � } 
  � }   � !}   � #}   � %}   � '}   � )}   � +}   � -}   � /}   � A}   � U}   � W}   � Y}   � [}   � ]}   � _}   � a}   � c}   � e}   �~   �� )   ��G    ��� !  ��� "  ��G #  ��� $  �� ) %  �� ) &  �� ) '  ��} (�  :�  v=�=�L�L�U�U�^�^�=�=�=�l�l�{�{�����l�l�l������������������������������������������������������������������������������#�#�#�#��0�0�/�/�/�/�/�/�/�/�B�B�H�H�B�B�B�B�/�/�d�d�d�d�m�m�c�c�c�/�{�{�z�z�z�z�z�z�z�z�����������������z�z�������������������z���������������������������������������������������������������������#�#�)�)�#�#�#�#���E�E�E�E�N�N�D�D�D��\�\�[�[�[�[�[�[�[�[�n�n�t�t�n�n�n�n�[�[�������������������[�����������������������������������������������������������������������������������
�
���������&�&�&�&�/�/�%�%�%���=�P�P�P�P�5����������������������������������������������������������������������������� � � � ����������������,�,�,�,�j�t�t�w�w�s�s�s�s�j�j�������������������������������������������������������������������������������,�����������    j   #     *� 
�   i       gh   �  j  �    �и ֳ ػMY� tYOSY�SYQSYSSYUSYKSYWSY
� tY�MY� tYYSYDSY[SY]S�`SY�MY� tYYSYDSY[SYbS�`SY�MY� tYYSYDSY[SYdS�`SY�MY� tYYSYDSY[SY�S�`SY�MY� tYYSYDSY[SY�S�`SY�MY� tYYSYDSY[SY�S�`SY�MY� tYYSYDSY[SY�S�`SY�MY� tYYSYDSY[SY�S�`SY�MY� tYYSYDSY[SY�S�`SY	�MY� tYYSYDSY[SY�S�`SS�`�I�   i      �gh        ����  -  
SourceFile /CFIDE/services/pdf.cfc ,cfpdf2ecfc2041577581$funcREADSIGNATUREFIELDS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
SOURCEPATH  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / SERVICEUSERNAME 1 string 3 getVariable  (I)Lcoldfusion/runtime/Variable; 5 6 %coldfusion/runtime/ArgumentCollection 8
 9 7 3coldfusion/tagext/validation/CFTypeValidatorFactory ; STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; = >	 < ? _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; A B
  C SERVICEPASSWORD E SOURCE G PASSWORD I _setCurrentLineNo (I)V K L
 " M 	ISALLOWED O _get &(Ljava/lang/String;)Ljava/lang/Object; Q R
 " S 	isAllowed U java/lang/Object W _autoscalarize Y R
 " Z pdf \ 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; ^ _
 " ` ISALLOWEDIP b isAllowedIP d READFILEFROMURL f readFileFromURL h set (Ljava/lang/Object;)V j k coldfusion/runtime/Variable m
 n l 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; Y p
 " q java/lang/String s ACTION u readsignaturefields w _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V y z
 " { NAME } res  password � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �   � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 " � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 " � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 " � RES � metaData Ljava/lang/Object; � �	  � query � &coldfusion/runtime/AttributeCollection � name � access � remote � 
returntype � 
Parameters � TYPE � serviceusername � ([Ljava/lang/Object;)V  �
 � � servicepassword � source � getMetadata ()Ljava/lang/Object; this .Lcfpdf2ecfc2041577581$funcREADSIGNATUREFIELDS; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf13 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �    � �     � �  �   "     � Ȱ    �        � �    � �  �   !     x�    �        � �    � �  �         �    �        � �    � �  �   !     ʰ    �        � �    � �  �   7     � tY2SYFSYHSYJS�    �        � �    � �  �   	   �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:*24� :� @� D:*F4� :� @� D:*H4� :� @� D:*J4� :� @� D:-ܶ N-P� TV-� XY-2� [SY-F� [SY]S� aW-ݶ N-c� Te-� XY-2� [SY]S� aW-޶ N-g� Ti-� XY-H� [S� a� o
-� r� o-
� tYvSx� |-
� tYHS-� r� |-
� tY~S�� |-� N-�� ��� �Y� �� W-J� [�� ��~�� �� �� -� N--
� r� ��� �W-� �� �� �:-� N�-
� r� �� ��  �-Ķ [��    �   �   � � �    � � �   � � �   � � �   � � �   � � �   � � �   � - .   �  �   �  � 	  �  � 
  �  �   � 1 �   � E �   � G �   � I �   � � �  �  ~ _  � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �������"�"�"�"��7�7�7�7�+�D�D�C�C�C�C�C�C�C�C�V�V�\�\�V�V�V�V�C�C�x�x�x�x�����w�w�w�C� ��������������������������     �   #     *� 
�    �        � �    �   �   �     ��� �� �� �Y� XY�SYxSY�SY�SY�SY�SY�SY� XY� �Y� XY�SY4SY~SY�S� �SY� �Y� XY�SY4SY~SY�S� �SY� �Y� XY�SY4SY~SY�S� �SY� �Y� XY�SY4SY~SY�S� �SS� ݳ ȱ    �       � � �        ����  -6 
SourceFile /CFIDE/services/pdf.cfc #cfpdf2ecfc2041577581$funcMERGEFILES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   SOURCEINDEX  DESTINATION ! SOURCEPATHS # coldfusion/runtime/CfJspPage % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	 & ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/JspContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	 & 3 SERVICEUSERNAME 5 string 7 getVariable  (I)Lcoldfusion/runtime/Variable; 9 : %coldfusion/runtime/ArgumentCollection <
 = ; 3coldfusion/tagext/validation/CFTypeValidatorFactory ? STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; A B	 @ C _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; E F
  G SERVICEPASSWORD I SOURCE K KEEPBOOKMARK M _setCurrentLineNo (I)V O P
 & Q 	ISALLOWED S _get &(Ljava/lang/String;)Ljava/lang/Object; U V
 & W 	isAllowed Y java/lang/Object [ _autoscalarize ] V
 & ^ pdf ` 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; b c
 & d ISALLOWEDIP f isAllowedIP h   j set (Ljava/lang/Object;)V l m coldfusion/runtime/Variable o
 p n _String &(Ljava/lang/Object;)Ljava/lang/String; r s coldfusion/runtime/Cast u
 v t , x bindPageVariable P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; z {
 & | java/util/StringTokenizer ~ '(Ljava/lang/String;Ljava/lang/String;)V  �
  � 	nextToken ()Ljava/lang/String; � �
  � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; ] �
 & � READFILEFROMURL � readFileFromURL � concat &(Ljava/lang/String;)Ljava/lang/String; � � java/lang/String �
 � � CFLOOP � checkRequestTimeout (Ljava/lang/String;)V � �
 & � hasMoreTokens ()Z � �
  � GETTEMPFILEPATH � getTempFilePath � .pdf � ACTION � merge � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 & � ALLOWEXTRAATTRIBUTES � true � keepbookmark � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � �
 v � _boolean (Ljava/lang/Object;)Z � �
 v � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 & � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 v � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 & � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 & � 
GETHTTPURL � 
getHttpUrl � 
mergeFiles � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � access � remote � 
returntype  
Parameters TYPE NAME serviceusername ([Ljava/lang/Object;)V 

 � servicepassword source getMetadata ()Ljava/lang/Object; this %Lcfpdf2ecfc2041577581$funcMERGEFILES; LocalVariableTable Code getName 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t18 Ljava/lang/String; t19 t20 I t21 t22 Ljava/util/StringTokenizer; pdf3 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �    � �        "     � ��              �    !     �                       �              �    !     8�                 7     � �Y6SYJSYLSYNS�                � 
   �+� � :+� ,� :	+� :
+ � :+"� :+$� :-� *� 0:-� 4:*68� >� D� H:*J8� >� D� H:*L8� >� D� H:*N8� >� D� H:- �� R-T� XZ-� \Y-6� _SY-J� _SYaS� eW- �� R-g� Xi-� \Y-6� _SYaS� eWk� qk� q-L� _� w:y:6- +� }:� Y� �:� U� �:� q-� �� w- �� R-�� X�-� \Y-� �S� e� w� �y� �� q�� �`6� ����- �� R-�� X�-� \Y�S� e� q
-� �� q-
� �Y�S�� �-
� �YLS-� �� �-
� �Y"S-� �� �-
� �Y�S�� �- �� R-�� ��� �Y� �� W-N� _k� ��~�� �� �� - �� R--
� �� ��� �W-� �� �� �:- �� R�-
� �� �� �� � �- �� R-� X�-� \Y-� �S� e��      �   �    �    �! �   �"#   �$%   �&'   �( �   � 1 2   � )   � ) 	  � ) 
  � )   � !)   � #)   � 5)   � I)   � K)   � M)   �*+   �,+   �-.   �/)   �01   �23 4  N �   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �. �. �. �. �> �> �M �M �> �> �> �> �. �. �. �. �] �] �. �. �. �. �, �, �u � � �x �� �� �� �� �� �� �� �� �x �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �
 �
 � � �
 �
 �
 �
 �� �� �, �, �, �, �5 �5 �+ �+ �+ �� �x �U �U �U �U �; �v �v �� �� �v �v �v �v �v �       #     *� 
�             5     �     �ϸ ճ ׻ �Y� \Y�SY�SY�SY�SYSY8SYSY� \Y� �Y� \YSY8SYSY	S�SY� �Y� \YSY8SYSYS�SY� �Y� \YSY8SYSYS�SY� �Y� \YSY8SYSY�S�SS�� ��          �        ����  -{ 
SourceFile /CFIDE/services/pdf.cfc #cfpdf2ecfc2041577581$funcPROCESSDDX  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   INPUTFILESSTRUCT  OUTPUTFILESSTRUCT ! KVPAIR # MODIFIEDRESULT % VALUE ' KEY ) coldfusion/runtime/CfJspPage + pageContext #Lcoldfusion/runtime/NeoPageContext; - .	 , / getOut ()Ljavax/servlet/jsp/JspWriter; 1 2 javax/servlet/jsp/JspContext 4
 5 3 parent Ljavax/servlet/jsp/tagext/Tag; 7 8	 , 9 SERVICEUSERNAME ; string = getVariable  (I)Lcoldfusion/runtime/Variable; ? @ %coldfusion/runtime/ArgumentCollection B
 C A 3coldfusion/tagext/validation/CFTypeValidatorFactory E STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; G H	 F I _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; K L
  M SERVICEPASSWORD O 	DDXSTRING Q 
INPUTFILES S CFIDE.services.element[] U OUTPUTFILES W _setCurrentLineNo (I)V Y Z
 , [ 	ISALLOWED ] _get &(Ljava/lang/String;)Ljava/lang/Object; _ `
 , a 	isAllowed c java/lang/Object e _autoscalarize g `
 , h pdf j 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; l m
 , n ISALLOWEDIP p isAllowedIP r 	StructNew !()Lcoldfusion/util/FastHashtable; t u coldfusion/runtime/CFPage w
 x v set (Ljava/lang/Object;)V z { coldfusion/runtime/Variable }
 ~ |   � _List $(Ljava/lang/Object;)Ljava/util/List; � � coldfusion/runtime/Cast �
 � � java/util/List � size ()I � � � � bindPageVariable P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; � �
 , � get (I)Ljava/lang/Object; � � � � java/lang/String � READFILEFROMURL � readFileFromURL � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 , � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 , � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; g �
 , � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructInsert 6(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z � �
 x � GETTEMPFILEPATH � getTempFilePath � .pdf � ___IMPLICITARRYSTRUCTVAR0 � ACTION � 
processddx � DDXFILE � NAME � result � _ �
 , � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 , � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 , � RESULT � _validatingMap � �
 , � java/util/Map � entrySet ()Ljava/util/Set; � � � � java/util/Set � iterator ()Ljava/util/Iterator; � � � � java/util/Iterator � next ()Ljava/lang/Object; � � � � class$java$util$Map$Entry java.util.Map$Entry  �	  _cast 7(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
 � java/util/Map$Entry	 getKey �
 key SetVariable 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
 x 
StructFind 5(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;
 x 
successful _compare '(Ljava/lang/Object;Ljava/lang/String;)D
 , 
GETHTTPURL 
getHttpUrl  CFLOOP" checkRequestTimeout (Ljava/lang/String;)V$%
 ,& hasNext ()Z() �* CONVERTSTRUCTTOMAP, convertStructToMap. 
processDDX0 metaData Ljava/lang/Object;23	 4 &coldfusion/runtime/AttributeCollection6 name8 access: remote< 
returntype> 
Parameters@ TYPEB serviceusernameD ([Ljava/lang/Object;)V F
7G servicepasswordI 	ddxStringK 
inputfilesM outputfilesO getMetadata this %Lcfpdf2ecfc2041577581$funcPROCESSDDX; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t22 Ljava/util/List; t23 I t24 t25 t26 t27 t28 t29 t30 t31 pdf9 Lcoldfusion/tagext/lang/PDFTag; t34 Ljava/util/Iterator; LineNumberTable <clinit> 1       � �     �   23    Q � U   "     �5�   T       RS   VW U   "     1�   T       RS   X � U         �   T       RS   YW U   !     V�   T       RS   Z[ U   <     � �Y<SYPSYRSYTSYXS�   T       RS   \] U  	�  #  �+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :+(� :+*� :-� 0� 6:-� ::*<>� D� J� N:*P>� D� J� N:*R>� D� J� N:*TV� D� N:*XV� D� N:-i� \-^� bd-� fY-<� iSY-P� iSYkS� oW-j� \-q� bs-� fY-<� iSYkS� oW-k� \� y� -l� \� y� �� -T� i� �:66� � 6-$+� �:� �� � :� � q-� �Y(S-p� \-�� b�-� fY-� �Y(S� �S� o� �-q� \--� �� �-� �Y*S� �� �-� �Y(S� �� �W`6��o-X� i� �:66� � 6-$+� �:� �� � :� � d-� �Y(S-t� \-�� b�-� fY�S� o� �-u� \--� �� �-� �Y*S� �� �-� �Y(S� �� �W`6��|+�� :  � y� - � �Y�S�� �- � �Y�S-R� i� �- � �YTS-� �� �- � �YXS-� �� �- � �Y�SĶ �
- � ƶ -z� \� y� -� �	� �� �:!-{� \!�-
� �� �!� �!� � ��� -� i� �� � � � :"� �"� � ���
� :-�W-~� \--� i� �-� �� ��� -� ���� ]-�� \--� �� �-� �� �-�� \-� b!-� fY-�� \--� �� �-� �� ��S� o� �W� >-�� \--� �� �-� �� �-�� \--� i� �-� �� ��� �W#�'"�+ ��
-�� \--� b/-� fY-� �S� o��   T  ` #  �RS    �^_   �`3   �ab   �cd   �ef   �g3   � 7 8   � h   � h 	  � h 
  � h   � !h   � #h   � %h   � 'h   � )h   � ;h   � Oh   � Qh   � Sh   � Wh   �ij   �kl   �ml   �nl   �oh   �pj   �ql   �rl   �sl   �th   � �h    �uv !  �wx "y  � �  b �i �i �i �i �i �i �i �i �i �i �i �j �j �j �jjj �j �j �jkkkkkkl$l$l$l$ll �h*n,n,n,n,n*n*n1o1o1o1o�p�p�p�p�p�p�p�popop�q�q�q�q�q�q�q�q�q�q�q�q�q�q�o1o�s�s�s�s<t<tKtKt<t<t<t<t)t)t\u\u\u\ueueueueuwuwu[u[u[u[u�s�s�x�x�x�x�x�x�x�x�x�x�x�x�x�x�x�x�x�x�x�x�x�x�x�x�x�x�x�x�x�x�x�xxxxx�x�x	x�wzzzzzzz>{>{>{>{#{X|Z|Z|Z|Z|X|X|_}_}_}_}�}�}�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~����������������������������������������������-�-�-�-�6�6�6�6�G�G�G�G�P�P�P�P�F�F�,�,�,�,�%��m}_}w�w�����w�w�w�w�w�    U   #     *� 
�   T       RS   z  U  %    ʸ г �� г�7Y� fY9SY1SY;SY=SY?SYVSYASY� fY�7Y� fYCSY>SY�SYES�HSY�7Y� fYCSY>SY�SYJS�HSY�7Y� fYCSY>SY�SYLS�HSY�7Y� fYCSYVSY�SYNS�HSY�7Y� fYCSYVSY�SYPS�HSS�H�5�   T      RS        ����  - 
SourceFile /CFIDE/services/pdf.cfc $cfpdf2ecfc2041577581$funcDELETEPAGES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
SOURCEPATH  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / SERVICEUSERNAME 1 string 3 getVariable  (I)Lcoldfusion/runtime/Variable; 5 6 %coldfusion/runtime/ArgumentCollection 8
 9 7 3coldfusion/tagext/validation/CFTypeValidatorFactory ; STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; = >	 < ? _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; A B
  C SERVICEPASSWORD E SOURCE G PAGES I PASSWORD K _setCurrentLineNo (I)V M N
 " O 	ISALLOWED Q _get &(Ljava/lang/String;)Ljava/lang/Object; S T
 " U 	isAllowed W java/lang/Object Y _autoscalarize [ T
 " \ pdf ^ 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; ` a
 " b ISALLOWEDIP d isAllowedIP f READFILEFROMURL h readFileFromURL j set (Ljava/lang/Object;)V l m coldfusion/runtime/Variable o
 p n 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; [ r
 " s java/lang/String u ACTION w deletepages y _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V { |
 " } ALLOWEXTRAATTRIBUTES  true � password � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �   � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 " � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 " � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 " � 
GETHTTPURL � 
getHttpUrl � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � access � remote � 
returntype � 
Parameters � TYPE � NAME � serviceusername � ([Ljava/lang/Object;)V  �
 � � servicepassword � source � pages � getMetadata ()Ljava/lang/Object; this &Lcfpdf2ecfc2041577581$funcDELETEPAGES; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf1 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �    � �     � �  �   "     � ̰    �        � �    � �  �   !     z�    �        � �    � �  �         �    �        � �    � �  �   !     4�    �        � �    � �  �   <     � vY2SYFSYHSYJSYLS�    �        � �    � �  �  > 	   �+� � :+� ,� :	+� :
+ � :-� &� ,:-� 0:*24� :� @� D:*F4� :� @� D:*H4� :� @� D:*J4� :� @� D:*L4� :� @� D:-C� P-R� VX-� ZY-2� ]SY-F� ]SY_S� cW-D� P-e� Vg-� ZY-2� ]SY_S� cW-E� P-i� Vk-� ZY-H� ]S� c� q
-� t� q-
� vYxSz� ~-
� vYHS-� t� ~-
� vY�S�� ~-L� P-�� ��� �Y� �� W-L� ]�� ��~�� �� �� -M� P--
� t� ��� �W-� �� �� �:-O� P�-
� t� �� �� ę �-P� P-ƶ V�-� ZY-� tS� c��    �   �   � � �    � � �   � � �   � � �   � � �   � � �   �  �   � - .   �    �  	  �  
  �    � 1   � E   � G   � I   � K   �   � a   < � C � C � C � C � C � C � C � C � C � C � C � D � D � D � D � D � D � D � D � D � E � E � E � E � E � E � E � E � E � E
 G G G G G
 G! H! H! H! H H2 I2 I2 I2 I& IG JG JG JG J; JS LS LR LR LR LR LR LR LR LR Le Le Lk Lk Le Le Le Le LR LR L� M� M� M� M� M� M� M� M� MR L � B� O� O� O� O� O� P� P� P� P� P� P� P� P� P     �   #     *� 
�    �        � �      �       ��� �� �� �Y� ZY�SYzSY�SY�SY�SY4SY�SY� ZY� �Y� ZY�SY4SY�SY�S� �SY� �Y� ZY�SY4SY�SY�S� �SY� �Y� ZY�SY4SY�SY�S� �SY� �Y� ZY�SY4SY�SY�S� �SY� �Y� ZY�SY4SY�SY�S� �SS� � ̱    �       � � �        ����  - 
SourceFile /CFIDE/services/pdf.cfc %cfpdf2ecfc2041577581$funcEXTRACTPAGES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
SOURCEPATH  DESTINATION ! coldfusion/runtime/CfJspPage # pageContext #Lcoldfusion/runtime/NeoPageContext; % &	 $ ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
 - + parent Ljavax/servlet/jsp/tagext/Tag; / 0	 $ 1 SERVICEUSERNAME 3 string 5 getVariable  (I)Lcoldfusion/runtime/Variable; 7 8 %coldfusion/runtime/ArgumentCollection :
 ; 9 3coldfusion/tagext/validation/CFTypeValidatorFactory = STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; ? @	 > A _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; C D
  E SERVICEPASSWORD G SOURCE I PASSWORD K PAGES M KEEPBOOKMARK O _setCurrentLineNo (I)V Q R
 $ S 	ISALLOWED U _get &(Ljava/lang/String;)Ljava/lang/Object; W X
 $ Y 	isAllowed [ java/lang/Object ] _autoscalarize _ X
 $ ` pdf b 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; d e
 $ f ISALLOWEDIP h isAllowedIP j READFILEFROMURL l readFileFromURL n set (Ljava/lang/Object;)V p q coldfusion/runtime/Variable s
 t r GETTEMPFILEPATH v getTempFilePath x 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; _ z
 $ { java/lang/String } ACTION  merge � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 $ � ALLOWEXTRAATTRIBUTES � true � keepbookmark � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �   � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 $ � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � password � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 $ � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 $ � 
GETHTTPURL � 
getHttpUrl � extractPages � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � access � remote � 
returntype � 
Parameters � TYPE � NAME � serviceusername � ([Ljava/lang/Object;)V  �
 � � servicepassword � source � pages � getMetadata ()Ljava/lang/Object; this 'Lcfpdf2ecfc2041577581$funcEXTRACTPAGES; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf4 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �    � �     � �  �   "     � ذ    �        � �    � �  �   !     ԰    �        � �    � �  �         �    �        � �    � �  �   !     6�    �        � �    �   �   B     $� ~Y4SYHSYJSYLSYNSYPS�    �       $ � �     �  � 	   �+� � :+� ,� :	+� :
+ � :+"� :-� (� .:-� 2:*46� <� B� F:*H6� <� B� F:*J6� <� B� F:*L6� <� B� F:*N6� <� B� F:*P6� <� B� F:- ɶ T-V� Z\-� ^Y-4� aSY-H� aSYcS� gW- ʶ T-i� Zk-� ^Y-4� aSYcS� gW- ˶ T-m� Zo-� ^Y-J� aS� g� u- ̶ T-w� Zy-� ^Y-� |S� g� u
-� |� u-
� ~Y�S�� �-
� ~YJS-� |� �-
� ~Y"S-� |� �-
� ~Y�S�� �- Զ T-�� ��� �Y� �� W-P� a�� ��~�� �� �� - ն T--
� |� ��� �W- ֶ T-�� ��� �Y� �� W-L� a�� ��~�� �� �� - ׶ T--
� |� ��� �W-� �� �� �:- ٶ T�-
� |� �� �� Ι �- ڶ T-ж Z�-� ^Y-� |S� g��    �   �   � � �    �   � �   �   �	   �
   � �   � / 0   �    �  	  �  
  �    � !   � 3   � G   � I   � K   � M   � O   �   : �   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �( �1 �1 �@ �@ �1 �1 �1 �1 �( �M �O �O �O �O �M �d �d �d �d �X �u �u �u �u �i �� �� �� �� �~ �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �	 �	 � � �	 �	 �	 �	 �� �� �+ �+ �+ �+ �4 �4 �* �* �* �� � � �T �T �T �T �: �u �u �� �� �u �u �u �u �u �     �   #     *� 
�    �        � �      �  /    �� �� �� �Y� ^Y�SY�SY�SY�SY�SY6SY�SY� ^Y� �Y� ^Y�SY6SY�SY�S� �SY� �Y� ^Y�SY6SY�SY�S� �SY� �Y� ^Y�SY6SY�SY�S� �SY� �Y� ^Y�SY6SY�SY�S� �SY� �Y� ^Y�SY6SY�SY�S� �SY� �Y� ^Y�SY6SY�SY�S� �SS� �� ر    �       � �        ����  -� 
SourceFile /CFIDE/services/pdf.cfc +cfpdf2ecfc2041577581$funcMERGESPECIFICPAGES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ITEM  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   PDFPARAMATTRCOLL  DESTINATION ! I # coldfusion/runtime/CfJspPage % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	 & ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/JspContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	 & 3 SERVICEUSERNAME 5 string 7 getVariable  (I)Lcoldfusion/runtime/Variable; 9 : %coldfusion/runtime/ArgumentCollection <
 = ; 3coldfusion/tagext/validation/CFTypeValidatorFactory ? STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; A B	 @ C _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; E F
  G SERVICEPASSWORD I PDFPARAM K CFIDE.services.pdfparam[] M KEEPBOOKMARK O _setCurrentLineNo (I)V Q R
 & S 	ISALLOWED U _get &(Ljava/lang/String;)Ljava/lang/Object; W X
 & Y 	isAllowed [ java/lang/Object ] _autoscalarize _ X
 & ` pdf b 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; d e
 & f ISALLOWEDIP h isAllowedIP j ArrayNew (I)Ljava/util/List; l m coldfusion/runtime/CFPage o
 p n set (Ljava/lang/Object;)V r s coldfusion/runtime/Variable u
 v t 1 x   z pdfparam | 	IsDefined (Ljava/lang/String;)Z ~ 
 p � _List $(Ljava/lang/Object;)Ljava/util/List; � � coldfusion/runtime/Cast �
 � � java/util/List � size ()I � � � � bindPageVariable P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; � �
 & � get (I)Ljava/lang/Object; � � � � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; _ �
 & � 	StructNew !()Lcoldfusion/util/FastHashtable; � �
 p � _arraySetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 & � 
item.pages � _Object (Z)Ljava/lang/Object; � �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � java/lang/String � PAGES � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 & � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 & � _arrayGetAt C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
 & � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � pages � StructInsert 6(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z � �
 p � item.password � PASSWORD � password � item.source � SOURCE � source � READFILEFROMURL � readFileFromURL � 2(Lcoldfusion/runtime/Variable;I)Ljava/lang/Object; _ �
 & � _double (Ljava/lang/Object;)D � �
 � � GETTEMPFILEPATH � getTempFilePath � .pdf � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 & � coldfusion/tagext/lang/PDFTag � merge � 	setAction (Ljava/lang/String;)V � �
 � � cfpdf � destination � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 �  _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
 & setDestination �
 � 	hasEndTag (Z)V	
 coldfusion/tagext/GenericTag
 
doStartTag �
 � StructIsEmpty (Ljava/util/Map;)Z
 p (class$coldfusion$tagext$lang$PDFParamTag "coldfusion.tagext.lang.PDFParamTag �	  "coldfusion/tagext/lang/PDFParamTag attributecollection _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V 
! _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z#$
 &% doAfterBody' �
( doEndTag* �
 �+ doCatch (Ljava/lang/Throwable;)V-.
/ 	doFinally1 
2 
GETHTTPURL4 
getHttpUrl6 mergespecificpages8 metaData Ljava/lang/Object;:;	 < &coldfusion/runtime/AttributeCollection> name@ accessB remoteD 
returntypeF 
ParametersH TYPEJ NAMEL serviceusernameN ([Ljava/lang/Object;)V P
?Q servicepasswordS keepbookmarkU getMetadata ()Ljava/lang/Object; this -Lcfpdf2ecfc2041577581$funcMERGESPECIFICPAGES; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t18 Ljava/util/List; t19 t20 t21 t22 pdf8 Lcoldfusion/tagext/lang/PDFTag; mode8 t25 t26 t27 t28 t29 	pdfparam7 $Lcoldfusion/tagext/lang/PDFParamTag; t31 t32 t33 Ljava/lang/Throwable; t34 t35 LineNumberTable java/lang/Throwable� <clinit> 1       � �    �   :;    WX \   "     �=�   [       YZ   ]^ \   "     9�   [       YZ   _ � \         �   [       YZ   `^ \   !     8�   [       YZ   ab \   7     � �Y6SYJSYLSYPS�   [       YZ   cd \  	^  $  >+� � :+� ,� :	+� :
+ � :+"� :+$� :-� *� 0:-� 4:*68� >� D� H:*J8� >� D� H:*LN� >� H:*P8� >� D� H:-A� T-V� Z\-� ^Y-6� aSY-J� aSYcS� gW-B� T-i� Zk-� ^Y-6� aSYcS� gW-D� T-� q� wy� w
{� w-G� T-}� ���-L� a� �:66� � 6-+� �:��� � :� w�v-� ^Y-� �S-I� T� �� �-K� T-�� �� �Y� �� W-
� �Y�S� �{� ��~� �� �� /-L� T---� �� �� ��-
� �Y�S� �� �W-M� T-ƶ �� �Y� �� W-
� �Y�S� �{� ��~� �� �� /-N� T---� �� �� ��-
� �Y�S� �� �W-O� T-̶ �� �Y� �� W-
� �Y�S� �{� ��~� �� �� I-Q� T---� �� �� ��-Q� T-Ҷ Z�-� ^Y-
� �Y�S� �S� g� �W- � ׸ �X`6��j-W� T-ݶ Z�-� ^Y�S� g� w-� �� �� �:-X� T�� ���-� ������Y6� �-� �� �:66� � 6-+� �:� x� � :� w� Y-Z� T--
� �� ���� @-�� ��:-[� T-
� ��"��&� :� K�`6����)��Y�,� : � # �� � #:!!�0� � :"� "�:#�3�#-_� T-5� Z7-� ^Y-� �S� g�� ,�����������,����������� [  j $  >YZ    >ef   >g;   >hi   >jk   >lm   >n;   > 1 2   > o   > o 	  > o 
  > o   > !o   > #o   > 5o   > Io   > Ko   > Oo   >pq   >r #   >s #   >t #   >uo   >vw   >x #   >yq   >z #   >{ #   >| #   >}o   >~   >�;   >�;    >�� !  >�� "  >�; #�  ^ �  ; �A �A �A �A �A �A �A �A �A �A �A �B �B �B �B �B �B �B �B �B �@ �D �D �D �D �D �D �D �D �D �E �E �E �E �E �E �E �F �F �F �F �F �F �F
G
G	G	GHHHHYIYIgIgIgIgIPIPIuKuKtKtKtKtK�K�K�K�K�K�K�K�KtKtK�L�L�L�L�L�L�L�L�L�L�L�L�LtK�M�M�M�M�M�M�M�M�M�M�M�M�M�M�M�MNNNNNN"N"N$N$NNNN�M?O?O>O>O>O>OOOOO^O^OOOOOOOOO>O>O{Q{QxQxQxQxQ�Q�Q�Q�Q�Q�Q�Q�QwQwQwQ>O�S�S�S�S�S�S�StJ�HH	G�W�W�W�W�W�W�W�W�W�W�WXXXXXX7Y7Y7Y7Y}Z}Z}Z}Z|Z|Z|Z|Z|Z|Z�[�[�[�[�[|Z�Y7Y�X _ _1_1_ _ _ _ _ _    \   #     *� 
�   [       YZ   �  \       �� � �� ��?Y� ^YASY9SYCSYESYGSY8SYISY� ^Y�?Y� ^YKSY8SYMSYOS�RSY�?Y� ^YKSY8SYMSYTS�RSY�?Y� ^YKSYNSYMSY}S�RSY�?Y� ^YKSY8SYMSYVS�RSS�R�=�   [       �YZ        ����  -X 
SourceFile /CFIDE/services/pdf.cfc  cfpdf2ecfc2041577581$funcGETINFO  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
SOURCEPATH  PDFINFO ! coldfusion/runtime/CfJspPage # pageContext #Lcoldfusion/runtime/NeoPageContext; % &	 $ ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
 - + parent Ljavax/servlet/jsp/tagext/Tag; / 0	 $ 1 SERVICEUSERNAME 3 string 5 getVariable  (I)Lcoldfusion/runtime/Variable; 7 8 %coldfusion/runtime/ArgumentCollection :
 ; 9 3coldfusion/tagext/validation/CFTypeValidatorFactory = STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; ? @	 > A _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; C D
  E SERVICEPASSWORD G SOURCE I PASSWORD K _setCurrentLineNo (I)V M N
 $ O 	ISALLOWED Q _get &(Ljava/lang/String;)Ljava/lang/Object; S T
 $ U 	isAllowed W java/lang/Object Y _autoscalarize [ T
 $ \ pdf ^ 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; ` a
 $ b ISALLOWEDIP d isAllowedIP f READFILEFROMURL h readFileFromURL j set (Ljava/lang/Object;)V l m coldfusion/runtime/Variable o
 p n 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; [ r
 $ s java/lang/String u ACTION w getinfo y _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V { |
 $ } NAME  info � ALLOWEXTRAATTRIBUTES � true � password � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �   � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 $ � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 $ � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 $ � 	component � CFIDE.services.pdfinfo � CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; � �
 � � APPLICATION � INFO � _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
 $ � AUTHOR � CENTERWINDOWONSCREEN � CHANGINGDOCUMENT � 
COMMENTING � CONTENTEXTRACTION � COPYCONTENT � CREATED � DOCUMENTASSEMBLY � 
ENCRYPTION � FILEPATH � FILLINGFORM � FITTOWINDOW � HIDEMENUBAR � HIDETOOLBAR � HIDEWINDOWUI � KEYWORDS � LANGUAGE � MODIFIED � 
PAGELAYOUT � PRINTING � PRODUCER 
PROPERTIES SECURE SHOWDOCUMENTSOPTION SHOWWINDOWSOPTION	 SIGNING SUBJECT TITLE 
TOTALPAGES TRAPPED VERSION 	PAGESIZES (CONVERTARRAYOFSTRUCTTOPDFPAGEDETAILARRAY (convertArrayOfStructToPDFPageDetailArray PAGEROTATIONS metaData Ljava/lang/Object; 	 ! &coldfusion/runtime/AttributeCollection# name% access' remote) 
returntype+ 
Parameters- TYPE/ serviceusername1 ([Ljava/lang/Object;)V 3
$4 servicepassword6 source8 getMetadata ()Ljava/lang/Object; this "Lcfpdf2ecfc2041577581$funcGETINFO; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf2 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �        :; ?   "     �"�   >       <=   @A ?   !     z�   >       <=   BC ?         �   >       <=   DA ?   !     ̰   >       <=   EF ?   7     � vY4SYHSYJSYLS�   >       <=   GH ?  A    +� � :+� ,� :	+� :
+ � :+"� :-� (� .:-� 2:*46� <� B� F:*H6� <� B� F:*J6� <� B� F:*L6� <� B� F:-X� P-R� VX-� ZY-4� ]SY-H� ]SY_S� cW-Y� P-e� Vg-� ZY-4� ]SY_S� cW-Z� P-i� Vk-� ZY-J� ]S� c� q
-� t� q-
� vYxSz� ~-
� vYJS-� t� ~-
� vY�S�� ~-
� vY�S�� ~-b� P-�� ��� �Y� �� W-L� ]�� ��~�� �� �� -c� P--
� t� ��� �W-� �� �� �:-e� P�-
� t� �� �� ș �-g� P-�̶ ж q-� vY�S-�� vY�S� ض ~-� vY�S-�� vY�S� ض ~-� vY�S-�� vY�S� ض ~-� vY�S-�� vY�S� ض ~-� vY�S-�� vY�S� ض ~-� vY�S-�� vY�S� ض ~-� vY�S-�� vY�S� ض ~-� vY�S-�� vY�S� ض ~-� vY�S-�� vY�S� ض ~-� vY�S-�� vY�S� ض ~-� vY�S-�� vY�S� ض ~-� vY�S-�� vY�S� ض ~-� vY�S-�� vY�S� ض ~-� vY�S-�� vY�S� ض ~-� vY�S-�� vY�S� ض ~-� vY�S-�� vY�S� ض ~-� vY�S-�� vY�S� ض ~-� vY�S-�� vY�S� ض ~-� vY�S-�� vY�S� ض ~-� vY�S-�� vY�S� ض ~-� vY S-�� vY S� ض ~-� vYS-�� vYS� ض ~-� vYS-�� vYS� ض ~-� vYS-�� vYS� ض ~-� vYS-�� vYS� ض ~-� vY
S-�� vY
S� ض ~-� vYS-�� vYS� ض ~-� vYS-�� vYS� ض ~-� vYS-�� vYS� ض ~-� vYS-�� vYS� ض ~-� vYS-�� vYS� ض ~-� vYS-�� vYS� ض ~-� vYS- �� P-� V-� ZY-�� vYS� �SY-�� vYS� �S� c� ~-� t��   >   �   <=    IJ   K    LM   NO   PQ   R     / 0    S    S 	   S 
   S    !S    3S    GS    IS    KS   TU V  b   R � X � X � X � X � X � X � X � X � X � X � X � Y � Y � Y � Y � Y � Y � Y � Y � Y � Z � Z � Z � Z � Z � Z � Z � Z � Z � Z � \ \ \ \ \ � \ ] ] ] ]
 ]' ^' ^' ^' ^ ^< _< _< _< _0 _M `M `M `M `A `Y bY bX bX bX bX bX bX bX bX bk bk bq bq bk bk bk bk bX bX b� c� c� c� c� c� c� c� c� cX b � W� e� e� e� e� e� g� g� g� g� g� g� g� g� g� g� h� h� h� h� h i i i i� i) j) j) j) j jG kG kG kG k; ke le le le lY l� m� m� m� mw m� n� n� n� n� n� o� o� o� o� o� p� p� p� p� p� q� q� q� q� q r r r r r7 s7 s7 s7 s+ sU tU tU tU tI ts us us us ug u� v� v� v� v� v� w� w� w� w� w� x� x� x� x� x� y� y� y� y� y	 z	 z	 z	 z� z' {' {' {' { {F |F |F |F |9 |f }f }f }f }Y }� ~� ~� ~� ~y ~� � � � � � �� �� �� �� �� �� �� �� �� � � � � �� �& �& �& �& � �F �F �F �F �9 �f �f �f �f �Y �� �� �� �� �y �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� f � � � � �    ?   #     *� 
�   >       <=   W  ?   �     ��� �� ��$Y� ZY&SYzSY(SY*SY,SY�SY.SY� ZY�$Y� ZY0SY6SY�SY2S�5SY�$Y� ZY0SY6SY�SY7S�5SY�$Y� ZY0SY6SY�SY9S�5SY�$Y� ZY0SY6SY�SY�S�5SS�5�"�   >       �<=        ����  -4 
SourceFile /CFIDE/services/pdf.cfc cfpdf2ecfc2041577581$funcSIGN  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   KEYSTOREPATH  
SOURCEPATH ! DESTINATION # coldfusion/runtime/CfJspPage % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	 & ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/JspContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	 & 3 SERVICEUSERNAME 5 string 7 getVariable  (I)Lcoldfusion/runtime/Variable; 9 : %coldfusion/runtime/ArgumentCollection <
 = ; 3coldfusion/tagext/validation/CFTypeValidatorFactory ? STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; A B	 @ C _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; E F
  G SERVICEPASSWORD I SOURCE K PASSWORD M SIGNATUREFIELDNAME O KEYSTORE Q KEYSTOREPASSWORD S KEYALIAS U KEYPASSWORD W PAGES Y POSITION [ HEIGHT ] WIDTH _ AUTHOR a _setCurrentLineNo (I)V c d
 & e 	ISALLOWED g _get &(Ljava/lang/String;)Ljava/lang/Object; i j
 & k 	isAllowed m java/lang/Object o _autoscalarize q j
 & r pdf t 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; v w
 & x ISALLOWEDIP z isAllowedIP | READFILEFROMURL ~ readFileFromURL � set (Ljava/lang/Object;)V � � coldfusion/runtime/Variable �
 � � GETTEMPFILEPATH � getTempFilePath � 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; q �
 & � java/lang/String � ACTION � sign � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 & � password � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �   � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 & � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � signaturefieldname � coordinates � COORDINATES � 	unsignall � pages � author � keyalias � keypassword � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 & � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 & � 
GETHTTPURL � 
getHttpUrl � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � access � remote � 
returntype � 
Parameters � TYPE � NAME serviceusername ([Ljava/lang/Object;)V 
 � servicepassword source
 keystore keystorepassword position height width getMetadata ()Ljava/lang/Object; this Lcfpdf2ecfc2041577581$funcSIGN; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf15 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �    � �        "     � �                 !     ��                       �                  !     8�             !"    r     T� �Y6SYJSYLSYNSYPSYRSYTSYVSYXSY	ZSY
\SY^SY`SYbS�          T   #$   
� 	   �+� � :+� ,� :	+� :
+ � :+"� :+$� :-� *� 0:-� 4:*68� >� D� H:*J8� >� D� H:*L8� >� D� H:*N8� >� D� H:*P8� >� D� H:*R8� >� D� H:*T8� >� D� H:*V8� >� D� H:*X8� >� D� H:*Z8	� >� D� H:*\8
� >� D� H:*^8� >� D� H:*`8� >� D� H:*b8� >� D� H:-� f-h� ln-� pY-6� sSY-J� sSYuS� yW-� f-{� l}-� pY-6� sSYuS� yW-� f-� l�-� pY-L� sS� y� �-� f-� l�-� pY-R� sS� y� �-� f-�� l�-� pY-� �S� y� �
-� �� �-
� �Y�S�� �-
� �YLS-� �� �-
� �YRS-� �� �-
� �Y$S-� �� �-&� f-�� ��� �Y� �� W-N� s�� ��~�� �� �� -'� f--
� �� ��� �W-(� f-�� ��� �Y� �� W-P� s�� ��~�� �� �� -)� f--
� �� ��� �W-*� f-�� ��� �Y� �� W-�� s�� ��~�� �� �� -+� f--
� �� ��� �W-,� f-¶ ��� �Y� �� W-Z� s�� ��~�� �� �� --� f--
� �� �¶ �W-.� f-Ķ ��� �Y� �� W-b� s�� ��~�� �� �� -/� f--
� �� �Ķ �W-1� f-ƶ ��� �Y� �� W-V� s�� ��~�� �� �� -2� f--
� �� �ƶ �W-3� f-ȶ ��� �Y� �� W-X� s�� ��~�� �� �� -4� f--
� �� �ȶ �W-� �� �� �:-7� f�-
� �� �� �� � �-8� f-� l�-� pY-� �S� y��     $   �    �%&   �' �   �()   �*+   �,-   �. �   � 1 2   � /   � / 	  � / 
  � /   � !/   � #/   � 5/   � I/   � K/   � M/   � O/   � Q/   � S/   � U/   � W/   � Y/   � [/   � ]/   � _/   � a/   �01 2  �.  ]]lluu~~]]]�������������������������������������      1!1!1!1!%!B"B"B"B"6"W#W#W#W#K#l$l$l$l$`$}&}&|&|&|&|&|&|&|&|&�&�&�&�&�&�&�&�&|&|&�'�'�'�'�'�'�'�'�'|&�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�)�)�)�)))�)�)�)�(**********%*%*+*+*%*%*%*%***G+G+G+G+P+P+F+F+F+*^,^,],],],],],],],],p,p,v,v,p,p,p,p,],],�-�-�-�-�-�-�-�-�-],�.�.�.�.�.�.�.�.�.�.�.�.�.�.�.�.�.�.�.�.�/�/�/�/�/�/�/�/�/�.�1�1�1�1�1�1�1�1�1�111111111�1�1(2(2(2(21212'2'2'2�1?3?3>3>3>3>3>3>3>3>3Q3Q3W3W3Q3Q3Q3Q3>3>3s4s4s4s4|4|4r4r4r4>3]�7�7�7�7�7�8�8�8�8�8�8�8�8�8       #     *� 
�             3    k    M̸ ҳ Ի �Y� pY�SY�SY�SY�SY�SY8SY�SY� pY� �Y� pY SY8SYSYS�SY� �Y� pY SY8SYSY	S�SY� �Y� pY SY8SYSYS�SY� �Y� pY SY8SYSY�S�SY� �Y� pY SY8SYSY�S�SY� �Y� pY SY8SYSYS�SY� �Y� pY SY8SYSYS�SY� �Y� pY SY8SYSY�S�SY� �Y� pY SY8SYSY�S�SY	� �Y� pY SY8SYSY�S�SY
� �Y� pY SY8SYSYS�SY� �Y� pY SY8SYSYS�SY� �Y� pY SY8SYSYS�SY� �Y� pY SY8SYSY�S�SS�� �         M        ����  -> 
SourceFile /CFIDE/services/pdf.cfc  cfpdf2ecfc2041577581$funcSETINFO  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
INFOSTRUCT  
SOURCEPATH ! DESTINATION # KVPAIR % coldfusion/runtime/CfJspPage ' pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	 ( + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/JspContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	 ( 5 SERVICEUSERNAME 7 string 9 getVariable  (I)Lcoldfusion/runtime/Variable; ; < %coldfusion/runtime/ArgumentCollection >
 ? = 3coldfusion/tagext/validation/CFTypeValidatorFactory A STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; C D	 B E _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; G H
  I SERVICEPASSWORD K SOURCE M INFO O CFIDE.services.element[] Q PASSWORD S _setCurrentLineNo (I)V U V
 ( W 	ISALLOWED Y _get &(Ljava/lang/String;)Ljava/lang/Object; [ \
 ( ] 	isAllowed _ java/lang/Object a _autoscalarize c \
 ( d pdf f 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; h i
 ( j ISALLOWEDIP l isAllowedIP n READFILEFROMURL p readFileFromURL r set (Ljava/lang/Object;)V t u coldfusion/runtime/Variable w
 x v GETTEMPFILEPATH z getTempFilePath | 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; c ~
 (  	StructNew !()Lcoldfusion/util/FastHashtable; � � coldfusion/runtime/CFPage �
 � �   � _List $(Ljava/lang/Object;)Ljava/util/List; � � coldfusion/runtime/Cast �
 � � java/util/List � size ()I � � � � bindPageVariable P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; � �
 ( � get (I)Ljava/lang/Object; � � � � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � java/lang/String � KEY � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
 ( � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � VALUE � StructInsert 6(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z � �
 � � ACTION � setinfo � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 ( � ALLOWEXTRAATTRIBUTES � true � password � 	IsDefined (Ljava/lang/String;)Z � �
 � � _Object (Z)Ljava/lang/Object; � �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 ( � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 ( � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 ( � 
GETHTTPURL � 
getHttpUrl � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name access remote 
returntype 
Parameters	 TYPE NAME serviceusername ([Ljava/lang/Object;)V 
  servicepassword source info getMetadata ()Ljava/lang/Object; this "Lcfpdf2ecfc2041577581$funcSETINFO; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t20 Ljava/util/List; t21 I t22 t23 t24 pdf17 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �    � �        "     � ��              !    !     ��             " �          �             #!    !     :�             $%    <     � �Y8SYLSYNSYPSYTS�             &'   k 	   �+� � :+� ,� :	+� :
+ � :+"� :+$� :+&� :-� ,� 2:-� 6:*8:� @� F� J:*L:� @� F� J:*N:� @� F� J:*PR� @� J:*T:� @� F� J:-]� X-Z� ^`-� bY-8� eSY-L� eSYgS� kW-^� X-m� ^o-� bY-8� eSYgS� kW-_� X-q� ^s-� bY-N� eS� k� y-`� X-{� ^}-� bY-� �S� k� y-a� X� �� y�� y-P� e� �:66� � 6-&+� �:� X� � :� y� 9-e� X--� �� �-� �Y�S� �� �-� �Y�S� �� �W`6���
-� �� y-
� �Y�S�� �-
� �YNS-� �� �-
� �Y$S-� �� �-
� �YPS-� �� �-
� �Y�S�� �-o� X-�� ��� �Y� ̚ W-T� e�� ��~�� ȸ ̙ -p� X--
� �� ��� �W-� �� �� �:-r� X�-
� �� �� �� �� �-s� X-�� ^�-� bY-� �S� k��        �    �()   �* �   �+,   �-.   �/0   �1 �   � 3 4   � 2   � 2 	  � 2 
  � 2   � !2   � #2   � %2   � 72   � K2   � M2   � O2   � S2   �34   �56   �76   �86   �92   �:; <  ^ �  V �] �] �] �] �] �] �] �] �] �] �] �^ �^ �^ �^ �^ �^ �^ �^ �^ �_________ �_#`,`,`;`;`,`,`,`,`#`HaQaQaQaQaHa �\WcYcYcYcYcWcWc^d^d^d^d�e�e�e�e�e�e�e�e�e�e�e�e�e�e�d^d�h�h�h�h�h�h�i�i�i�i�ijjjj�jkkkkk2l2l2l2l&lGmGmGmGm;mToToSoSoSoSoSoSoSoSofofololofofofofoSoSo�p�p�p�p�p�p�p�p�pSo�g�r�r�r�r�r�s�s�s�s�s�s�s�s�s       #     *� 
�             =        ظ ޳ � Y� bYSY�SYSYSYSY:SY
SY� bY� Y� bYSY:SYSYS�SY� Y� bYSY:SYSYS�SY� Y� bYSY:SYSYS�SY� Y� bYSYRSYSYS�SY� Y� bYSY:SYSY�S�SS�� ��                 ����  - 
SourceFile /CFIDE/services/pdf.cfc  cfpdf2ecfc2041577581$funcARCHIVE  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
SOURCEPATH  DESTINATION ! coldfusion/runtime/CfJspPage # pageContext #Lcoldfusion/runtime/NeoPageContext; % &	 $ ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
 - + parent Ljavax/servlet/jsp/tagext/Tag; / 0	 $ 1 SERVICEUSERNAME 3 string 5 getVariable  (I)Lcoldfusion/runtime/Variable; 7 8 %coldfusion/runtime/ArgumentCollection :
 ; 9 3coldfusion/tagext/validation/CFTypeValidatorFactory = STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; ? @	 > A _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; C D
  E SERVICEPASSWORD G SOURCE I PASSWORD K _setCurrentLineNo (I)V M N
 $ O 	ISALLOWED Q _get &(Ljava/lang/String;)Ljava/lang/Object; S T
 $ U 	isAllowed W java/lang/Object Y _autoscalarize [ T
 $ \ pdf ^ 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; ` a
 $ b ISALLOWEDIP d isAllowedIP f READFILEFROMURL h readFileFromURL j set (Ljava/lang/Object;)V l m coldfusion/runtime/Variable o
 p n GETTEMPFILEPATH r getTempFilePath t 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; [ v
 $ w java/lang/String y ACTION { archive } _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V  �
 $ � password � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �   � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 $ � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 $ � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 $ � 
GETHTTPURL � 
getHttpUrl � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � access � remote � 
returntype � 
Parameters � TYPE � NAME � serviceusername � ([Ljava/lang/Object;)V  �
 � � servicepassword � source � getMetadata ()Ljava/lang/Object; this "Lcfpdf2ecfc2041577581$funcARCHIVE; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf11 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �    � �     � �  �   "     � ̰    �        � �    � �  �   !     ~�    �        � �    � �  �         �    �        � �    � �  �   !     6�    �        � �    � �  �   7     � zY4SYHSYJSYLS�    �        � �    � �  �  � 	   +� � :+� ,� :	+� :
+ � :+"� :-� (� .:-� 2:*46� <� B� F:*H6� <� B� F:*J6� <� B� F:*L6� <� B� F:-�� P-R� VX-� ZY-4� ]SY-H� ]SY_S� cW-�� P-e� Vg-� ZY-4� ]SY_S� cW-�� P-i� Vk-� ZY-J� ]S� c� q-�� P-s� Vu-� ZY-� xS� c� q
-� x� q-
� zY|S~� �-
� zYJS-� x� �-
� zY"S-� x� �-�� P-�� ��� �Y� �� W-L� ]�� ��~�� �� �� -�� P--
� x� ��� �W-� �� �� �:-�� P�-
� x� �� �� ę �-�� P-ƶ V�-� ZY-� xS� c��    �   �    � �     � �    � �    � �    � �    � �    � �    / 0     �     � 	    � 
    �    ! �    3 �    G �    I �    K �       � k  � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ������������'�)�)�)�)�'�>�>�>�>�2�O�O�O�O�C�d�d�d�d�X�u�u�t�t�t�t�t�t�t�t�����������������t�t�������������������t� ����������������������������     �   #     *� 
�    �        � �      �   �     ��� �� �� �Y� ZY�SY~SY�SY�SY�SY6SY�SY� ZY� �Y� ZY�SY6SY�SY�S� �SY� �Y� ZY�SY6SY�SY�S� �SY� �Y� ZY�SY6SY�SY�S� �SY� �Y� ZY�SY6SY�SY�S� �SS� � ̱    �       � � �        ����  - 
SourceFile /CFIDE/services/pdf.cfc (cfpdf2ecfc2041577581$funcREMOVEWATERMARK  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ATTRIBUTES  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
SOURCEPATH  DESTINATION ! coldfusion/runtime/CfJspPage # pageContext #Lcoldfusion/runtime/NeoPageContext; % &	 $ ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
 - + parent Ljavax/servlet/jsp/tagext/Tag; / 0	 $ 1 SERVICEUSERNAME 3 string 5 getVariable  (I)Lcoldfusion/runtime/Variable; 7 8 %coldfusion/runtime/ArgumentCollection :
 ; 9 3coldfusion/tagext/validation/CFTypeValidatorFactory = STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; ? @	 > A _validateArgWithValidator �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; C D
  E SERVICEPASSWORD G SOURCE I PAGES K PASSWORD M _setCurrentLineNo (I)V O P
 $ Q 	ISALLOWED S _get &(Ljava/lang/String;)Ljava/lang/Object; U V
 $ W 	isAllowed Y java/lang/Object [ _autoscalarize ] V
 $ ^ pdf ` 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; b c
 $ d ISALLOWEDIP f isAllowedIP h READFILEFROMURL j readFileFromURL l set (Ljava/lang/Object;)V n o coldfusion/runtime/Variable q
 r p GETTEMPFILEPATH t getTempFilePath v 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; ] x
 $ y java/lang/String { ACTION } removewatermark  _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 $ � ALLOWEXTRAATTRIBUTES � true � pages � 	IsDefined (Ljava/lang/String;)Z � � coldfusion/runtime/CFPage �
 � � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �   � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
 $ � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructDelete $(Ljava/util/Map;Ljava/lang/String;)Z � �
 � � password � #class$coldfusion$tagext$lang$PDFTag Ljava/lang/Class; coldfusion.tagext.lang.PDFTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
 $ � coldfusion/tagext/lang/PDFTag � attributecollection � _setArguments ((Ljava/lang/String;Ljava/lang/Object;Z)V � � coldfusion/tagext/GenericTag �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 $ � 
GETHTTPURL � 
getHttpUrl � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � access � remote � 
returntype � 
Parameters � TYPE � NAME � serviceusername � ([Ljava/lang/Object;)V  �
 � � servicepassword � source � getMetadata ()Ljava/lang/Object; this *Lcfpdf2ecfc2041577581$funcREMOVEWATERMARK; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; pdf16 Lcoldfusion/tagext/lang/PDFTag; LineNumberTable <clinit> 1       � �    � �     � �  �   "     � ԰    �        � �    � �  �   !     ��    �        � �    � �  �         �    �        � �    � �  �   !     6�    �        � �    � �  �   <     � |Y4SYHSYJSYLSYNS�    �        � �    � �  �  � 	   +� � :+� ,� :	+� :
+ � :+"� :-� (� .:-� 2:*46� <� B� F:*H6� <� B� F:*J6� <� B� F:*L6� <� B� F:*N6� <� B� F:-B� R-T� XZ-� \Y-4� _SY-H� _SYaS� eW-C� R-g� Xi-� \Y-4� _SYaS� eW-D� R-k� Xm-� \Y-J� _S� e� s-E� R-u� Xw-� \Y-� zS� e� s
-� z� s-
� |Y~S�� �-
� |YJS-� z� �-
� |Y"S-� z� �-
� |Y�S�� �-M� R-�� ��� �Y� �� W-L� _�� ��~�� �� �� -N� R--
� z� ��� �W-O� R-�� ��� �Y� �� W-N� _�� ��~�� �� �� -P� R--
� z� ��� �W-� �� �� �:-R� R�-
� z� �� �� ̙ �-S� R-ζ X�-� \Y-� zS� e��    �   �    � �     � �    � �              �    / 0         	    
       !    3    G    I    K    M   	 
  : �  ; �B �B �B �B �B �B �B �B �B �B �B �C �C �C �C �C �C �C �C �C �D �D �DDD �D �D �D �D �DEEE-E-EEEEEE:G<G<G<G<G:GQHQHQHQHEHbIbIbIbIVIwJwJwJwJkJ�K�K�K�K�K�M�M�M�M�M�M�M�M�M�M�M�M�M�M�M�M�M�M�M�M�N�N�N�N�N�N�N�N�N�M�O�O�O�O�O�O�O�O�O�O�O�O�O�O�O�O�O�O�O�OPPPP!P!PPPP�O �ABRBRBRBR'RcScSrSrScScScScScS     �   #     *� 
�    �        � �      �       ��� �� �� �Y� \Y�SY�SY�SY�SY�SY6SY�SY� \Y� �Y� \Y�SY6SY�SY�S� �SY� �Y� \Y�SY6SY�SY�S� �SY� �Y� \Y�SY6SY�SY�S� �SY� �Y� \Y�SY6SY�SY�S� �SY� �Y� \Y�SY6SY�SY�S� �SS� � Ա    �       � � �        