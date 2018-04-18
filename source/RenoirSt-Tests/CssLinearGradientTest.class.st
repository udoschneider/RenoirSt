"
A CssLinearGradientTest is a test class for testing the behavior of CssLinearGradient
"
Class {
	#name : #CssLinearGradientTest,
	#superclass : #TestCase,
	#category : 'RenoirSt-Tests-Colors'
}

{ #category : #Tests }
CssLinearGradientTest >> testGradientWithAngleDirectionSpecified [

	| gradient |
	
	gradient := CssLinearGradient rotated: 45 deg fading: { CssSVGColors white. CssSVGColors red. CssSVGColors white }.
	self assert: gradient printString equals: 'linear-gradient(45deg, white, red, white)'
]

{ #category : #Tests }
CssLinearGradientTest >> testGradientWithColorStops [

	| gradient |
	
	gradient := CssLinearGradient fading: { CssSVGColors white. (CssColorStop for: CssSVGColors red at: 20 percent) }.
	self assert: gradient printString equals: 'linear-gradient(white, red 20%)'
]

{ #category : #Tests }
CssLinearGradientTest >> testGradientWithNamedDirectionSpecified [

	| gradient |
	gradient := CssLinearGradient
		to: CssConstants bottom
		fading: {CssSVGColors white. CssSVGColors red}.
	self assert: gradient printString equals: 'linear-gradient(to bottom, white, red)'.

	gradient := CssLinearGradient
		to: {CssConstants top. CssConstants right}
		fading: {CssSVGColors white. CssSVGColors red}.
	self assert: gradient printString equals: 'linear-gradient(to top right, white, red)'
]

{ #category : #Tests }
CssLinearGradientTest >> testGradientWithNoDirectionSpecified [

	| gradient |
	
	gradient := CssLinearGradient fading: { CssSVGColors white. CssSVGColors red }.
	self assert: gradient printString equals: 'linear-gradient(white, red)'
]

{ #category : #Tests }
CssLinearGradientTest >> testRepeatingGradientWithNoDirectionSpecified [
	
	| gradient |
	gradient := CssLinearGradient
		fading:
			{CssSVGColors white.
			CssSVGColors red}.
	gradient beRepeating.
	
	self assert: gradient printString equals: 'repeating-linear-gradient(white, red)'
]
