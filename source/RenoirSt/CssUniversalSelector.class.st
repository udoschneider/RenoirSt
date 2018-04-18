"
The universal selector represents the qualified name of any element type. 
It represents any single element in the document tree in any namespace (including those without a namespace) if no default namespace has been specified for selectors.
"
Class {
	#name : #CssUniversalSelector,
	#superclass : #CssSelector,
	#instVars : [
		'representation'
	],
	#category : 'RenoirSt-Selectors'
}

{ #category : #'Instance Creation' }
CssUniversalSelector class >> explicit [
	
	^self representedBy: '*'
]

{ #category : #'Instance Creation' }
CssUniversalSelector class >> implicit [
	
	^self representedBy: ''
]

{ #category : #private }
CssUniversalSelector class >> representedBy: aString [ 
	
	^self new initializeRepresentedBy: aString	
]

{ #category : #Printing }
CssUniversalSelector >> cssContentOn: aStream [

	aStream nextPutAll: representation 
]

{ #category : #'initialize-release' }
CssUniversalSelector >> initializeRepresentedBy: aString [ 
	
	representation := aString
]

{ #category : #testing }
CssUniversalSelector >> isImplicitUniversal [

	^ representation isEmpty
]
