Class {
	#name : #CssKeyframesRuleTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Keyframes'
}

{ #category : #tests }
CssKeyframesRuleTest >> testPrintStringOfSimpleKeyframes [

	| styleSheet keyframes |
	
	styleSheet := CascadingStyleSheet withAll: #().
	keyframes := CssKeyframesRule named: #test enabling: styleSheet.
	self assert: keyframes printString equals: '@keyframes test<n>{<n><t><n>}' expandMacros 
]
