"
A CssToggle represents a CSS expression allowing descendant elements to cycle over a list of values instead of inheriting the same value.
"
Class {
	#name : #CssToggle,
	#superclass : #CssFunction,
	#instVars : [
		'values'
	],
	#category : 'RenoirSt'
}

{ #category : #'Instance Creation' }
CssToggle class >> cyclingOver: aCollection [ 
	
	^self new initializeCyclingOver: aCollection 
]

{ #category : #private }
CssToggle >> cssFunctionParametersContentOn: aWriteStream [

	values
		do: [ :value | value cssContentOn: aWriteStream ]
		separatedBy: [ 
			aWriteStream
				nextPut: $,;
				space ]
]

{ #category : #private }
CssToggle >> functionName [
	^ 'toggle'
]

{ #category : #'initialize-release' }
CssToggle >> initializeCyclingOver: aCollection [ 
	
	values := aCollection 
]
