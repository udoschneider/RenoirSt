Class {
	#name : #CssSkewTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Transformation'
}

{ #category : #tests }
CssSkewTest >> testSimpleSkew [

	| skewExpression |
	skewExpression := CssSkew by: 45 deg.
	
	self assert: skewExpression printString equals: 'skew(45deg)'
]

{ #category : #tests }
CssSkewTest >> testSkewOnX [

	| skewExpression |
	skewExpression := CssSkew onlyOnXAxisBy: 45 deg.
	
	self assert: skewExpression printString equals: 'skewX(45deg)'
]

{ #category : #tests }
CssSkewTest >> testSkewOnXandYAxes [

	| skewExpression |
	skewExpression := CssSkew onXAxisBy: 45 deg andYAxisBy: 50 deg.
	
	self assert: skewExpression printString equals: 'skew(45deg, 50deg)'
]

{ #category : #tests }
CssSkewTest >> testSkewOnY [

	| skewExpression |
	skewExpression := CssSkew onlyOnYAxisBy: 45 deg.
	
	self assert: skewExpression printString equals: 'skewY(45deg)'
]
