Class {
	#name : #CssKeyframesRuleBuilderTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Keyframes'
}

{ #category : #tests }
CssKeyframesRuleBuilderTest >> testSimpleBuilding [

	| builder |
	builder := CssKeyframesRuleBuilder new.

	self
		assert: builder build printString
		equals: '@keyframes <n>{<n><t><n>}' expandMacros
]

{ #category : #tests }
CssKeyframesRuleBuilderTest >> testSimpleWebkitCompatibleBuilding [

	| builder |
	builder := CssKeyframesRuleBuilder new.
	builder enableWebkitCompatibility.

	self
		assert: builder build printString
		equals: '@-webkit-keyframes <n>{<n><t><n>}' expandMacros
]
