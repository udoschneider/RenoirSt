"
A CssFontConstantsTest is a test class for testing the behavior of CssFontConstants
"
Class {
	#name : #CssFontConstantsTest,
	#superclass : #TestCase,
	#pools : [
		'RenoirSt'
	],
	#category : #'RenoirSt-Tests-Fonts'
}

{ #category : #'private - asserting' }
CssFontConstantsTest >> assertConstant: aSymbol equals: anExpectedValue [

	self assert: CssConstants >> aSymbol equals: anExpectedValue
]

{ #category : #Tests }
CssFontConstantsTest >> testFontFormatConstants [

	self
		assertConstant: #woff equals: 'woff';
		assertConstant: #truetype equals: 'truetype';
		assertConstant: #opentype equals: 'opentype';
		assertConstant: #embeddedOpentype equals: 'embedded-opentype';
		assertConstant: #svg equals: 'svg'
]

{ #category : #Tests }
CssFontConstantsTest >> testFontSizeConstants [

	self
		assertConstant: #xxSmall equals: 'xx-small';
		assertConstant: #xSmall equals: 'x-small';
		assertConstant: #small equals: 'small';
		assertConstant: #medium equals: 'medium';
		assertConstant: #large equals: 'large';
		assertConstant: #xLarge equals: 'x-large';
		assertConstant: #xxLarge equals: 'xx-large';
		assertConstant: #larger equals: 'larger';
		assertConstant: #smaller equals: 'smaller'
]

{ #category : #Tests }
CssFontConstantsTest >> testFontStretchConstants [

	self
		assertConstant: #ultraCondensed equals: 'ultra-condensed';
		assertConstant: #extraCondensed equals: 'extra-condensed';
		assertConstant: #condensed equals: 'condensed';
		assertConstant: #semiCondensed equals: 'semi-condensed';
		assertConstant: #normal equals: 'normal';
		assertConstant: #semiExpanded equals: 'semi-expanded';
		assertConstant: #extraExpanded equals: 'extra-expanded';
		assertConstant: #expanded equals: 'expanded';
		assertConstant: #ultraExpanded equals: 'ultra-expanded'
]

{ #category : #Tests }
CssFontConstantsTest >> testFontVariantCapsConstants [

	self
		assertConstant: #smallCaps equals: 'small-caps';
		assertConstant: #allSmallCaps equals: 'all-small-caps';
		assertConstant: #petiteCaps equals: 'petite-caps';
		assertConstant: #allPetiteCaps equals: 'all-petite-caps';
		assertConstant: #unicase equals: 'unicase';
		assertConstant: #titlingCaps equals: 'titling-caps';
		assertConstant: #normal equals: 'normal'
]

{ #category : #Tests }
CssFontConstantsTest >> testFontVariantLigaturesConstants [

	self
		assertConstant: #commonLigatures  equals: 'common-ligatures';
		assertConstant: #noCommonLigatures equals: 'no-common-ligatures';
		assertConstant: #discretionaryLigatures equals: 'discretionary-ligatures';
		assertConstant: #noDiscretionaryLigatures  equals: 'no-discretionary-ligatures';
		assertConstant: #historicalLigatures equals: 'historical-ligatures';
		assertConstant: #noHistoricalLigatures equals: 'no-historical-ligatures';
		assertConstant: #contextual equals: 'contextual';
		assertConstant: #noContextual equals: 'no-contextual'
]

{ #category : #Tests }
CssFontConstantsTest >> testFontVariantNumericConstants [

	self
		assertConstant: #ordinal equals: 'ordinal';
		assertConstant: #slashedZero equals: 'slashed-zero';
		assertConstant: #liningNums equals: 'lining-nums';
		assertConstant: #oldstyleNums equals: 'oldstyle-nums';
		assertConstant: #proportionalNums equals: 'proportional-nums';
		assertConstant: #tabularNums equals: 'tabular-nums';
		assertConstant: #diagonalFractions equals: 'diagonal-fractions';
		assertConstant: #stackedFractions equals: 'stacked-fractions';
		assertConstant: #normal equals: 'normal'
]

{ #category : #Tests }
CssFontConstantsTest >> testFontVariantPositionConstants [

	self
		assertConstant: #sub  equals: 'sub';
		assertConstant: #super equals: 'super';
		assertConstant: #normal equals: 'normal'
]

{ #category : #Tests }
CssFontConstantsTest >> testGenericFontFamiliesAccessors [

	self
		assertConstant: #serif equals: 'serif';
		assertConstant: #sansSerif equals: 'sans-serif';
		assertConstant: #cursive equals: 'cursive';
		assertConstant: #fantasy equals: 'fantasy';
		assertConstant: #monospace equals: 'monospace'
]
