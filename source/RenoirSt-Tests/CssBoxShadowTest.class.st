Class {
	#name : #CssBoxShadowTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests'
}

{ #category : #Tests }
CssBoxShadowTest >> testBoxShadowSet [
	
	| insetShadow shadow |
	
	insetShadow := CssBoxShadow horizontalOffset: 1 px verticalOffset: 2 px.
	insetShadow beInset.
	shadow := CssBoxShadow
		horizontalOffset: 1 px
		verticalOffset: 2 px
		blurRadius: 1 px
		spreadDistance: 1 px
		color: CssSVGColors white.
	
	self assert: (insetShadow , shadow) printString equals: 'inset 1px 2px, 1px 2px 1px 1px white'
]

{ #category : #Tests }
CssBoxShadowTest >> testBoxShadowWithBlurRadiusAndSpreadDistancePrintString [

	self
		assert:
			(CssBoxShadow
				horizontalOffset: 64 px
				verticalOffset: 64 px
				blurRadius: 12 px
				spreadDistance: 40 px) printString
		equals: '64px 64px 12px 40px'
]

{ #category : #Tests }
CssBoxShadowTest >> testBoxShadowWithBlurRadiusPrintString [

	self assert: (CssBoxShadow horizontalOffset: 64 px verticalOffset: 64 px blurRadius: 12 px) printString equals: '64px 64px 12px'
]

{ #category : #Tests }
CssBoxShadowTest >> testBoxShadowWithColorPrintString [

	self
		assert: (CssBoxShadow horizontalOffset: 64 px verticalOffset: 64 px color: CssSVGColors red) printString equals: '64px 64px red';
		assert:
			(CssBoxShadow
				horizontalOffset: 64 px
				verticalOffset: 64 px
				blurRadius: 3 px
				color: CssSVGColors red) printString
			equals: '64px 64px 3px red';
		assert:
			(CssBoxShadow
				horizontalOffset: 64 px
				verticalOffset: 64 px
				blurRadius: 3 px
				spreadDistance: 8 px
				color: CssSVGColors red) printString
			equals: '64px 64px 3px 8px red'
]

{ #category : #Tests }
CssBoxShadowTest >> testInsetBoxShadowPrintString [

	| insetShadow |
	insetShadow := CssBoxShadow horizontalOffset: 64 px verticalOffset: 64 px.
	insetShadow beInset.
	
	self assert: insetShadow printString equals: 'inset 64px 64px'
]

{ #category : #Tests }
CssBoxShadowTest >> testSimplestBoxShadowPrintString [

	self assert: (CssBoxShadow horizontalOffset: 64 px verticalOffset: 64 px) printString equals: '64px 64px'
]
