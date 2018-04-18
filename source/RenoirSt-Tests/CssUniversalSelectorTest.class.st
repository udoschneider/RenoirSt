"
An UniversalSelectorTest is a test class for testing the behavior of UniversalSelector
"
Class {
	#name : #CssUniversalSelectorTest,
	#superclass : #TestCase,
	#category : 'RenoirSt-Tests-Selectors'
}

{ #category : #tests }
CssUniversalSelectorTest >> testBuildingShortcut [
	
	| firstSelector secondSelector |
	
	firstSelector := CssUniversalSelector implicit class: 'custom'.
	secondSelector := CssTypeSelector ofType: 'div'.
	
	self assert: (firstSelector * secondSelector) printString equals: '.custom * div'
]

{ #category : #tests }
CssUniversalSelectorTest >> testPrintString [
	
	self
		assert: CssUniversalSelector implicit printString equals: '';
		assert: CssUniversalSelector explicit printString equals: '*'
]
