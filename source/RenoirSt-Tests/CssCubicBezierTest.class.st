Class {
	#name : #CssCubicBezierTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Easing'
}

{ #category : #tests }
CssCubicBezierTest >> testCubicBezier [

	| cubicBezierExpression |
	cubicBezierExpression := 
		CssCubicBezier 
			firstXAxis: 0.63 
			firstYAxis: 0.05 
			secondXAxis: 0.43 
			secondYAxis: 1.7.
	self assert: cubicBezierExpression printString equals: 'cubic-bezier(0.63, 0.05, 0.43, 1.7)'
]
