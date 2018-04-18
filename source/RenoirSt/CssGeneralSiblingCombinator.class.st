"
The general sibling combinator is made of the ""tilde"" (U+007E, ~) character that separates two sequences of simple selectors. The elements represented by the two sequences share the same parent in the document tree and the element represented by the first sequence precedes (not necessarily immediately) the element represented by the second one.
"
Class {
	#name : #CssGeneralSiblingCombinator,
	#superclass : #CssSelector,
	#instVars : [
		'predecessor',
		'successor'
	],
	#category : #'RenoirSt-Selectors'
}

{ #category : #'Instance Creation' }
CssGeneralSiblingCombinator class >> between: aPredecessorSelector and: aSuccessorSelector [ 
	
	^self new initializeBetween: aPredecessorSelector and: aSuccessorSelector
]

{ #category : #Printing }
CssGeneralSiblingCombinator >> cssContentOn: aStream [
	
	predecessor cssContentOn: aStream.
	aStream
		space;
		nextPut: $~;
		space.
	successor cssContentOn: aStream
]

{ #category : #'initialize-release' }
CssGeneralSiblingCombinator >> initializeBetween: aPredecessorSelector and: aSuccessorSelector [

	predecessor := aPredecessorSelector.
	successor := aSuccessorSelector 
]
