"
A CssComment is a representation of a textual comment
"
Class {
	#name : #CssComment,
	#superclass : #CssObject,
	#instVars : [
		'comment'
	],
	#category : #RenoirSt
}

{ #category : #'Instance Creation' }
CssComment class >> for: aCommentText [

	^self new initializeFor: aCommentText 
]

{ #category : #Printing }
CssComment >> cssContentOn: aStream [
	comment notEmpty
		ifFalse: [ ^ self ].
	aStream nextPutAll: '/*'.
	comment cssContentOn: aStream.
	aStream
		nextPutAll: '*/';
		newLine
]

{ #category : #'initialize-release' }
CssComment >> initializeFor: aCommentText [

	comment  := aCommentText 
]
