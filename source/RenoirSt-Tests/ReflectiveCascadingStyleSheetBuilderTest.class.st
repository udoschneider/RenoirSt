"
A ReflectiveCascadingStyleSheetBuilderTest is a test class for testing the behavior of ReflectiveCascadingStyleSheetBuilder
"
Class {
	#name : #ReflectiveCascadingStyleSheetBuilderTest,
	#superclass : #TestCase,
	#category : 'RenoirSt-Tests'
}

{ #category : #'tests-building' }
ReflectiveCascadingStyleSheetBuilderTest >> testBuild [

	self assert: ReflectiveCascadingStyleSheetBuilder new build printString isEmpty
]
