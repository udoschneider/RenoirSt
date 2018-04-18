"
A CssRGBColorTest is a test class for testing the behavior of CssRGBColor
"
Class {
	#name : #CssRGBColorTest,
	#superclass : #TestCase,
	#category : 'RenoirSt-Tests-Colors'
}

{ #category : #Tests }
CssRGBColorTest >> testNewWithAlpha [

	| color colorWithAlpha |

	color := CssRGBColor red: 255 green: 0 blue: 0.

	self assert: color printString equals: 'rgb(255,0,0)'.

	colorWithAlpha := color newWithAlpha: 0.5.

	self assert: colorWithAlpha printString equals: 'rgba(255,0,0,0.5)'
]

{ #category : #Tests }
CssRGBColorTest >> testPrintString [
	
	| color |
	
	color := CssRGBColor red: 255 green: 0 blue: 0.
	
	self assert: color printString equals: 'rgb(255,0,0)'
]

{ #category : #Tests }
CssRGBColorTest >> testPrintStringUsingPercentageNotation [
	
	| color |
	
	color := CssRGBColor red: 100 percent green: 0 percent blue: 0 percent.
	
	self assert: color printString equals: 'rgb(100%,0%,0%)'.
]

{ #category : #Tests }
CssRGBColorTest >> testPrintStringWithAlpha [
	
	| color |
	
	color := CssRGBColor red: 255 green: 0 blue: 0 alpha: 0.5.
	
	self assert: color printString equals: 'rgba(255,0,0,0.5)'
]
