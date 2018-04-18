"
A CssFunction represents an abstract CSS function

"
Class {
	#name : #CssFunction,
	#superclass : #CssObject,
	#category : 'RenoirSt'
}

{ #category : #Printing }
CssFunction >> cssContentOn: aWriteStream [
	
	aWriteStream
		nextPutAll: self functionName;
		nextPut: $(.
	self cssFunctionParametersContentOn: aWriteStream.
	aWriteStream nextPut: $)
]

{ #category : #private }
CssFunction >> cssFunctionParametersContentOn: aWriteStream [
	
	self subclassResponsibility 
]

{ #category : #private }
CssFunction >> functionName [
	
	self subclassResponsibility 
]
