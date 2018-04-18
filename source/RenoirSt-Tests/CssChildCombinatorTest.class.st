"
A CssChildCombinatorTest is a test class for testing the behavior of CssChildCombinator
"
Class {
	#name : #CssChildCombinatorTest,
	#superclass : #TestCase,
	#category : 'RenoirSt-Tests-Selectors'
}

{ #category : #Tests }
CssChildCombinatorTest >> testBuildingShortcut [

	| parent child |
	
	parent := CssUniversalSelector implicit class: 'custom'.
	child := CssTypeSelector ofType: 'div'.
	
	self assert: (parent > child) printString equals: '.custom > div'
]

{ #category : #Tests }
CssChildCombinatorTest >> testPrintString [

	| parent child |
	
	parent := CssUniversalSelector implicit class: 'custom'.
	child := CssTypeSelector ofType: 'div'.
	
	self assert: (CssChildCombinator between: parent and: child) printString equals: '.custom > div'
]
