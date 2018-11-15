"
A CssIdentifiedColorTest is a test class for testing the behavior of CssIdentifiedColor
"
Class {
	#name : #CssIdentifiedColorTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Colors'
}

{ #category : #Tests }
CssIdentifiedColorTest >> testIdentifiedBy [

	| grey gray |

	grey := CssIdentifiedColor representing: (CssRGBColor red: 128 green: 128 blue: 128) identifiedBy: 'grey'.

	gray := grey identifiedBy: 'gray'.

	self
		assert: gray printString equals: 'gray';
		assert: grey printString equals: 'grey';
		assert: gray color printString equals: grey color printString
]

{ #category : #Tests }
CssIdentifiedColorTest >> testInstanceCreationFromHexaNotation [
	
	| red |
	
	red := CssIdentifiedColor fromHexadecimalNotation: #f00.
	
	self
		assert: red printString equals: '#f00';
		assert: red color printString equals: 'rgb(255,0,0)'.
		
	red := CssIdentifiedColor fromHexadecimalNotation: #ff0000.
	
	self
		assert: red printString equals: '#ff0000';
		assert: red color printString equals: 'rgb(255,0,0)'
]

{ #category : #Tests }
CssIdentifiedColorTest >> testInstanceCreationWithName [

	| blue |
	blue := CssIdentifiedColor
		representing: (CssRGBColor red: 0 percent green: 0 percent blue: 100 percent)
		identifiedBy: 'blue'.

	self assert: blue printString equals: 'blue'
]

{ #category : #Tests }
CssIdentifiedColorTest >> testInvalidInstanceCreationFromHexaNotation [
	
	self
		should: [ CssIdentifiedColor fromHexadecimalNotation: #'00' ]
		raise: InstanceCreationFailed
		withMessageText: 'Invalid hexadecimal notation for a color.'
]

{ #category : #Tests }
CssIdentifiedColorTest >> testNewWithAlpha [

	| blue |
	blue := CssIdentifiedColor
		representing: (CssRGBColor red: 0 percent green: 0 percent blue: 100 percent)
		identifiedBy: 'blue'.

	self assert: blue printString equals: 'blue'.
	
	self assert: (blue newWithAlpha: 0.5) printString equals: 'rgba(0%,0%,100%,0.5)'
]
