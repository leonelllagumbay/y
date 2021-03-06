����  -U 
SourceFile +/CFIDE/administrator/security/pstrength.cfm cfpstrength2ecfm1692868620  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   PASSWORD_STRONG Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   PASSWORD_VERY_WEAK   	   PASSWORD_WEAK   	    PASSWORD_VERY_STRONG " " 	  $ PASSWORD_TOO_SHORT & & 	  ( PASSWORD_UNSAFE * * 	  , PASSWORD_MEDIUM . . 	  0 com.macromedia.SourceModTime  R^�j pageContext #Lcoldfusion/runtime/NeoPageContext; 5 6	  7 getOut ()Ljavax/servlet/jsp/JspWriter; 9 : javax/servlet/jsp/JspContext <
 = ; parent Ljavax/servlet/jsp/tagext/Tag; ? @	  A (class$coldfusion$tagext$lang$ImportedTag Ljava/lang/Class; "coldfusion.tagext.lang.ImportedTag E forName %(Ljava/lang/String;)Ljava/lang/Class; G H java/lang/Class J
 K I C D	  M _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; O P
  Q "coldfusion/tagext/lang/ImportedTag S _setCurrentLineNo (I)V U V
  W l10n Y 
../cftags/ [ admin ] setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V _ `
 T a &coldfusion/runtime/AttributeCollection c java/lang/Object e id g password_very_weak i var k ([Ljava/lang/Object;)V  m
 d n setAttributecollection (Ljava/util/Map;)V p q  coldfusion/tagext/lang/ModuleTag s
 t r 	hasEndTag (Z)V v w coldfusion/tagext/GenericTag y
 z x 
doStartTag ()I | }
 t ~ 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � 	Very Weak � write (Ljava/lang/String;)V � � java/io/Writer �
 � � doAfterBody � }
 t � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � doEndTag � } #javax/servlet/jsp/tagext/TagSupport �
 � � doCatch (Ljava/lang/Throwable;)V � �
 t � 	doFinally � 
 t � password_weak � Weak � password_medium � Medium � password_strong � Strong � password_very_strong � Very Strong � password_unsafe � Unsafe Password � password_too_short � 	Too Short �'

<script type="text/javascript">
/* jQuery Password Strength Plugin (pstrength) - A jQuery plugin to provide accessibility functions
 * Author: Tane Piper (digitalspaghetti@gmail.com) 
 * Website: http://digitalspaghetti.me.uk
 * Licensed under the MIT License: http://www.opensource.org/licenses/mit-license.php
 * This code uses a modified version of Steve Moitozo's algorithm (http://www.geekwisdom.com/dyn/passwdmeter)
 */
(function($){
	$.extend($.fn, {
		pstrength : function(options) {
			var options = $.extend({
				verdects:	[" � $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag � � D	  � coldfusion/tagext/io/OutputTag �
 � ~ _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � �
 � � coldfusion/tagext/QueryLoop �
 � �
 � �
 � � "," ��"],
				colors: 	["#f00","#c06", "#f60","#3c0","#3f0"],
				scores: 	[10,15,30,40],
				common:		["password","sex","god","123456","123","liverpool","letmein","qwerty","monkey"],
				minchar:	8
			},options);		
			return this.each(function(){
				var infoarea = $(this).attr('id');
				$(this).after('<div class="pstrength-info" id="' + infoarea + '_text"></div>');
				$(this).after('<div class="pstrength-bar" id="' + infoarea + '_bar" style="font-size: 1px; height: 2px; width: 0px;"></div>');
				$(this).keyup(function(){				
					$.fn.runPassword($(this).val(), infoarea, options);
				});
			});
		},
		runPassword : function (password, infoarea, options){
			// Check password
			nPerc = $.fn.checkPassword(password, options);
			// Get controls
	    	var ctlBar = "#" + infoarea + "_bar"; 
	    	var ctlText = "#" + infoarea + "_text";		
			// Color and text
			if (nPerc == -200) {
				strColor = '#f00';
				strText = ' � �';
				$(ctlBar).css({width: "0%"});
			}		
			else if (nPerc < 0 && nPerc > -199) {
				strColor = '#ccc';
				strText = ' �l';
				$(ctlBar).css({width: "1%"});
			}
			else if(nPerc <= options.scores[0])
			{
		   		strColor = options.colors[0];
				strText = options.verdects[0];
				$(ctlBar).css({width: "1%"});
			}
			else if (nPerc > options.scores[0] && nPerc <= options.scores[1])
			{
		   		strColor = options.colors[1];
				strText = options.verdects[1];
				$(ctlBar).css({width: "25%"});
			}
			else if (nPerc > options.scores[1] && nPerc <= options.scores[2])
			{
			   	strColor = options.colors[2];
				strText = options.verdects[2];
				$(ctlBar).css({width: "50%"});
			}
			else if (nPerc > options.scores[2] && nPerc <= options.scores[3])
			{
			   	strColor = options.colors[3];
				strText = options.verdects[3];
				$(ctlBar).css({width: "75%"});
			}
			else
			{
			   	strColor = options.colors[4];
				strText = options.verdects[4];
				$(ctlBar).css({width: "99%"});
			}
			$(ctlBar).css({backgroundColor: strColor});
			$(ctlText).html("<span style='color: " + strColor + ";'>" + strText + "</span>");
		},
		checkPassword : function(password, options)
		{
			var intScore = 0;
			var strVerdict = options.verdects[0];	
			// PASSWORD LENGTH
			if (password.length < options.minchar)                         // Password too short
			{
				intScore = (intScore - 100)
			}
			else if (password.length >= options.minchar && password.length <= (options.minchar + 2)) // Password Short
			{
				intScore = (intScore + 6)
			}
			else if (password.length >= (options.minchar + 3) && password.length <= (options.minchar + 4))// Password Medium
			{
				intScore = (intScore + 12)
			}
			else if (password.length >= (options.minchar + 5))                    // Password Large
			{
				intScore = (intScore + 18)
			}
			if (password.match(/[a-z]/))                              // [verified] at least one lower case letter
			{
				intScore = (intScore + 1)
			}
			if (password.match(/[A-Z]/))                              // [verified] at least one upper case letter
			{
				intScore = (intScore + 5)
			}
			// NUMBERS
			if (password.match(/\d+/))                                 // [verified] at least one number
			{
				intScore = (intScore + 5)
			}
			if (password.match(/(.*[0-9].*[0-9].*[0-9])/))             // [verified] at least three numbers
			{
				intScore = (intScore + 7)
			}
			// SPECIAL CHAR
			if (password.match(/.[!,@,#,$,%,^,&,*,?,_,~]/))            // [verified] at least one special character
			{
				intScore = (intScore + 5)
			}
			// [verified] at least two special characters
			if (password.match(/(.*[!,@,#,$,%,^,&,*,?,_,~].*[!,@,#,$,%,^,&,*,?,_,~])/))
			{
				intScore = (intScore + 7)
			}
			// COMBOS
			if (password.match(/([a-z].*[A-Z])|([A-Z].*[a-z])/))        // [verified] both upper and lower case
			{
				intScore = (intScore + 2)
			}
			if (password.match(/([a-zA-Z])/) && password.match(/([0-9])/)) // [verified] both letters and numbers
			{
				intScore = (intScore + 3)
			}
		 	// [verified] letters, numbers, and special characters
			if (password.match(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/))
			{
				intScore = (intScore + 3)
			}
			for (var i=0; i < options.common.length; i++) {
				if (password.toLowerCase() == options.common[i]) {
					intScore = -200;
				}
			}
			return intScore;
		}
	});
})(jQuery);
</script> � metaData Ljava/lang/Object; � �	  � getMetadata ()Ljava/lang/Object; this Lcfpstrength2ecfm1692868620; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage out Ljavax/servlet/jsp/JspWriter; value module0 $Lcoldfusion/tagext/lang/ImportedTag; mode0 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 module1 mode1 t14 t15 t16 t17 t18 t19 module2 mode2 t22 t23 t24 t25 t26 t27 module3 mode3 t30 t31 t32 t33 t34 t35 module4 mode4 t38 t39 t40 t41 t42 t43 module5 mode5 t46 t47 t48 t49 t50 t51 module6 mode6 t54 t55 t56 t57 t58 t59 output7  Lcoldfusion/tagext/io/OutputTag; mode7 t62 t63 t64 t65 output8 mode8 t68 t69 t70 t71 output9 mode9 t74 t75 t76 t77 output10 mode10 t80 t81 t82 t83 output11 mode11 t86 t87 t88 t89 output12 mode12 t92 t93 t94 t95 output13 mode13 t98 t99 t100 t101 LineNumberTable java/lang/ThrowableR <clinit> 1     
                 "     &     *     .     C D    � D    � �     � �  �   "     � ܰ    �        � �       �   �     [*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )**++,� � -**/+,� � 1�    �        [ � �     [ � �    [ � �   � �  �    f  �*� 8� >L*� BN*� N-� R� T:*� XZ\^� b� dY� fYhSYjSYlSYjS� o� u� {� Y6� 5*+� �L+�� �� ����� � :� �:*+� �L�� �� :� #�� � #:		� �� � :
� 
�:� ��*� N-� R� T:*� XZ\^� b� dY� fYhSY�SYlSY�S� o� u� {� Y6� 5*+� �L+�� �� ����� � :� �:*+� �L�� �� :� #�� � #:� �� � :� �:� ��*� N-� R� T:*� XZ\^� b� dY� fYhSY�SYlSY�S� o� u� {� Y6� 5*+� �L+�� �� ����� � :� �:*+� �L�� �� :� #�� � #:� �� � :� �:� ��*� N-� R� T:*� XZ\^� b� dY� fYhSY�SYlSY�S� o� u� {� Y6� 5*+� �L+�� �� ����� � :� �:*+� �L�� �� : � # �� � #:!!� �� � :"� "�:#� ��#*� N-� R� T:$*� X$Z\^� b$� dY� fYhSY�SYlSY�S� o� u$� {$� Y6%� 5*$%+� �L+�� �$� ����� � :&� &�:'*%+� �L�'$� �� :(� #(�� � #:)$)� �� � :*� *�:+$� ��+*� N-� R� T:,*� X,Z\^� b,� dY� fYhSY�SYlSY�S� o� u,� {,� Y6-� 5*,-+� �L+�� �,� ����� � :.� .�:/*-+� �L�/,� �� :0� #0�� � #:1,1� �� � :2� 2�:3,� ��3*� N-� R� T:4*	� X4Z\^� b4� dY� fYhSY�SYlSY�S� o� u4� {4� Y65� 5*45+� �L+�� �4� ����� � :6� 6�:7*5+� �L�74� �� :8� #8�� � #:949� �� � ::� :�:;4� ��;+�� �*� �-� R� �:<*� X<� {<� �Y6=� +**� � ĸ ʶ �<� ˚��<� �� :>� #>�� � #:?<?� Ϩ � :@� @�:A<� ЩA+Ҷ �*� �-� R� �:B*� XB� {B� �Y6C� +**� !� ĸ ʶ �B� ˚��B� �� :D� #D�� � #:EBE� Ϩ � :F� F�:GB� ЩG+Ҷ �*� �	-� R� �:H*� XH� {H� �Y6I� +**� 1� ĸ ʶ �H� ˚��H� �� :J� #J�� � #:KHK� Ϩ � :L� L�:MH� ЩM+Ҷ �*� �
-� R� �:N*� XN� {N� �Y6O� +**� � ĸ ʶ �N� ˚��N� �� :P� #P�� � #:QNQ� Ϩ � :R� R�:SN� ЩS+Ҷ �*� �-� R� �:T*� XT� {T� �Y6U� +**� %� ĸ ʶ �T� ˚��T� �� :V� #V�� � #:WTW� Ϩ � :X� X�:YT� ЩY+Զ �*� �-� R� �:Z*.� XZ� {Z� �Y6[� +**� -� ĸ ʶ �Z� ˚��Z� �� :\� #\�� � #:]Z]� Ϩ � :^� ^�:_Z� Щ_+ֶ �*� �-� R� �:`*3� X`� {`� �Y6a� +**� )� ĸ ʶ �`� ˚��`� �� :b� #b�� � #:c`c� Ϩ � :d� d�:e`� Щe+ض �� b a | S  � S V � �S � � �S V � �S � � �S � � �S � � �S:=S=B=S]iScfiS]xScfxSiuxSx}xS���S� �S�'S!$'S�6S!$6S'36S6;6S���S���S���S���S���S���S���S���S[vySy~ySP��S���SP��S���S���S���S58S8=8SXdS^adSXsS^asSdpsSsxsS���S���S�$S!$S�3S!3S$03S383Se��S���Se��S���S���S���S�SS�)S)S&)S).)S[��S���S[��S���S���S���S�S
S�S
SS$SQ�S���SQ�S���S���S���S��S S��S SSSGu�S{~�SGu�S{~�S���S���S  �  � f  � � �    � � �   � � �   � ? @   � � �   � � �   � � �   � � �   � � �   � � � 	  � � � 
  � � �   � � �   � � �   � � �   � � �   � � �   � � �   � � �   � � �   � � �   � � �   �  �   � �   � �   � �   � �   � �   � �   � �   � �   �	 �   �
 �    � � !  � � "  � � #  � � $  � � %  � � &  � � '  � � (  � � )  � � *  � � +  � � ,  � � -  � � .  � � /  � � 0  � � 1  � � 2  � � 3  � � 4  � � 5  �  � 6  �! � 7  �" � 8  �# � 9  �$ � :  �% � ;  �&' <  �( � =  �) � >  �* � ?  �+ � @  �, � A  �-' B  �. � C  �/ � D  �0 � E  �1 � F  �2 � G  �3' H  �4 � I  �5 � J  �6 � K  �7 � L  �8 � M  �9' N  �: � O  �; � P  �< � Q  �= � R  �> � S  �?' T  �@ � U  �A � V  �B � W  �C � X  �D � Y  �E' Z  �F � [  �G � \  �H � ]  �I � ^  �J � _  �K' `  �L � a  �M � b  �N � c  �O � d  �P � eQ  > O   =  =  G  G    �  �    � � � � � � x x � � G 7 7 A A  � �     � � 	� 	� 	� 	� 	q q q q p J � � � � � � g g g g f @ � � � � � � ] ] ] ] \ 6 � .� .� .� .� .� .S 3S 3S 3S 3R 3, 3        �   #     *� 
�    �        � �   T   �   =     F� L� N�� L� �� dY� f� o� ܱ    �        � �         2    3