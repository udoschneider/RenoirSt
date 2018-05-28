"
A CssLinearGradientTest is a test class for testing the behavior of CssLinearGradient
"
Class {
	#name : #CssLinearGradientTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Colors'
}

{ #category : #Tests }
CssLinearGradientTest >> testGradientWithAngleDirectionSpecified [

	| gradient |

	gradient := CssLinearGradient rotated: 45 deg fading: #(#white #red #white).
	self assert: gradient printString equals: 'linear-gradient(45deg, white, red, white)'
]

{ #category : #Tests }
CssLinearGradientTest >> testGradientWithColorStops [

	| gradient |
	
	gradient := CssLinearGradient fading: { #white. (CssColorStop for: #red at: 20 percent) }.
	self assert: gradient printString equals: 'linear-gradient(white, red 20%)'
]

{ #category : #Tests }
CssLinearGradientTest >> testGradientWithNamedDirectionSpecified [

	| gradient |

	gradient := CssLinearGradient to: #bottom fading: #(#white #red).
	self assert: gradient printString equals: 'linear-gradient(to bottom, white, red)'.

	gradient := CssLinearGradient to: #(#top #right) fading: #(#white #red).
	self assert: gradient printString equals: 'linear-gradient(to top right, white, red)'
]

{ #category : #Tests }
CssLinearGradientTest >> testGradientWithNoDirectionSpecified [

	| gradient |

	gradient := CssLinearGradient fading: #(#white #red).
	self assert: gradient printString equals: 'linear-gradient(white, red)'
]

{ #category : #Tests }
CssLinearGradientTest >> testRepeatingGradientWithNoDirectionSpecified [

	| gradient |

	gradient := CssLinearGradient fading: #(#white #red).
	gradient beRepeating.

	self assert: gradient printString equals: 'repeating-linear-gradient(white, red)'
]
