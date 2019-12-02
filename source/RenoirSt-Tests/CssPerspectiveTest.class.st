Class {
	#name : #CssPerspectiveTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Transformation'
}

{ #category : #tests }
CssPerspectiveTest >> testPerspective [

	| perspectiveExpression |
	perspectiveExpression := CssPerspective of: 100 px.
	
	self assert: perspectiveExpression printString equals: 'perspective(100px)'
]
