"
A CssMediaQueryRuleTest is a test class for testing the behavior of CssMediaQueryRule
"
Class {
	#name : #CssMediaQueryRuleTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-MediaQueries'
}

{ #category : #Tests }
CssMediaQueryRuleTest >> testPrintStringOfSimpleMediaQuery [

	| styleSheet mediaQuery |
	styleSheet := CascadingStyleSheet withAll: #().
	mediaQuery := CssMediaQueryRule ofType: CssMediaQueryConstants screen enabling: styleSheet.

	self assert: mediaQuery printString equals: '@media screen<n>{<n><t><n>}' expandMacros
]

{ #category : #Tests }
CssMediaQueryRuleTest >> testPrintStringWithExpressions [

	| styleSheet mediaQuery |
	styleSheet := CascadingStyleSheet withAll: #().
	mediaQuery := CssMediaQueryRule
		ofType: CssMediaQueryConstants screen
		conforming:
			{(CssMediaQueryExpression forFeatureNamed: 'color').
			(CssMediaQueryExpression forFeatureNamed: 'orientation' withValue: 'landscape')}
		enabling: styleSheet.

	self assert: mediaQuery printString equals: '@media screen and (color) and (orientation: landscape)<n>{<n><t><n>}' expandMacros
]
