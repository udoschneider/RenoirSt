"
A CssLenghtUnitTest is a test class for testing the behavior of CssLenghtUnit
"
Class {
	#name : #CssUnitTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Units'
}

{ #category : #Tests }
CssUnitTest >> testCantCreateWithEmptyIdentifier [
	
	self
		should: [ CssUnit identifiedBy: '' ]
		raise: InstanceCreationFailed
		withExceptionDo: [:error | self assert: error messageText equals: 'A unit identifier can''t be empty']
]

{ #category : #Tests }
CssUnitTest >> testInstanceCreation [

	| unit |
	unit := CssUnit identifiedBy: 'px'.

	self assert: unit printString equals: 'px'
]
