"
A CssSelectorGroupTest is a test class for testing the behavior of CssSelectorGroup
"
Class {
	#name : #CssSelectorGroupTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Selectors'
}

{ #category : #Tests }
CssSelectorGroupTest >> testBuildingShortcut [
	
	| firstSelector secondSelector |
	
	firstSelector := CssUniversalSelector implicit class: 'custom'.
	secondSelector := CssTypeSelector ofType: 'div'.
	
	self
		assert: (firstSelector , secondSelector) printString
		equals: '.custom ,<n>div' expandMacros;

		assert: (firstSelector , secondSelector , secondSelector) printString
		equals: '.custom ,<n>div ,<n>div' expandMacros
]

{ #category : #Tests }
CssSelectorGroupTest >> testPrintString [
	
	| firstSelector secondSelector |
	
	firstSelector := CssUniversalSelector implicit class: 'custom'.
	secondSelector := CssTypeSelector ofType: 'div'.
	
	self
		assert: (CssSelectorGroup with: firstSelector with: secondSelector) printString
		equals: '.custom ,<n>div' expandMacros
]
