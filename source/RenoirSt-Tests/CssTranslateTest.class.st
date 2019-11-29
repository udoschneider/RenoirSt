Class {
	#name : #CssTranslateTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Transformation'
}

{ #category : #tests }
CssTranslateTest >> testSimpleTranslate [

	| translateExpression |
	translateExpression := CssTranslate by: 100 px.
	
	self assert: translateExpression printString equals: 'translate(100px)'
]

{ #category : #tests }
CssTranslateTest >> testTranslateForAllAxes [

	| translateExpression |
	translateExpression := CssTranslate onXAxisBy: 100 px onYAxisBy: 100 px andZAxisBy: 100 px.
	
	self assert: translateExpression printString equals: 'translate3d(100px, 100px, 100px)'
]

{ #category : #tests }
CssTranslateTest >> testTranslateForXandYAxes [

	| translateExpression |
	translateExpression := CssTranslate onXAxisBy: 100 px andYAxisBy: 100 px.
	
	self assert: translateExpression printString equals: 'translate(100px, 100px)'
]

{ #category : #tests }
CssTranslateTest >> testTranslateOnXAxis [

	| translateExpression |
	translateExpression := CssTranslate onlyOnXAxisBy: 100 px.
	
	self assert: translateExpression printString equals: 'translateX(100px)'
]

{ #category : #tests }
CssTranslateTest >> testTranslateOnYAxis [

	| translateExpression |
	translateExpression := CssTranslate onlyOnYAxisBy: 100 px.
	
	self assert: translateExpression printString equals: 'translateY(100px)'
]

{ #category : #tests }
CssTranslateTest >> testTranslateOnZAxis [

	| translateExpression |
	translateExpression := CssTranslate onlyOnZAxisBy: 100 px.
	
	self assert: translateExpression printString equals: 'translateZ(100px)'
]
