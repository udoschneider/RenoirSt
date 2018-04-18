"
A CssColor is a color suitable for use in CSS

"
Class {
	#name : #CssColor,
	#superclass : #CssColorUnit,
	#category : #'RenoirSt-Colors'
}

{ #category : #private }
CssColor >> componentsDo: aBlockClosure separatedBy: aSeparationBlock [ 
	
	self subclassResponsibility 
]

{ #category : #Printing }
CssColor >> cssContentOn: aWriteStream [
	aWriteStream
		nextPutAll: self functionName;
		nextPut: $(.
	self componentsDo: [ :component | component cssContentOn: aWriteStream ] separatedBy: [ aWriteStream nextPut: $, ].
	aWriteStream nextPut: $)
]

{ #category : #private }
CssColor >> functionName [
	
	self subclassResponsibility 
]

{ #category : #Converting }
CssColor >> identifiedBy: aString [

	 ^CssIdentifiedColor representing: self identifiedBy: aString 
]
