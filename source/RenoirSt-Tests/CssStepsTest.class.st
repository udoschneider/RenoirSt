Class {
	#name : #CssStepsTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Easing'
}

{ #category : #tests }
CssStepsTest >> testSimpleSteps [

	| translateExpression |
	translateExpression := CssSteps by: 1.
	
	self assert: translateExpression printString equals: 'steps(1)'
]

{ #category : #tests }
CssStepsTest >> testStepsWithDirection [

	| translateExpression |
	translateExpression := CssSteps by: 1 direction: #start.
	
	self assert: translateExpression printString equals: 'steps(1, start)'
]
