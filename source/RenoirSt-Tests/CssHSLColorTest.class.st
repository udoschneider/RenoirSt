"
A CssHSLColorTest is a test class for testing the behavior of CssHSLColor
"
Class {
	#name : #CssHSLColorTest,
	#superclass : #TestCase,
	#category : 'RenoirSt-Tests-Colors'
}

{ #category : #Tests }
CssHSLColorTest >> testNewWithAlpha [

	| color colorWithAlpha |

	color := CssHSLColor hue: 120 saturation: 100 percent lightness: 50 percent.

	self assert: color printString equals: 'hsl(120,100%,50%)'.

	colorWithAlpha := color newWithAlpha: 0.75.

	self assert: colorWithAlpha printString equals: 'hsla(120,100%,50%,0.75)'
]

{ #category : #Tests }
CssHSLColorTest >> testPrintString [
	
	| color |
	
	color := CssHSLColor hue: 120 saturation: 100 percent lightness: 50 percent.
	
	self assert: color printString equals: 'hsl(120,100%,50%)'
]

{ #category : #Tests }
CssHSLColorTest >> testPrintStringWithAlpha [
	
	| color |
	
	color := CssHSLColor hue: 120 saturation: 100 percent lightness: 50 percent alpha: 0.75.
	
	self assert: color printString equals: 'hsla(120,100%,50%,0.75)'
]
