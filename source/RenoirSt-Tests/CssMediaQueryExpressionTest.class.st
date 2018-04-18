"
A CssMediaQueryExpressionTest is a test class for testing the behavior of CssMediaQueryExpression
"
Class {
	#name : #CssMediaQueryExpressionTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-MediaQueries'
}

{ #category : #Tests }
CssMediaQueryExpressionTest >> testCantCreateWithoutFeatureName [

	self
		should: [ CssMediaQueryExpression forFeatureNamed: '' ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :error | self assert: error messageText equals: 'A media feature name can''t be empty' ].

	self should: [ CssMediaQueryExpression forFeatureNamed: '' withValue: 1 px ] raise: InstanceCreationFailed
]

{ #category : #Tests }
CssMediaQueryExpressionTest >> testPrintStringWithValue [

	self assert: (CssMediaQueryExpression forFeatureNamed: 'width' withValue: 300 px) printString equals: '(width: 300px)'
]

{ #category : #Tests }
CssMediaQueryExpressionTest >> testPrintStringWithoutValue [

	self assert: (CssMediaQueryExpression forFeatureNamed: 'color') printString equals: '(color)'
]
