"
A CssAbstractDeclaration defines the common behavior for the declarations.

"
Class {
	#name : #CssAbstractDeclaration,
	#superclass : #CssObject,
	#category : 'RenoirSt'
}

{ #category : #private }
CssAbstractDeclaration >> cssContentEndingOn: aStream [
	aStream nextPut: $;
]

{ #category : #Printing }
CssAbstractDeclaration >> cssContentOn: aStream [
	self property cssContentOn: aStream.
	aStream
		nextPut: $:;
		space.
	self value cssContentOn: aStream.
	self cssContentEndingOn: aStream
]

{ #category : #private }
CssAbstractDeclaration >> property [

	self subclassResponsibility 
]

{ #category : #private }
CssAbstractDeclaration >> value [

	self subclassResponsibility 
]
