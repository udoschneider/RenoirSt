Class {
	#name : #CssRotate3DTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Transformation'
}

{ #category : #tests }
CssRotate3DTest >> testRotateOnAllAxis [

	| rotateExpression |
	rotateExpression := CssRotate3D onXAxis: 1 yAxis: 0 zAxis: 0 by: 60 deg.
	
	self assert: rotateExpression printString equals: 'rotate3d(1, 0, 0, 60deg)'
]
