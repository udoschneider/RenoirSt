"
Pseudo-elements create abstractions about the document tree beyond those specified by the document language. For instance, document languages do not offer mechanisms to access the first letter or first line of an element's content. Pseudo-elements allow authors to refer to this otherwise inaccessible information. Pseudo-elements may also provide authors a way to refer to content that does not exist in the source document (e.g., the ::before and ::after pseudo-elements give access to generated content).

A pseudo-element is made of two colons (::) followed by the name of the pseudo-element.

"
Class {
	#name : #CssPseudoElementSelector,
	#superclass : #CssSelector,
	#instVars : [
		'selector',
		'pseudoElementName'
	],
	#category : 'RenoirSt-Selectors'
}

{ #category : #'Instance Creation' }
CssPseudoElementSelector class >> after: aSelector [ 
	
	^self named: 'after' of: aSelector 
]

{ #category : #'Instance Creation' }
CssPseudoElementSelector class >> before: aSelector [ 
	
	^self named: 'before' of: aSelector 
]

{ #category : #'Instance Creation' }
CssPseudoElementSelector class >> firstLetterOf: aSelector [ 
	
	^self named: 'first-letter' of: aSelector 
]

{ #category : #'Instance Creation' }
CssPseudoElementSelector class >> firstLineOf: aSelector [ 
	
	 ^self named: 'first-line' of: aSelector 
]

{ #category : #private }
CssPseudoElementSelector class >> named: aString of: aSelector [ 
	
	^self new initializeNamed: aString of: aSelector
]

{ #category : #Printing }
CssPseudoElementSelector >> cssContentOn: aStream [ 
	
	selector cssContentOn: aStream.
	aStream nextPutAll: '::'.
	pseudoElementName cssContentOn: aStream
]

{ #category : #'initialize-release' }
CssPseudoElementSelector >> initializeNamed: aString of: aSelector [ 
	
	selector := aSelector.
	pseudoElementName := aString
]
