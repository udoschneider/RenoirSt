"
A CssDeclarationBlockTest is a test class for testing the behavior of CssDeclarationBlock
"
Class {
	#name : #CssDeclarationBlockTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests'
}

{ #category : #private }
CssDeclarationBlockTest >> assert: aBlockClosure rendersProperty: aPropertyName withValue: anExpectedValue [

	| style |
	style := CssDeclarationBlock new.
	aBlockClosure value: style.

	self assert: style printString equals: ('{<n><t><1s>: <2s>;<n>}' expandMacrosWith: aPropertyName with: anExpectedValue)
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintInlined [

	| style |
	style := CssDeclarationBlock new.
	style
		borderWidth: CssConstants thin;
		borderStyle: CssConstants dashed;
		borderRadius: 4 px.

	self
		assert: (String streamContents: [ :stream | style printInlinedOn: stream ])
		equals: 'border-width: thin;border-style: dashed;border-radius: 4px;'
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfBackgroundProperties [
	self
		assert: [ :style | style background: CssSVGColors blue ] rendersProperty: 'background' withValue: 'blue';
		assert: [ :style | style backgroundAttachment: CssConstants scroll ]
			rendersProperty: 'background-attachment'
			withValue: 'scroll';
		assert: [ :style | style backgroundColor: CssSVGColors red ] rendersProperty: 'background-color' withValue: 'red';
		assert: [ :style | style backgroundImage: 'logo.png' ] rendersProperty: 'background-image' withValue: 'logo.png';
		assert: [ :style |  style backgroundPosition: {0 percent. 0 percent} ]
			rendersProperty: 'background-position'
			withValue: '0% 0%';
		assert: [ :style | style backgroundRepeat: CssConstants repeat ]
			rendersProperty: 'background-repeat'
			withValue: 'repeat';
		assert: [ :style | style backgroundSize: CssConstants contain ]
			rendersProperty: 'background-size'
			withValue: 'contain';
		assert: [ :style | style backgroundClip: CssConstants borderBox ]
			rendersProperty: 'background-clip'
			withValue: 'border-box';
		assert: [ :style | style backgroundOrigin: CssConstants borderBox ]
			rendersProperty: 'background-origin'
			withValue: 'border-box'
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfBorderImageProperties [

	self
		assert: [ :style | style borderImageSource: CssConstants none ] rendersProperty: 'border-image-source' withValue: 'none';
		assert: [ :style | style borderImageSlice: 50 percent ] rendersProperty: 'border-image-slice' withValue: '50%';
		assert: [ :style | style borderImageWidth: 2 px ] rendersProperty: 'border-image-width' withValue: '2px';
		assert: [ :style | style borderImageOutset: 3 px ] rendersProperty: 'border-image-outset' withValue: '3px';
		assert: [ :style | style borderImageRepeat: CssConstants round ] rendersProperty: 'border-image-repeat' withValue: 'round';
		assert: [ :style | style borderImage: CssConstants none ] rendersProperty: 'border-image' withValue: 'none';
		assert:
				[ :style | 
			style
				boxShadow:
					(CssBoxShadow
						horizontalOffset: 10 px
						verticalOffset: 10 px
						blurRadius: 10 px
						spreadDistance: 35 px
						color: CssSVGColors blue) ]
			rendersProperty: 'box-shadow'
			withValue: '10px 10px 10px 35px blue'
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfBorderProperties [

	self
		assert: [ :style | style border: { CssConstants thin. CssConstants dashed. CssSVGColors royalBlue }  ] rendersProperty: 'border' withValue: 'thin dashed royalblue';
		assert: [ :style | style borderBottom: { CssConstants thin. CssConstants dashed. CssSVGColors royalBlue }  ] rendersProperty: 'border-bottom' withValue: 'thin dashed royalblue';
		assert: [ :style | style borderTop: { CssConstants thin. CssConstants dashed. CssSVGColors royalBlue }  ] rendersProperty: 'border-top' withValue: 'thin dashed royalblue';
		assert: [ :style | style borderRight: { CssConstants thin. CssConstants dashed. CssSVGColors royalBlue }  ] rendersProperty: 'border-right' withValue: 'thin dashed royalblue';
		assert: [ :style | style borderLeft: { CssConstants thin. CssConstants dashed. CssSVGColors royalBlue }  ] rendersProperty: 'border-left' withValue: 'thin dashed royalblue';
		assert: [ :style | style borderColor: CssSVGColors royalBlue ] rendersProperty: 'border-color' withValue: 'royalblue';
		assert: [ :style | style borderWidth:  CssConstants thin. ] rendersProperty: 'border-width' withValue: 'thin';
		assert: [ :style | style borderStyle: CssConstants dashed. ] rendersProperty: 'border-style' withValue: 'dashed';
		assert: [ :style | style borderTopColor: CssSVGColors royalBlue ] rendersProperty: 'border-top-color' withValue: 'royalblue';
		assert: [ :style | style borderTopWidth:  CssConstants thin. ] rendersProperty: 'border-top-width' withValue: 'thin';
		assert: [ :style | style borderTopStyle: CssConstants dashed. ] rendersProperty: 'border-top-style' withValue: 'dashed';
		assert: [ :style | style borderBottomColor: CssSVGColors royalBlue ] rendersProperty: 'border-bottom-color' withValue: 'royalblue';
		assert: [ :style | style borderBottomWidth:  CssConstants thin. ] rendersProperty: 'border-bottom-width' withValue: 'thin';
		assert: [ :style | style borderBottomStyle: CssConstants dashed. ] rendersProperty: 'border-bottom-style' withValue: 'dashed';
		assert: [ :style | style borderLeftColor: CssSVGColors royalBlue ] rendersProperty: 'border-left-color' withValue: 'royalblue';
		assert: [ :style | style borderLeftWidth:  CssConstants thin. ] rendersProperty: 'border-left-width' withValue: 'thin';
		assert: [ :style | style borderLeftStyle: CssConstants dashed. ] rendersProperty: 'border-left-style' withValue: 'dashed';
		assert: [ :style | style borderRightColor: CssSVGColors royalBlue ] rendersProperty: 'border-right-color' withValue: 'royalblue';
		assert: [ :style | style borderRightWidth:  CssConstants thin. ] rendersProperty: 'border-right-width' withValue: 'thin';
		assert: [ :style | style borderRightStyle: CssConstants dashed. ] rendersProperty: 'border-right-style' withValue: 'dashed';
		assert: [ :style | style borderRadius: 4 px ] rendersProperty: 'border-radius' withValue: '4px';
		assert: [ :style | style borderTopLeftRadius: 1 px] rendersProperty: 'border-top-left-radius' withValue: '1px';
		assert: [ :style | style borderBottomLeftRadius: 1 px] rendersProperty: 'border-bottom-left-radius' withValue: '1px';
		assert: [ :style | style borderTopRightRadius: 1 px] rendersProperty: 'border-top-right-radius' withValue: '1px';
		assert: [ :style | style borderBottomRightRadius: 1 px] rendersProperty: 'border-bottom-right-radius' withValue: '1px'
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfBoxProperties [

	self 
		assert: [ :style | style height: 5 cm ] rendersProperty: 'height' withValue: '5cm';
		assert: [ :style | style maxHeight: 5 cm ] rendersProperty: 'max-height' withValue: '5cm';
		assert: [ :style | style minHeight: 5 cm ] rendersProperty: 'min-height' withValue: '5cm';
		assert: [ :style | style width: 5 cm ] rendersProperty: 'width' withValue: '5cm';
		assert: [ :style | style maxWidth: 5 cm ] rendersProperty: 'max-width' withValue: '5cm';
		assert: [ :style | style minWidth: 5 cm ] rendersProperty: 'min-width' withValue: '5cm';
		assert: [ :style | style lineHeight: 1.2 ] rendersProperty: 'line-height' withValue: '1.2';
		assert: [ :style | style verticalAlign: CssConstants middle ] rendersProperty: 'vertical-align' withValue: 'middle';
		assert: [ :style | style resize: CssConstants none ] rendersProperty: 'resize' withValue: 'none'
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfColorProperties [

	self
		assert: [ :style | style opacity: 0 ] rendersProperty: 'opacity' withValue: '0';
		assert: [ :style | style color: CssSVGColors yellow ] rendersProperty: 'color' withValue: 'yellow'
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfEmptyDeclarationBlock [

	self assert: CssDeclarationBlock new printString equals: '{<n>}' expandMacros
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfFontProperties [

	self 
		assert: [ :style | style font: 14 pt ] rendersProperty: 'font' withValue: '14pt';
		assert: [ :style | style fontSize: 14 pt ] rendersProperty: 'font-size' withValue: '14pt';
		assert: [ :style | style fontSizeAdjust: 0.5 ] rendersProperty: 'font-size-adjust' withValue: '0.5';
		assert: [ :style | style fontFamily: CssFontConstants serif ] rendersProperty: 'font-family' withValue: 'serif';
		assert: [ :style | style fontStyle: CssConstants italic ] rendersProperty: 'font-style' withValue: 'italic';
		assert: [ :style | style fontVariant: CssConstants smallCaps ] rendersProperty: 'font-variant' withValue: 'small-caps';
		assert: [ :style | style fontWeight: CssConstants bolder ] rendersProperty: 'font-weight' withValue: 'bolder';
		assert: [ :style | style color: CssSVGColors goldenrod ] rendersProperty: 'color' withValue: 'goldenrod';
		assert: [ :style | style fontStretch: CssFontConstants ultraCondensed ] rendersProperty: 'font-stretch' withValue: 'ultra-condensed';
		assert: [ :style | style fontSynthesis: {CssFontConstants weight .CssFontConstants style}] rendersProperty: 'font-synthesis' withValue: 'weight style';
		assert: [ :style | style fontKerning: CssConstants auto ] rendersProperty: 'font-kerning' withValue: 'auto'
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfGeneratedContentProperties [

	self 
		assert: [ :style | style content: '"hello"' ] rendersProperty: 'content' withValue: '"hello"';
		assert: [ :style | style counterIncrement: 'chapter' ] rendersProperty: 'counter-increment' withValue: 'chapter';
		assert: [ :style | style counterReset: 'chapter' ] rendersProperty: 'counter-reset' withValue: 'chapter';
		assert: [ :style | style listStyle: CssConstants lowerAlpha ] rendersProperty: 'list-style' withValue: 'lower-alpha';
		assert: [ :style | style listStyleType: CssConstants circle ] rendersProperty: 'list-style-type' withValue: 'circle';
		assert: [ :style | style listStyleImage: CssConstants none ] rendersProperty: 'list-style-image' withValue: 'none';
		assert: [ :style | style listStylePosition: CssConstants inside ] rendersProperty: 'list-style-position' withValue: 'inside';
		assert: [ :style | style quotes: {'"<"' .'">"'} ] rendersProperty: 'quotes' withValue: '"<" ">"'
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfMarginProperties [

	self 
		assert: [ :style | style margin: 5 cm ] rendersProperty: 'margin' withValue: '5cm';
		assert: [ :style | style marginLeft: 5 cm ] rendersProperty: 'margin-left' withValue: '5cm';
		assert: [ :style | style marginRight: 5 cm ] rendersProperty: 'margin-right' withValue: '5cm';
		assert: [ :style | style marginTop: 5 cm ] rendersProperty: 'margin-top' withValue: '5cm';
		assert: [ :style | style marginBottom: 5 cm ] rendersProperty: 'margin-bottom' withValue: '5cm'
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfMoreFontProperties [
	self
		assert: [ :style | 
					style
						fontVariantLigatures:
							{(CssFontConstants commonLigatures).
							(CssFontConstants noDiscretionaryLigatures).
							(CssFontConstants historicalLigatures).
							(CssFontConstants contextual)} ]
			rendersProperty: 'font-variant-ligatures'
			withValue: 'common-ligatures no-discretionary-ligatures historical-ligatures contextual';
		assert: [ :style | style fontVariantPosition: CssFontConstants sub ]
			rendersProperty: 'font-variant-position'
			withValue: 'sub';
		assert: [ :style | style fontVariantCaps: CssFontConstants smallCaps ]
			rendersProperty: 'font-variant-caps'
			withValue: 'small-caps';
		assert: [ :style | style fontVariantNumeric: CssFontConstants ordinal ]
			rendersProperty: 'font-variant-numeric'
			withValue: 'ordinal'
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfNotEmptyDeclarationBlock [

	self
		assert:
			(CssDeclarationBlock new
				color: 'red';
				yourself) printString
		equals: '{<n><t>color: red;<n>}' expandMacros
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfNotEmptyDeclarationBlockWithImportantRules [
	self
		assert:
			(CssDeclarationBlock new
				color: 'red';
				beImportantDuring: [ :declarationBlock | declarationBlock margin: 1 px ];
				padding: 2 px;
				yourself) printString
		equals: '{<n><t>color: red;<n><t>margin: 1px !important;<n><t>padding: 2px;<n>}' expandMacros
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfPaddingProperties [

	self 
		assert: [ :style | style padding: 5 cm ] rendersProperty: 'padding' withValue: '5cm';
		assert: [ :style | style paddingLeft: 5 cm ] rendersProperty: 'padding-left' withValue: '5cm';
		assert: [ :style | style paddingRight: 5 cm ] rendersProperty: 'padding-right' withValue: '5cm';
		assert: [ :style | style paddingTop: 5 cm ] rendersProperty: 'padding-top' withValue: '5cm';
		assert: [ :style | style paddingBottom: 5 cm ] rendersProperty: 'padding-bottom' withValue: '5cm'
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfTableProperties [

	self 
		assert: [ :style | style borderCollapse: CssConstants collapse ] rendersProperty: 'border-collapse' withValue: 'collapse';
		assert: [ :style | style borderSpacing: 15 pt ] rendersProperty: 'border-spacing' withValue: '15pt';
		assert: [ :style | style captionSide:  CssConstants bottom ] rendersProperty: 'caption-side' withValue: 'bottom';
		assert: [ :style | style emptyCells:  CssConstants hide ] rendersProperty: 'empty-cells' withValue: 'hide';
		assert: [ :style | style tableLayout:  CssConstants fixed ] rendersProperty: 'table-layout' withValue: 'fixed'
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfTextDecorationProperties [

	self 
		assert: [ :style | style textDecorationLine: CssConstants underline ] rendersProperty: 'text-decoration-line' withValue: 'underline';
		assert: [ :style | style textDecorationColor: CssSVGColors red ] rendersProperty: 'text-decoration-color' withValue: 'red';
		assert: [ :style | style textDecorationStyle: CssConstants solid ] rendersProperty: 'text-decoration-style' withValue: 'solid';
		assert: [ :style | style textUnderlinePosition: CssConstants under ] rendersProperty: 'text-underline-position' withValue: 'under';
		assert: [ :style | style textEmphasisStyle: CssConstants filled ] rendersProperty: 'text-emphasis-style' withValue: 'filled';
		assert: [ :style | style textEmphasisColor: CssSVGColors red ] rendersProperty: 'text-emphasis-color' withValue: 'red';
		assert: [ :style | style textEmphasisPosition: CssConstants over ] rendersProperty: 'text-emphasis-position' withValue: 'over';
		assert: [ :style | style textEmphasis: CssConstants filled ] rendersProperty: 'text-emphasis' withValue: 'filled';
		assert: [ :style | style textShadow: CssConstants none ] rendersProperty: 'text-shadow' withValue: 'none'
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfTextProperties [

	self
		assert: [ :style | style letterSpacing: CssConstants normal ] rendersProperty: 'letter-spacing' withValue: 'normal';
		assert: [ :style | style textAlign: CssConstants center ] rendersProperty: 'text-align' withValue: 'center';
		assert: [ :style | style textDecoration: CssConstants underline ] rendersProperty: 'text-decoration' withValue: 'underline';
		assert: [ :style | style textIndent: 5 percent ] rendersProperty: 'text-indent' withValue: '5%';
		assert: [ :style | style textTransform: CssConstants capitalize ] rendersProperty: 'text-transform' withValue: 'capitalize';
		assert: [ :style | style whiteSpace: CssConstants nowrap ] rendersProperty: 'white-space' withValue: 'nowrap';
		assert: [ :style | style wordSpacing: CssConstants normal ] rendersProperty: 'word-spacing' withValue: 'normal';
		assert: [ :style | style wordWrap: CssConstants breakWord ] rendersProperty: 'word-wrap' withValue: 'break-word';
		assert: [ :style | style textOverflow: CssConstants ellipsis ] rendersProperty: 'text-overflow' withValue: 'ellipsis'
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfUIProperties [

	self 
		assert: [ :style | style cursor: CssConstants auto ] rendersProperty: 'cursor' withValue: 'auto';
		assert: [ :style | style outline: CssConstants dotted ] rendersProperty: 'outline' withValue: 'dotted';
		assert: [ :style | style outlineColor: CssSVGColors black ] rendersProperty: 'outline-color' withValue: 'black';
		assert: [ :style | style outlineStyle: CssConstants dotted ] rendersProperty: 'outline-style' withValue: 'dotted';
		assert: [ :style | style outlineWidth: 2 px ] rendersProperty: 'outline-width' withValue: '2px'
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfVisualEffectProperties [

	self
		assert: [ :style | style clip: CssConstants auto ] rendersProperty: 'clip' withValue: 'auto';
		assert: [ :style | style overflow: CssConstants hidden ] rendersProperty: 'overflow' withValue: 'hidden';
		assert: [ :style | style visibility: CssConstants collapse ] rendersProperty: 'visibility' withValue: 'collapse';
		assert: [ :style | style overflowY: CssConstants hidden ] rendersProperty: 'overflow-y' withValue: 'hidden';
		assert: [ :style | style overflowX: CssConstants hidden ] rendersProperty: 'overflow-x' withValue: 'hidden'
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfVisualFormattingProperties [

	self 
		assert: [ :style | style bottom: 4 cm ] rendersProperty: 'bottom' withValue: '4cm';
		assert: [ :style | style clear: CssConstants both ] rendersProperty: 'clear' withValue: 'both';
		assert: [ :style | style direction: 'ltr' ] rendersProperty: 'direction' withValue: 'ltr';
		assert: [ :style | style display: CssConstants block ] rendersProperty: 'display' withValue: 'block';
		assert: [ :style | style float: CssConstants left ] rendersProperty: 'float' withValue: 'left';
		assert: [ :style | style left: 4 cm ] rendersProperty: 'left' withValue: '4cm';
		assert: [ :style | style position: CssConstants relative ] rendersProperty: 'position' withValue: 'relative';
		assert: [ :style | style right: 4 cm ] rendersProperty: 'right' withValue: '4cm';
		assert: [ :style | style top: 4 cm ] rendersProperty: 'top' withValue: '4cm';
		assert: [ :style | style unicodeBidi: CssConstants normal ] rendersProperty: 'unicode-bidi' withValue: 'normal';
		assert: [ :style | style zIndex: 4 ] rendersProperty: 'z-index' withValue: '4'
		
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringWithSeveralDeclarations [

	| declarationBlock |
	declarationBlock := CssDeclarationBlock new.
	declarationBlock
		color: 'red';
		margin: {1 px. 3 pc. 4 pt. 50 percent}.

	self assert: declarationBlock printString equals: ('{<n><t>color: red;<n><t>margin: 1px 3pc 4pt 50<1s>;<n>}' expandMacrosWith: '%')
]
