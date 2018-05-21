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

{ #category : #Tests }
CssFontConstantsTest >> testFontFormatConstants [

	self
		assert: CssConstants >> #woff equals: 'woff';
		assert: CssConstants >> #truetype equals: 'truetype';
		assert: CssConstants >> #opentype equals: 'opentype';
		assert: CssConstants >> #embeddedOpentype equals: 'embedded-opentype';
		assert: CssConstants >> #svg equals: 'svg'
]

{ #category : #Tests }
CssFontConstantsTest >> testFontSizeConstants [

	self
		assert: CssConstants >> #xxSmall equals: 'xx-small';
		assert: CssConstants >> #xSmall equals: 'x-small';
		assert: CssConstants >> #small equals: 'small';
		assert: CssConstants >> #medium equals: 'medium';
		assert: CssConstants >> #large equals: 'large';
		assert: CssConstants >> #xLarge equals: 'x-large';
		assert: CssConstants >> #xxLarge equals: 'xx-large';
		assert: CssConstants >> #larger equals: 'larger';
		assert: CssConstants >> #smaller equals: 'smaller'
]

{ #category : #Tests }
CssFontConstantsTest >> testFontStretchConstants [

	self
		assert: CssConstants >> #ultraCondensed equals: 'ultra-condensed';
		assert: CssConstants >> #extraCondensed equals: 'extra-condensed';
		assert: CssConstants >> #condensed equals: 'condensed';
		assert: CssConstants >> #semiCondensed equals: 'semi-condensed';
		assert: CssConstants >> #normal equals: 'normal';
		assert: CssConstants >> #semiExpanded equals: 'semi-expanded';
		assert: CssConstants >> #extraExpanded equals: 'extra-expanded';
		assert: CssConstants >> #expanded equals: 'expanded';
		assert: CssConstants >> #ultraExpanded equals: 'ultra-expanded'
]

{ #category : #Tests }
CssFontConstantsTest >> testFontVariantCapsConstants [

	self
		assert: CssConstants >> #smallCaps equals: 'small-caps';
		assert: CssConstants >> #allSmallCaps equals: 'all-small-caps';
		assert: CssConstants >> #petiteCaps equals: 'petite-caps';
		assert: CssConstants >> #allPetiteCaps equals: 'all-petite-caps';
		assert: CssConstants >> #unicase equals: 'unicase';
		assert: CssConstants >> #titlingCaps equals: 'titling-caps';
		assert: CssConstants >> #normal equals: 'normal'
]

{ #category : #Tests }
CssFontConstantsTest >> testFontVariantLigaturesConstants [

	self
		assert: CssConstants >> #commonLigatures  equals: 'common-ligatures';
		assert: CssConstants >> #noCommonLigatures equals: 'no-common-ligatures';
		assert: CssConstants >> #discretionaryLigatures equals: 'discretionary-ligatures';
		assert: CssConstants >> #noDiscretionaryLigatures  equals: 'no-discretionary-ligatures';
		assert: CssConstants >> #historicalLigatures equals: 'historical-ligatures';
		assert: CssConstants >> #noHistoricalLigatures equals: 'no-historical-ligatures';
		assert: CssConstants >> #contextual equals: 'contextual';
		assert: CssConstants >> #noContextual equals: 'no-contextual'
]

{ #category : #Tests }
CssFontConstantsTest >> testFontVariantNumericConstants [

	self
		assert: CssConstants >> #ordinal equals: 'ordinal';
		assert: CssConstants >> #slashedZero equals: 'slashed-zero';
		assert: CssConstants >> #liningNums equals: 'lining-nums';
		assert: CssConstants >> #oldstyleNums equals: 'oldstyle-nums';
		assert: CssConstants >> #proportionalNums equals: 'proportional-nums';
		assert: CssConstants >> #tabularNums equals: 'tabular-nums';
		assert: CssConstants >> #diagonalFractions equals: 'diagonal-fractions';
		assert: CssConstants >> #stackedFractions equals: 'stacked-fractions';
		assert: CssConstants >> #normal equals: 'normal'
]

{ #category : #Tests }
CssFontConstantsTest >> testFontVariantPositionConstants [

	self
		assert: CssConstants >> #sub  equals: 'sub';
		assert: CssConstants >> #super equals: 'super';
		assert: CssConstants >> #normal equals: 'normal'
]

{ #category : #Tests }
CssFontConstantsTest >> testGenericFontFamiliesAccessors [

	self
		assert: CssConstants >> #serif equals: 'serif';
		assert: CssConstants >> #sansSerif equals: 'sans-serif';
		assert: CssConstants >> #cursive equals: 'cursive';
		assert: CssConstants >> #fantasy equals: 'fantasy';
		assert: CssConstants >> #monospace equals: 'monospace'
]
