"
A CssFontConstantsTest is a test class for testing the behavior of CssFontConstants
"
Class {
	#name : #CssFontConstantsTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Fonts'
}

{ #category : #Tests }
CssFontConstantsTest >> testFontFormatConstants [

	self
		assert: CssFontConstants woff equals: 'woff';
		assert: CssFontConstants truetype equals: 'truetype';
		assert: CssFontConstants opentype equals: 'opentype';
		assert: CssFontConstants embeddedOpentype equals: 'embedded-opentype';
		assert: CssFontConstants svg equals: 'svg'
]

{ #category : #Tests }
CssFontConstantsTest >> testFontSizeConstants [

	self
		assert: CssFontConstants xxSmall equals: 'xx-small';
		assert: CssFontConstants xSmall equals: 'x-small';
		assert: CssFontConstants small equals: 'small';
		assert: CssFontConstants medium equals: 'medium';
		assert: CssFontConstants large equals: 'large';
		assert: CssFontConstants xLarge equals: 'x-large';
		assert: CssFontConstants xxLarge equals: 'xx-large';
		assert: CssFontConstants larger equals: 'larger';
		assert: CssFontConstants smaller equals: 'smaller'
]

{ #category : #Tests }
CssFontConstantsTest >> testFontStretchConstants [

	self
		assert: CssFontConstants ultraCondensed equals: 'ultra-condensed';
		assert: CssFontConstants extraCondensed equals: 'extra-condensed';
		assert: CssFontConstants condensed equals: 'condensed';
		assert: CssFontConstants semiCondensed equals: 'semi-condensed';
		assert: CssFontConstants normal equals: 'normal';
		assert: CssFontConstants semiExpanded equals: 'semi-expanded';
		assert: CssFontConstants extraExpanded equals: 'extra-expanded';
		assert: CssFontConstants expanded equals: 'expanded';
		assert: CssFontConstants ultraExpanded equals: 'ultra-expanded'
]

{ #category : #Tests }
CssFontConstantsTest >> testFontVariantCapsConstants [

	self
		assert: CssFontConstants smallCaps equals: 'small-caps';
		assert: CssFontConstants allSmallCaps equals: 'all-small-caps';
		assert: CssFontConstants petiteCaps equals: 'petite-caps';
		assert: CssFontConstants allPetiteCaps equals: 'all-petite-caps';
		assert: CssFontConstants unicase equals: 'unicase';
		assert: CssFontConstants titlingCaps equals: 'titling-caps';
		assert: CssFontConstants normal equals: 'normal'
]

{ #category : #Tests }
CssFontConstantsTest >> testFontVariantLigaturesConstants [

	self
		assert: CssFontConstants commonLigatures  equals: 'common-ligatures';
		assert: CssFontConstants noCommonLigatures equals: 'no-common-ligatures';
		assert: CssFontConstants discretionaryLigatures equals: 'discretionary-ligatures';
		assert: CssFontConstants noDiscretionaryLigatures  equals: 'no-discretionary-ligatures';
		assert: CssFontConstants historicalLigatures equals: 'historical-ligatures';
		assert: CssFontConstants noHistoricalLigatures equals: 'no-historical-ligatures';
		assert: CssFontConstants contextual equals: 'contextual';
		assert: CssFontConstants noContextual equals: 'no-contextual'
]

{ #category : #Tests }
CssFontConstantsTest >> testFontVariantNumericConstants [

	self
		assert: CssFontConstants ordinal equals: 'ordinal';
		assert: CssFontConstants slashedZero equals: 'slashed-zero';
		assert: CssFontConstants liningNums equals: 'lining-nums';
		assert: CssFontConstants oldstyleNums equals: 'oldstyle-nums';
		assert: CssFontConstants proportionalNums equals: 'proportional-nums';
		assert: CssFontConstants tabularNums equals: 'tabular-nums';
		assert: CssFontConstants diagonalFractions equals: 'diagonal-fractions';
		assert: CssFontConstants stackedFractions equals: 'stacked-fractions';
		assert: CssFontConstants normal equals: 'normal'
]

{ #category : #Tests }
CssFontConstantsTest >> testFontVariantPositionConstants [

	self
		assert: CssFontConstants sub  equals: 'sub';
		assert: CssFontConstants super equals: 'super';
		assert: CssFontConstants normal equals: 'normal'
]

{ #category : #Tests }
CssFontConstantsTest >> testGenericFontFamiliesAccessors [

	self
		assert: CssFontConstants serif equals: 'serif';
		assert: CssFontConstants sansSerif equals: 'sans-serif';
		assert: CssFontConstants cursive equals: 'cursive';
		assert: CssFontConstants fantasy equals: 'fantasy';
		assert: CssFontConstants monospace equals: 'monospace'
]
