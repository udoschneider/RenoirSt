"
Document languages may contain attributes that are declared to be of type ID. What makes attributes of type ID special is that no two such attributes can have the same value in a conformant document, regardless of the type of the elements that carry them; whatever the document language, an ID typed attribute can be used to uniquely identify its element. In HTML all ID attributes are named ""id""; XML applications may name ID attributes differently, but the same restriction applies.

An ID-typed attribute of a document language allows authors to assign an identifier to one element instance in the document tree. An ID selector contains a ""number sign"" (U+0023, #) immediately followed by the ID value, which must be an CSS identifiers. An ID selector represents an element instance that has an identifier that matches the identifier in the ID selector.
"
Class {
	#name : #CssIdSelector,
	#superclass : #CssSelector,
	#instVars : [
		'id',
		'selector'
	],
	#category : 'RenoirSt-Selectors'
}

{ #category : #private }
CssIdSelector class >> assertIsASymbol: anObject [

	AssertionChecker enforce: [ anObject isSymbol ] because: [ '<1s> must be a symbol to be considered a valid id' expandMacrosWith: anObject printString ] raising: InstanceCreationFailed
]

{ #category : #'instance creation' }
CssIdSelector class >> for: anId over: aSelector [
	
	self assertIsASymbol: anId.
	^ self new initializeFor: anId over: aSelector
]

{ #category : #Printing }
CssIdSelector >> cssContentOn: aStream [

	selector cssContentOn: aStream.
	aStream nextPutAll: id printString
]

{ #category : #'initialize-release' }
CssIdSelector >> initializeFor: anId over: aSelector [ 

	id := anId.
	selector := aSelector 
]
