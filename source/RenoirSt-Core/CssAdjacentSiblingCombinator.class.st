"
The adjacent sibling combinator is made of the ""plus sign"" (U+002B, +) character that separates two sequences of simple selectors. The elements represented by the two sequences share the same parent in the document tree and the element represented by the first sequence immediately precedes the element represented by the second one.
"
Class {
	#name : #CssAdjacentSiblingCombinator,
	#superclass : #CssSelector,
	#instVars : [
		'predecessor',
		'successor'
	],
	#category : #'RenoirSt-Core-Selectors'
}

{ #category : #'Instance Creation' }
CssAdjacentSiblingCombinator class >> between: aPredecessorSelector and: aSuccessorSelector [ 
	
	^self new initializeBetween: aPredecessorSelector and: aSuccessorSelector 
]

{ #category : #Printing }
CssAdjacentSiblingCombinator >> cssContentOn: aStream [
	
	predecessor cssContentOn: aStream.
	aStream
		space;
		nextPut: $+;
		space.
	successor cssContentOn: aStream
]

{ #category : #'initialize-release' }
CssAdjacentSiblingCombinator >> initializeBetween: aPredecessorSelector and: aSuccessorSelector [ 

	predecessor := aPredecessorSelector.
	successor := aSuccessorSelector 
]
