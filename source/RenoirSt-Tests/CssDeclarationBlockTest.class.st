"
A CssDeclarationBlockTest is a test class for testing the behavior of CssDeclarationBlock
"
Class {
	#name : #CssDeclarationBlockTest,
	#superclass : #TestCase,
	#pools : [
		'RenoirSt'
	],
	#category : #'RenoirSt-Tests-Common'
}

{ #category : #private }
CssDeclarationBlockTest >> assert: aBlockClosure rendersProperty: aPropertyName withValue: anExpectedValue [

	| style |
	style := CssDeclarationBlock new.
	aBlockClosure cull: style cull: CssConstants.

	self assert: style printString equals: ('{<n><t><1s>: <2s>;<n>}' expandMacrosWith: aPropertyName with: anExpectedValue)
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintInlined [

	| style |
	style := CssDeclarationBlock new.
	style
		borderWidth: CssConstants >> #thin;
		borderStyle: CssConstants >> #dashed;
		borderRadius: 4 px.

	self
		assert: (String streamContents: [ :stream | style printInlinedOn: stream ])
		equals: 'border-width: thin;border-style: dashed;border-radius: 4px;'
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfBackgroundProperties [

	self
		assert: [ :style | style background: CssSVGColors blue ] rendersProperty: 'background' withValue: 'blue';
		assert: [ :style :constants | style backgroundAttachment: constants >> #scroll ] rendersProperty: 'background-attachment' withValue: 'scroll';
		assert: [ :style | style backgroundColor: CssSVGColors red ] rendersProperty: 'background-color' withValue: 'red';
		assert: [ :style | style backgroundImage: 'logo.png' ] rendersProperty: 'background-image' withValue: 'logo.png';
		assert: [ :style | style backgroundPosition: {0 percent. 0 percent} ] rendersProperty: 'background-position' withValue: '0% 0%';
		assert: [ :style :constants | style backgroundRepeat: constants >> #repeat ] rendersProperty: 'background-repeat' withValue: 'repeat';
		assert: [ :style :constants | style backgroundSize: constants >> #contain ] rendersProperty: 'background-size' withValue: 'contain';
		assert: [ :style :constants | style backgroundClip: constants >> #borderBox ] rendersProperty: 'background-clip' withValue: 'border-box';
		assert: [ :style :constants | style backgroundOrigin: constants >> #borderBox ] rendersProperty: 'background-origin' withValue: 'border-box'
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfBorderImageProperties [

	self
		assert: [ :style :constants | style borderImageSource: constants  >> #none ] rendersProperty: 'border-image-source' withValue: 'none';
		assert: [ :style | style borderImageSlice: 50 percent ] rendersProperty: 'border-image-slice' withValue: '50%';
		assert: [ :style | style borderImageWidth: 2 px ] rendersProperty: 'border-image-width' withValue: '2px';
		assert: [ :style | style borderImageOutset: 3 px ] rendersProperty: 'border-image-outset' withValue: '3px';
		assert: [ :style :constants | style borderImageRepeat: constants  >> #round ] rendersProperty: 'border-image-repeat' withValue: 'round';
		assert: [ :style :constants | style borderImage: constants  >> #none ] rendersProperty: 'border-image' withValue: 'none';
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
		assert: [ :style :constants | style border: { constants  >> #thin. constants  >> #dashed. CssSVGColors royalBlue }  ] rendersProperty: 'border' withValue: 'thin dashed royalblue';
		assert: [ :style :constants | style borderBottom: { constants  >> #thin. constants  >> #dashed. CssSVGColors royalBlue }  ] rendersProperty: 'border-bottom' withValue: 'thin dashed royalblue';
		assert: [ :style :constants | style borderTop: { constants  >> #thin. constants  >> #dashed. CssSVGColors royalBlue }  ] rendersProperty: 'border-top' withValue: 'thin dashed royalblue';
		assert: [ :style :constants | style borderRight: { constants  >> #thin. constants  >> #dashed. CssSVGColors royalBlue }  ] rendersProperty: 'border-right' withValue: 'thin dashed royalblue';
		assert: [ :style :constants | style borderLeft: { constants  >> #thin. constants  >> #dashed. CssSVGColors royalBlue }  ] rendersProperty: 'border-left' withValue: 'thin dashed royalblue';
		assert: [ :style | style borderColor: CssSVGColors royalBlue ] rendersProperty: 'border-color' withValue: 'royalblue';
		assert: [ :style :constants | style borderWidth:  constants  >> #thin. ] rendersProperty: 'border-width' withValue: 'thin';
		assert: [ :style :constants | style borderStyle: constants  >> #dashed. ] rendersProperty: 'border-style' withValue: 'dashed';
		assert: [ :style :constants | style borderTopColor: CssSVGColors royalBlue ] rendersProperty: 'border-top-color' withValue: 'royalblue';
		assert: [ :style :constants | style borderTopWidth:  constants  >> #thin. ] rendersProperty: 'border-top-width' withValue: 'thin';
		assert: [ :style :constants | style borderTopStyle: constants  >> #dashed. ] rendersProperty: 'border-top-style' withValue: 'dashed';
		assert: [ :style | style borderBottomColor: CssSVGColors royalBlue ] rendersProperty: 'border-bottom-color' withValue: 'royalblue';
		assert: [ :style :constants | style borderBottomWidth:  constants  >> #thin. ] rendersProperty: 'border-bottom-width' withValue: 'thin';
		assert: [ :style :constants | style borderBottomStyle: constants  >> #dashed. ] rendersProperty: 'border-bottom-style' withValue: 'dashed';
		assert: [ :style | style borderLeftColor: CssSVGColors royalBlue ] rendersProperty: 'border-left-color' withValue: 'royalblue';
		assert: [ :style :constants | style borderLeftWidth:  constants  >> #thin. ] rendersProperty: 'border-left-width' withValue: 'thin';
		assert: [ :style :constants | style borderLeftStyle: constants  >> #dashed. ] rendersProperty: 'border-left-style' withValue: 'dashed';
		assert: [ :style | style borderRightColor: CssSVGColors royalBlue ] rendersProperty: 'border-right-color' withValue: 'royalblue';
		assert: [ :style :constants | style borderRightWidth:  constants  >> #thin. ] rendersProperty: 'border-right-width' withValue: 'thin';
		assert: [ :style :constants | style borderRightStyle: constants  >> #dashed. ] rendersProperty: 'border-right-style' withValue: 'dashed';
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
		assert: [ :style :constants | style verticalAlign: constants  >> #middle ] rendersProperty: 'vertical-align' withValue: 'middle';
		assert: [ :style :constants | style resize: constants  >> #none ] rendersProperty: 'resize' withValue: 'none'
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
		assert: [ :style :constants | style fontFamily: constants >> #serif ] rendersProperty: 'font-family' withValue: 'serif';
		assert: [ :style :constants | style fontStyle: constants >> #italic ] rendersProperty: 'font-style' withValue: 'italic';
		assert: [ :style :constants | style fontVariant: constants >> #smallCaps ] rendersProperty: 'font-variant' withValue: 'small-caps';
		assert: [ :style :constants | style fontWeight: constants >> #bolder ] rendersProperty: 'font-weight' withValue: 'bolder';
		assert: [ :style | style color: CssSVGColors goldenrod ] rendersProperty: 'color' withValue: 'goldenrod';
		assert: [ :style :constants | style fontStretch: constants >> #ultraCondensed ] rendersProperty: 'font-stretch' withValue: 'ultra-condensed';
		assert: [ :style :constants | style fontSynthesis: {constants >> #weight . constants >> #style}] rendersProperty: 'font-synthesis' withValue: 'weight style';
		assert: [ :style :constants | style fontKerning: constants >> #auto ] rendersProperty: 'font-kerning' withValue: 'auto'
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfGeneratedContentProperties [

	self 
		assert: [ :style | style content: '"hello"' ] rendersProperty: 'content' withValue: '"hello"';
		assert: [ :style | style counterIncrement: 'chapter' ] rendersProperty: 'counter-increment' withValue: 'chapter';
		assert: [ :style | style counterReset: 'chapter' ] rendersProperty: 'counter-reset' withValue: 'chapter';
		assert: [ :style :constants | style listStyle: constants  >> #lowerAlpha ] rendersProperty: 'list-style' withValue: 'lower-alpha';
		assert: [ :style :constants | style listStyleType: constants  >> #circle ] rendersProperty: 'list-style-type' withValue: 'circle';
		assert: [ :style :constants | style listStyleImage: constants  >> #none ] rendersProperty: 'list-style-image' withValue: 'none';
		assert: [ :style :constants | style listStylePosition: constants  >> #inside ] rendersProperty: 'list-style-position' withValue: 'inside';
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
		assert: [ :style :constants | 
			style
				fontVariantLigatures:
					{(constants >> #commonLigatures).
					(constants >> #noDiscretionaryLigatures).
					(constants >> #historicalLigatures).
					(constants >> #contextual)} ]
			rendersProperty: 'font-variant-ligatures'
			withValue: 'common-ligatures no-discretionary-ligatures historical-ligatures contextual';
		assert: [ :style :constants | style fontVariantPosition: constants >> #sub ] rendersProperty: 'font-variant-position' withValue: 'sub';
		assert: [ :style :constants | style fontVariantCaps: constants >> #smallCaps ] rendersProperty: 'font-variant-caps' withValue: 'small-caps';
		assert: [ :style :constants | style fontVariantNumeric: constants >> #ordinal ] rendersProperty: 'font-variant-numeric' withValue: 'ordinal'
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
		assert: [ :style :constants | style borderCollapse: constants  >> #collapse ] rendersProperty: 'border-collapse' withValue: 'collapse';
		assert: [ :style | style borderSpacing: 15 pt ] rendersProperty: 'border-spacing' withValue: '15pt';
		assert: [ :style :constants | style captionSide:  constants  >> #bottom ] rendersProperty: 'caption-side' withValue: 'bottom';
		assert: [ :style :constants | style emptyCells:  constants  >> #hide ] rendersProperty: 'empty-cells' withValue: 'hide';
		assert: [ :style :constants | style tableLayout:  constants  >> #fixed ] rendersProperty: 'table-layout' withValue: 'fixed'
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfTextDecorationProperties [

	self 
		assert: [ :style :constants | style textDecorationLine: constants  >> #underline ] rendersProperty: 'text-decoration-line' withValue: 'underline';
		assert: [ :style | style textDecorationColor: CssSVGColors red ] rendersProperty: 'text-decoration-color' withValue: 'red';
		assert: [ :style :constants | style textDecorationStyle: constants  >> #solid ] rendersProperty: 'text-decoration-style' withValue: 'solid';
		assert: [ :style :constants | style textUnderlinePosition: constants  >> #under ] rendersProperty: 'text-underline-position' withValue: 'under';
		assert: [ :style :constants | style textEmphasisStyle: constants  >> #filled ] rendersProperty: 'text-emphasis-style' withValue: 'filled';
		assert: [ :style | style textEmphasisColor: CssSVGColors red ] rendersProperty: 'text-emphasis-color' withValue: 'red';
		assert: [ :style :constants | style textEmphasisPosition: constants  >> #over ] rendersProperty: 'text-emphasis-position' withValue: 'over';
		assert: [ :style :constants | style textEmphasis: constants  >> #filled ] rendersProperty: 'text-emphasis' withValue: 'filled';
		assert: [ :style :constants | style textShadow: constants  >> #none ] rendersProperty: 'text-shadow' withValue: 'none'
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfTextProperties [

	self
		assert: [ :style :constants | style letterSpacing: constants  >> #normal ] rendersProperty: 'letter-spacing' withValue: 'normal';
		assert: [ :style :constants | style textAlign: constants  >> #center ] rendersProperty: 'text-align' withValue: 'center';
		assert: [ :style :constants | style textDecoration: constants  >> #underline ] rendersProperty: 'text-decoration' withValue: 'underline';
		assert: [ :style | style textIndent: 5 percent ] rendersProperty: 'text-indent' withValue: '5%';
		assert: [ :style :constants | style textTransform: constants  >> #capitalize ] rendersProperty: 'text-transform' withValue: 'capitalize';
		assert: [ :style :constants | style whiteSpace: constants  >> #nowrap ] rendersProperty: 'white-space' withValue: 'nowrap';
		assert: [ :style :constants | style wordSpacing: constants  >> #normal ] rendersProperty: 'word-spacing' withValue: 'normal';
		assert: [ :style :constants | style wordWrap: constants  >> #breakWord ] rendersProperty: 'word-wrap' withValue: 'break-word';
		assert: [ :style :constants | style textOverflow: constants  >> #ellipsis ] rendersProperty: 'text-overflow' withValue: 'ellipsis'
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfUIProperties [

	self 
		assert: [ :style :constants | style cursor: constants  >> #auto ] rendersProperty: 'cursor' withValue: 'auto';
		assert: [ :style :constants | style outline: constants  >> #dotted ] rendersProperty: 'outline' withValue: 'dotted';
		assert: [ :style | style outlineColor: CssSVGColors black ] rendersProperty: 'outline-color' withValue: 'black';
		assert: [ :style :constants | style outlineStyle: constants  >> #dotted ] rendersProperty: 'outline-style' withValue: 'dotted';
		assert: [ :style | style outlineWidth: 2 px ] rendersProperty: 'outline-width' withValue: '2px'
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfVisualEffectProperties [

	self
		assert: [ :style :constants | style clip: constants  >> #auto ] rendersProperty: 'clip' withValue: 'auto';
		assert: [ :style :constants | style overflow: constants  >> #hidden ] rendersProperty: 'overflow' withValue: 'hidden';
		assert: [ :style :constants | style visibility: constants  >> #collapse ] rendersProperty: 'visibility' withValue: 'collapse';
		assert: [ :style :constants | style overflowY: constants  >> #hidden ] rendersProperty: 'overflow-y' withValue: 'hidden';
		assert: [ :style :constants | style overflowX: constants  >> #hidden ] rendersProperty: 'overflow-x' withValue: 'hidden'
]

{ #category : #Tests }
CssDeclarationBlockTest >> testPrintStringOfVisualFormattingProperties [

	self 
		assert: [ :style | style bottom: 4 cm ] rendersProperty: 'bottom' withValue: '4cm';
		assert: [ :style :constants | style clear: constants  >> #both ] rendersProperty: 'clear' withValue: 'both';
		assert: [ :style | style direction: 'ltr' ] rendersProperty: 'direction' withValue: 'ltr';
		assert: [ :style :constants | style display: constants  >> #block ] rendersProperty: 'display' withValue: 'block';
		assert: [ :style :constants | style float: constants  >> #left ] rendersProperty: 'float' withValue: 'left';
		assert: [ :style | style left: 4 cm ] rendersProperty: 'left' withValue: '4cm';
		assert: [ :style :constants | style position: constants  >> #relative ] rendersProperty: 'position' withValue: 'relative';
		assert: [ :style | style right: 4 cm ] rendersProperty: 'right' withValue: '4cm';
		assert: [ :style | style top: 4 cm ] rendersProperty: 'top' withValue: '4cm';
		assert: [ :style :constants | style unicodeBidi: constants  >> #normal ] rendersProperty: 'unicode-bidi' withValue: 'normal';
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
