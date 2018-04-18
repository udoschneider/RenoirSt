"
There are two types of length units: relative and absolute. Relative length units specify a length relative to another length property. Style sheets that use relative units will more easily scale from one medium to another (e.g., from a computer display to a laser printer).
"
Class {
	#name : #CssUnit,
	#superclass : #CssObject,
	#instVars : [
		'identifier'
	],
	#category : 'RenoirSt-Units'
}

{ #category : #Preconditions }
CssUnit class >> assertNotEmpty: aString [

	AssertionChecker refuse: [ aString isEmpty ] because: 'A unit identifier can''t be empty' raising: InstanceCreationFailed
]

{ #category : #'Instance Creation' }
CssUnit class >> identifiedBy: anIdentifier [

	self assertNotEmpty: anIdentifier.
	^self new initializeIdentifiedBy: anIdentifier
]

{ #category : #Printing }
CssUnit >> cssContentOn: aStream [ 
	
	identifier cssContentOn: aStream 
]

{ #category : #'initialize-release' }
CssUnit >> initializeIdentifiedBy: anIdentifier [

	identifier := anIdentifier 
]
