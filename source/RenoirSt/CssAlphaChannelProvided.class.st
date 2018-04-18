"
A CssAlphaChannelProvided represents the presence of an alpha channel value
"
Class {
	#name : #CssAlphaChannelProvided,
	#superclass : #CssAlphaChannel,
	#instVars : [
		'value'
	],
	#category : 'RenoirSt-Colors'
}

{ #category : #private }
CssAlphaChannelProvided class >> assertBetweenZeroAndOne: aNumber [

	AssertionChecker
		enforce: [ aNumber between: 0 and: aNumber class one ]
		because: [ 'The alpha value (<1s>) must be between zero and one.' expandMacrosWith: aNumber printString ]
		raising: InstanceCreationFailed
]

{ #category : #'Instance Creation' }
CssAlphaChannelProvided class >> withValue: aNumber [ 
	
	self assertBetweenZeroAndOne: aNumber.
	^self new initializeWithValue: aNumber 
]

{ #category : #Enumerating }
CssAlphaChannelProvided >> componentsDo: aBlockClosure separatedBy: aSeparationBlock [

	aSeparationBlock value.
	aBlockClosure value: value
	
]

{ #category : #Accessing }
CssAlphaChannelProvided >> functionNameFor: aString [ 
	
	^'<1s>a' expandMacrosWith: aString 
]

{ #category : #'initialize-release' }
CssAlphaChannelProvided >> initializeWithValue: aNumber [ 

		value := aNumber 
]
