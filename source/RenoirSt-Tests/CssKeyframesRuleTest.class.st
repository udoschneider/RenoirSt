Class {
	#name : #CssKeyframesRuleTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Keyframes'
}

{ #category : #tests }
CssKeyframesRuleTest >> testPrintStringOfSimpleKeyframes [

	| styleSheet keyframes |
	
	styleSheet := CascadingStyleSheet withAll: #().
	keyframes := CssKeyframesRule named: #test enabling: styleSheet withWebkitCompatibilityEnabled: false.
	self assert: keyframes printString equals: '@keyframes test<n>{<n><t><n>}' expandMacros 
]

{ #category : #tests }
CssKeyframesRuleTest >> testPrintStringOfSimpleWebkitCompatibleKeyframes [

	| styleSheet keyframes |
	
	styleSheet := CascadingStyleSheet withAll: #().
	keyframes := CssKeyframesRule named: #test enabling: styleSheet withWebkitCompatibilityEnabled: true.
	self assert: keyframes printString equals: '@-webkit-keyframes test<n>{<n><t><n>}' expandMacros 
]
