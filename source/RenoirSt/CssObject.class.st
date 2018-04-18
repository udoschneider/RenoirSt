"
A CssObject is the abstract superclass of the CSS renderable objects

"
Class {
	#name : #CssObject,
	#superclass : #Object,
	#category : #RenoirSt
}

{ #category : #Printing }
CssObject >> cssContentOn: aStream [

	self subclassResponsibility 
]

{ #category : #Printing }
CssObject >> printOn: aStream [

	self cssContentOn: aStream 
]
