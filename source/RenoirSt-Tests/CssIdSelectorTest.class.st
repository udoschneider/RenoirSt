"
A CssIdSelectorTest is a test class for testing the behavior of CssIdSelector
"
Class {
	#name : #CssIdSelectorTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Selectors'
}

{ #category : #Tests }
CssIdSelectorTest >> testBuildingShortcut [

	self assert: (CssUniversalSelector explicit id: #pastoral ) printString equals: '*#pastoral'
]

{ #category : #Tests }
CssIdSelectorTest >> testIdMustBeASymbol [

	self
		should: [ CssIdSelector for: 'pastoral' over: CssUniversalSelector explicit ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :error | self assert: error messageText equals: ('<1s> must be a symbol to be considered a valid id' expandMacrosWith: 'pastoral' printString) ]
]

{ #category : #Tests }
CssIdSelectorTest >> testPrintString [

	self assert: (CssIdSelector for: #pastoral over: CssUniversalSelector explicit) printString equals: '*#pastoral'
]
