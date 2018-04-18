"
A CssColorUnit is an abstract color unit for CSS
"
Class {
	#name : #CssColorUnit,
	#superclass : #CssObject,
	#category : 'RenoirSt-Colors'
}

{ #category : #Converting }
CssColorUnit >> identifiedBy: aString [

	self subclassResponsibility 
]

{ #category : #Converting }
CssColorUnit >> newWithAlpha: alphaValue [ 

	self subclassResponsibility 
]
