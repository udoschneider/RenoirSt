"
A CssDescendantCombinatorTest is a test class for testing the behavior of CssDescendantCombinator
"
Class {
	#name : #CssDescendantCombinatorTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Selectors'
}

{ #category : #Tests }
CssDescendantCombinatorTest >> testBuildingShortcuts [

	| ancestor descendant |

	ancestor := CssUniversalSelector implicit class: 'custom'.
	descendant := CssTypeSelector ofType: 'div'.

	self
		assert: (ancestor / descendant) printString equals: '.custom div';
		assert: ancestor div printString equals: '.custom div'
]

{ #category : #Tests }
CssDescendantCombinatorTest >> testPrintString [

	| ancestor descendant |
	
	ancestor := CssUniversalSelector implicit class: 'custom'.
	descendant := CssTypeSelector ofType: 'div'.
	
	self assert: (CssDescendantCombinator between: ancestor and: descendant) printString equals: '.custom div'
]
