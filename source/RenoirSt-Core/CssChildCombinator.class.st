"
A child combinator describes a childhood relationship between two elements. A child combinator is made of the ""greater-than sign"" (U+003E, >) character and separates two sequences of simple selectors.
"
Class {
	#name : #CssChildCombinator,
	#superclass : #CssSelector,
	#instVars : [
		'parent',
		'child'
	],
	#category : #'RenoirSt-Core-Selectors'
}

{ #category : #'Instance Creation' }
CssChildCombinator class >> between: aParentSelector and: aChildSelector [ 
	
	^self new initializeBetween: aParentSelector and: aChildSelector 

]

{ #category : #Printing }
CssChildCombinator >> cssContentOn: aStream [

	parent cssContentOn: aStream.
	aStream
		space;
		nextPut: $>;
		space.
	child cssContentOn: aStream
]

{ #category : #'initialize-release' }
CssChildCombinator >> initializeBetween: aParentSelector and: aChildSelector [ 

	parent  := aParentSelector.
	child := aChildSelector 
]
