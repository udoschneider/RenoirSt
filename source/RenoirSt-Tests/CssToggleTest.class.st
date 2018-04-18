"
A CssTogleTest is a test class for testing the behavior of CssTogle
"
Class {
	#name : #CssToggleTest,
	#superclass : #TestCase,
	#category : 'RenoirSt-Tests'
}

{ #category : #Tests }
CssToggleTest >> testPrintString [

	self
		assert:
			(CssToggle
				cyclingOver:
					{CssConstants italic.
					CssConstants normal}) printString
		equals: 'toggle(italic, normal)'
]
