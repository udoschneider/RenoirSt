Class {
	#name : #CssKeyframesRule,
	#superclass : #CssObject,
	#instVars : [
		'keyframeName',
		'styleSheet',
		'webkitCompatibility'
	],
	#category : #'RenoirSt-Keyframes'
}

{ #category : #'Instance Creation' }
CssKeyframesRule class >> named: aName enabling: aCascadingStyleSheet withWebkitCompatibilityEnabled: aBoolean [
	
	^ self new
		initializeNamed: aName
		enabling: aCascadingStyleSheet
		withWebkitCompatibilityEnabled: aBoolean
]

{ #category : #Printing }
CssKeyframesRule >> appropriateSelector [

	^webkitCompatibility ifTrue: [ '@-webkit-keyframes' ] ifFalse: [ '@keyframes' ]
]

{ #category : #Printing }
CssKeyframesRule >> cssContentOn: aStream [
	aStream
		nextPutAll: self appropriateSelector;
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
CssKeyframesRule >> initializeNamed: aName enabling: aCascadingStyleSheet withWebkitCompatibilityEnabled: aBoolean [

	keyframeName := aName.
	styleSheet := aCascadingStyleSheet.
	webkitCompatibility := aBoolean
]
