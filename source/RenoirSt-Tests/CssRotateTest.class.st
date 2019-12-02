Class {
	#name : #CssRotateTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Transformation'
}

{ #category : #tests }
CssRotateTest >> testRotateOnXAxis [

	| rotateExpression |
	rotateExpression := CssRotate onXAxisBy: 70 deg.
	
	self assert: rotateExpression printString equals: 'rotateX(70deg)'
]

{ #category : #tests }
CssRotateTest >> testRotateOnYAxis [

	| rotateExpression |
	rotateExpression := CssRotate onYAxisBy: 60 deg.
	
	self assert: rotateExpression printString equals: 'rotateY(60deg)'
]

{ #category : #tests }
CssRotateTest >> testRotateOnZAxis [

	| rotateExpression |
	rotateExpression := CssRotate onZAxisBy: 60 deg.
	
	self assert: rotateExpression printString equals: 'rotateZ(60deg)'
]

{ #category : #tests }
CssRotateTest >> testSimpleRotate [

	| rotateExpression |
	rotateExpression := CssRotate by: 270 deg.
	
	self assert: rotateExpression printString equals: 'rotate(270deg)'
]
