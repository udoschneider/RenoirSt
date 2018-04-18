"
A CssMathExpression represents a calc() function
"
Class {
	#name : #CssMathExpression,
	#superclass : #CssFunction,
	#instVars : [
		'operands',
		'operators'
	],
	#category : 'RenoirSt-Units'
}

{ #category : #'Instance Creation' }
CssMathExpression class >> on: aCssValue [

	^self new initializeOn: aCssValue 
]

{ #category : #'math functions' }
CssMathExpression >> * aCssValue [
	self addOperand: aCssValue andOperator: '*'
]

{ #category : #'math functions' }
CssMathExpression >> + aCssValue [
	self addOperand: aCssValue andOperator: '+'
]

{ #category : #'math functions' }
CssMathExpression >> - aCssValue [
	self addOperand: aCssValue andOperator: '-'
]

{ #category : #'math functions' }
CssMathExpression >> /aCssValue [
	self addOperand: aCssValue andOperator: '/'
]

{ #category : #private }
CssMathExpression >> addOperand: aCssValue andOperator: anOperator [

	operands add: aCssValue.
	operators add: anOperator
]

{ #category : #private }
CssMathExpression >> cssFunctionParametersContentOn: aWriteStream [
	
	"There's always one operand more than operations, the first one."
	operands first cssContentOn: aWriteStream.
	operands copyWithoutFirst
		doWithIndex: [ :operand :index | 
			aWriteStream space.
			(operators at: index) cssContentOn: aWriteStream.
			aWriteStream space.
			operand cssContentOn: aWriteStream ]
]

{ #category : #private }
CssMathExpression >> functionName [

	^'calc'
]

{ #category : #'initialize-release' }
CssMathExpression >> initializeOn: aCssValue [

	operands := OrderedCollection with: aCssValue.
	operators := OrderedCollection new
]
