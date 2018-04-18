"
A CssMathExpressionTest is a test class for testing the behavior of CssMathExpression
"
Class {
	#name : #CssMathExpressionTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Units'
}

{ #category : #Tests }
CssMathExpressionTest >> testChainedCalc [

	| mathExpression |

	mathExpression := (CssMathExpression on: 100 percent) / 3 - 2 * 1 em + 2 * 1 px.

	self assert: mathExpression printString equals: 'calc(100% / 3 - 2 * 1em + 2 * 1px)'
]

{ #category : #Tests }
CssMathExpressionTest >> testSimpleCalc [

	| mathExpression |

	mathExpression := (CssMathExpression on: 50 percent) - 2 em.

	self assert: mathExpression printString equals: 'calc(50% - 2em)'
]
