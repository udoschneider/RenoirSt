"
A CssFallbackSpecified specifies that a fallback for a CSS function is provided
"
Class {
	#name : #CssFallbackSpecified,
	#superclass : #CssObject,
	#instVars : [
		'value'
	],
	#category : #'RenoirSt-Core-Units'
}

{ #category : #'Instance Creation' }
CssFallbackSpecified class >> withValue: aCssValue [

	^self new initializeWithValue: aCssValue
]

{ #category : #Printing }
CssFallbackSpecified >> cssContentOn: aWriteStream [
	
	aWriteStream
		nextPut: $,;
		space.
	value cssContentOn: aWriteStream
]

{ #category : #'initialize - release' }
CssFallbackSpecified >> initializeWithValue: aCssValue [
	value := aCssValue
]
