Class {
	#name : #CssKeyframesRule,
	#superclass : #CssObject,
	#instVars : [
		'keyframeName',
		'styleSheet'
	],
	#category : #'RenoirSt-Core-Keyframes'
}

{ #category : #'Instance Creation' }
CssKeyframesRule class >> named: aName enabling: aCascadingStyleSheet [
	
	^ self new initializeNamed: aName enabling: aCascadingStyleSheet
]

{ #category : #Printing }
CssKeyframesRule >> cssContentOn: aStream [
	aStream
		nextPutAll: '@keyframes';
		space.
	keyframeName cssContentOn: aStream.
	aStream
		newLine;
		nextPut: ${.
	self cssStatementsContentOn: aStream.
	aStream
		newLine;
		nextPut: $}
]

{ #category : #Printing }
CssKeyframesRule >> cssStatementsContentOn: aStream [
	| tabStream |
	tabStream := IndentOnNewLineWriteStream on: aStream.
	tabStream newLine.
	styleSheet cssContentOn: tabStream
]

{ #category : #initialization }
CssKeyframesRule >> initializeNamed: aName enabling: aCascadingStyleSheet [

	keyframeName := aName.
	styleSheet := aCascadingStyleSheet
]
