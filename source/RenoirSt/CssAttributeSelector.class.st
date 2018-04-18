"
Selectors allow the representation of an element's attributes. When a selector is used as an expression to match against an element, attribute selectors must be considered to match an element if that element has an attribute that matches the attribute represented by the attribute selector.
"
Class {
	#name : #CssAttributeSelector,
	#superclass : #CssSelector,
	#instVars : [
		'selector',
		'attributeName',
		'matchingCondition'
	],
	#category : 'RenoirSt-Selectors'
}

{ #category : #'Instance Creation' }
CssAttributeSelector class >> attribute: anAttributeName of: aSelector beginsWith: aValue [
	^ self
		for: aSelector
		attribute: anAttributeName
		matchingCondition: (CssAttributeMatchingCondition condition: '^=' value: aValue)
]

{ #category : #'Instance Creation' }
CssAttributeSelector class >> attribute: anAttributeName of: aSelector endsWith: aValue [
	^ self
		for: aSelector
		attribute: anAttributeName
		matchingCondition: (CssAttributeMatchingCondition condition: '$=' value: aValue)
]

{ #category : #'Instance Creation' }
CssAttributeSelector class >> attribute: anAttributeName of: aSelector includes: aValue [
	
	^self
		for: aSelector
		attribute: anAttributeName
		matchingCondition: (CssAttributeMatchingCondition condition: '~=' value: aValue)
]

{ #category : #'Instance Creation' }
CssAttributeSelector class >> attribute: anAttributeName of: aSelector includesSubstring: aValue [
	^ self
		for: aSelector
		attribute: anAttributeName
		matchingCondition: (CssAttributeMatchingCondition condition: '*=' value: aValue)
]

{ #category : #'Instance Creation' }
CssAttributeSelector class >> firstValueOfAttribute: anAttributeName of: aSelector beginsWith: aValue [
	^ self
		for: aSelector
		attribute: anAttributeName
		matchingCondition: (CssAttributeMatchingCondition condition: '|=' value: aValue)
]

{ #category : #private }
CssAttributeSelector class >> for: aSelector attribute: aString matchingCondition: aCondition [

	^ self new initializeFor: aSelector attribute: aString matchingCondition: aCondition
]

{ #category : #'Instance Creation' }
CssAttributeSelector class >> having: aSelector theAttribute: aString [ 
	
	^self for: aSelector attribute: aString matchingCondition: ''
]

{ #category : #'Instance Creation' }
CssAttributeSelector class >> isAttribute: anAttributeName of: aSelector equalTo: aValue [
	
	^ self
		for: aSelector
		attribute: anAttributeName
		matchingCondition: (CssAttributeMatchingCondition condition: '=' value: aValue)
]

{ #category : #Printing }
CssAttributeSelector >> cssContentOn: aStream [
	
	selector cssContentOn: aStream.
	aStream nextPut: $[.
	attributeName cssContentOn: aStream.
	matchingCondition cssContentOn: aStream.
	aStream nextPut: $]
]

{ #category : #'initialize-release' }
CssAttributeSelector >> initializeFor: aSelector attribute: anAttributeName matchingCondition: aMatchingCondition [

	selector := aSelector.
	attributeName := anAttributeName.
	matchingCondition := aMatchingCondition 
]
