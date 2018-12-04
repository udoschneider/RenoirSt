"
A CssRadialGradientTest is a test class for testing the behavior of CssRadialGradient
"
Class {
	#name : #CssRadialGradientTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Colors'
}

{ #category : #Tests }
CssRadialGradientTest >> testCircleGradientPositioned [

	| gradient |

	gradient := CssRadialGradient circular: 5 em at: #center fading: #(#white #red).
	self assert: gradient printString equals: 'radial-gradient(5em circle at center, white, red)'
]

{ #category : #Tests }
CssRadialGradientTest >> testCircleGradientSpecified [

	| gradient |

	gradient := CssRadialGradient circular: 5 em fading: #(white red).
	self assert: gradient printString equals: 'radial-gradient(5em circle, white, red)'
]

{ #category : #Tests }
CssRadialGradientTest >> testEllipseGradient [

	| gradient |
	
	gradient := CssRadialGradient elliptical: {5 em. 3 em} fading: #(white red).
	self assert: gradient printString equals: 'radial-gradient(5em 3em ellipse, white, red)'
]

{ #category : #Tests }
CssRadialGradientTest >> testEllipseGradientPositioned [

	| gradient |
	
	gradient := CssRadialGradient elliptical: {5 em. 3 em} at: { 5 px. 30 px} fading: #(#white #red).
	self assert: gradient printString equals: 'radial-gradient(5em 3em ellipse at 5px 30px, white, red)'
]

{ #category : #Tests }
CssRadialGradientTest >> testGradientWithNoShapeSpecified [

	| gradient |

	gradient := CssRadialGradient fading: #(#white #red).
	self assert: gradient printString equals: 'radial-gradient(white, red)'
]

{ #category : #Tests }
CssRadialGradientTest >> testRepeatingGradient [

	| gradient |

	gradient := CssRadialGradient fading: #(white red).
	gradient beRepeating.
	self assert: gradient printString equals: 'repeating-radial-gradient(white, red)'
]
