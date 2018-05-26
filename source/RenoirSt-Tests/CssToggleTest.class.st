"
A CssTogleTest is a test class for testing the behavior of CssTogle
"
Class {
	#name : #CssToggleTest,
	#superclass : #TestCase,
	#pools : [
		'RenoirSt'
	],
	#category : #'RenoirSt-Tests-Common'
}

{ #category : #Tests }
CssToggleTest >> testPrintString [

	self assert: (CssToggle cyclingOver: #(#italic #normal)) printString equals: 'toggle(italic, normal)'
]
