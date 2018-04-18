"
The class attribute assigns one or more class names to an element. The element may be said to belong to these classes. A class name may be shared by several element instances. The class attribute has several roles:

- As a style sheet selector (when an author wishes to assign style information to a set of elements).
- For general purpose processing by user agents.
"
Class {
	#name : #CssClassSelector,
	#superclass : #CssSelector,
	#instVars : [
		'cssClass',
		'parentSelector'
	],
	#category : #'RenoirSt-Selectors'
}

{ #category : #'instance creation' }
CssClassSelector class >> for: aStringOrSymbol over: aSelector [ 
	
	^self new initializeFor: aStringOrSymbol asString over: aSelector 

]

{ #category : #Printing }
CssClassSelector >> cssContentOn: aStream [
	
	parentSelector cssContentOn: aStream.
	aStream
		nextPut: $.;
		nextPutAll: cssClass
]

{ #category : #'initialize-release' }
CssClassSelector >> initializeFor: aString over: aSelector [
	
	cssClass := aString.
	parentSelector := aSelector
]
