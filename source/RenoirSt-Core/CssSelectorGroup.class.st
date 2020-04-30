"
A comma-separated list of selectors represents the union of all elements selected by each of the individual selectors in the list. (A comma is U+002C.) For example, in CSS when several selectors share the same declarations, they may be grouped into a comma-separated list. White space may appear before and/or after the comma.

"
Class {
	#name : #CssSelectorGroup,
	#superclass : #CssSelector,
	#instVars : [
		'selectors'
	],
	#category : #'RenoirSt-Core-Selectors'
}

{ #category : #'Instance Creation' }
CssSelectorGroup class >> with: aSelector with: anotherSelector [

	^ self new initializeWithAll: (OrderedCollection with: aSelector with: anotherSelector)
]

{ #category : #'building-combinators' }
CssSelectorGroup >> , aSelector [

	selectors add: aSelector
]

{ #category : #Printing }
CssSelectorGroup >> cssContentOn: aStream [
	
	selectors
		do: [ :selector | selector cssContentOn: aStream ]
		separatedBy: [ 
			aStream
				space;
				nextPut: $,;
				newLine ]
]

{ #category : #'initialize-release' }
CssSelectorGroup >> initializeWithAll: aCollection [ 
	
	selectors := aCollection 
]
