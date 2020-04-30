"
A type selector is the name of a document language element type written using the syntax of CSS qualified names. A type selector represents an instance of the element type in the document tree.
"
Class {
	#name : #CssTypeSelector,
	#superclass : #CssSelector,
	#instVars : [
		'elementType'
	],
	#category : #'RenoirSt-Core-Selectors'
}

{ #category : #'Instance Creation' }
CssTypeSelector class >> ofType: aString [

	^ self new initializeOfType: aString 
]

{ #category : #Printing }
CssTypeSelector >> cssContentOn: aStream [

	aStream nextPutAll: elementType 
]

{ #category : #'initialize-release' }
CssTypeSelector >> initializeOfType: aString [
	
	elementType  := aString. 
]
