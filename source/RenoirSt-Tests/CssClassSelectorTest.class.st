"
A CssClassSelectorTest is a test class for testing the behavior of CssClassSelector
"
Class {
	#name : #CssClassSelectorTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Selectors'
}

{ #category : #Tests }
CssClassSelectorTest >> testBuildingShortcut [

	self
		assert: (CssUniversalSelector implicit class: 'pastoral') printString equals: '.pastoral';
		assert: (CssUniversalSelector explicit class: #pastoral) printString equals: '*.pastoral'
]

{ #category : #Tests }
CssClassSelectorTest >> testPrintString [

	self
		assert: (CssClassSelector for: 'pastoral' over: CssUniversalSelector implicit) printString equals: '.pastoral';
		assert: (CssClassSelector for: #pastoral over: CssUniversalSelector explicit) printString equals: '*.pastoral'
]
