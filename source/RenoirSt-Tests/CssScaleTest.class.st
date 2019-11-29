Class {
	#name : #CssScaleTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Transformation'
}

{ #category : #tests }
CssScaleTest >> testScaleOnAllAxes [

	| scaleExpression |
	scaleExpression := CssScale onXAxisBy: 2 onYAxisBy: 1 andZAxisBy: 2.
	
	self assert: scaleExpression printString equals: 'scale3d(2, 1, 2)'
]

{ #category : #tests }
CssScaleTest >> testScaleOnXAndYAxes [

	| scaleExpression |
	scaleExpression := CssScale onXAxisBy: 2 andYAxisBy: 1.
	
	self assert: scaleExpression printString equals: 'scale(2, 1)'
]

{ #category : #tests }
CssScaleTest >> testScaleOnXAxis [

	| scaleExpression |
	scaleExpression := CssScale onlyOnXAxisBy: 2.
	
	self assert: scaleExpression printString equals: 'scaleX(2)'
]

{ #category : #tests }
CssScaleTest >> testScaleOnYAxis [

	| scaleExpression |
	scaleExpression := CssScale onlyOnYAxisBy: 2.
	
	self assert: scaleExpression printString equals: 'scaleY(2)'
]

{ #category : #tests }
CssScaleTest >> testScaleOnZAxis [

	| scaleExpression |
	scaleExpression := CssScale onlyOnZAxisBy: 2.
	
	self assert: scaleExpression printString equals: 'scaleZ(2)'
]

{ #category : #tests }
CssScaleTest >> testSimpleScale [

	| scaleExpression |
	scaleExpression := CssScale by: 2.
	
	self assert: scaleExpression printString equals: 'scale(2)'
]
