"
A CssGeneralSiblingCombinatorTest is a test class for testing the behavior of CssGeneralSiblingCombinator
"
Class {
	#name : #CssGeneralSiblingCombinatorTest,
	#superclass : #TestCase,
	#category : 'RenoirSt-Tests-Selectors'
}

{ #category : #Tests }
CssGeneralSiblingCombinatorTest >> testBuildingShortcut [

	| parent child |
	
	parent := CssUniversalSelector implicit class: 'custom'.
	child := CssTypeSelector ofType: 'div'.
	
	self assert: (parent ~ child) printString equals: '.custom ~ div'
]

{ #category : #Tests }
CssGeneralSiblingCombinatorTest >> testPrintString [

	| predecessor sucessor |
	
	predecessor := CssUniversalSelector implicit class: 'custom'.
	sucessor := CssTypeSelector ofType: 'div'.
	
	self assert: (CssGeneralSiblingCombinator between: predecessor and: sucessor) printString equals: '.custom ~ div'
]
