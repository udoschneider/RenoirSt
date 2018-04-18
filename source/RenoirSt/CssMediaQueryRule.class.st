"
A media query is a logical expression that is either true or false. A media query is true if the media type of the media query matches the media type of the device where the user agent is running (as defined in the ""Applies to"" line), and all expressions in the media query are true.
"
Class {
	#name : #CssMediaQueryRule,
	#superclass : #CssObject,
	#instVars : [
		'mediaType',
		'expressions',
		'styleSheet'
	],
	#category : #'RenoirSt-MediaQueries'
}

{ #category : #'Instance Creation' }
CssMediaQueryRule class >> ofType: aMediaType conforming: anExpressionCollection enabling: aCascadingStyleSheet [ 
	
	^self new initializeOfType: aMediaType conforming: anExpressionCollection enabling: aCascadingStyleSheet 
]

{ #category : #'Instance Creation' }
CssMediaQueryRule class >> ofType: aMediaType enabling: aCascadingStyleSheet [ 
	
	^self ofType: aMediaType conforming: #() enabling: aCascadingStyleSheet 
]

{ #category : #Printing }
CssMediaQueryRule >> cssContentOn: aStream [
	aStream
		nextPutAll: '@media';
		space.
	mediaType cssContentOn: aStream.
	self cssExpressionsContentOn: aStream.
	aStream
		newLine;
		nextPut: ${.
	self cssStatementsContentOn: aStream.
	aStream newLine.
	aStream nextPut: $}
]

{ #category : #private }
CssMediaQueryRule >> cssExpressionsContentOn: aStream [
	expressions
		do: [ :expression | 
			aStream
				space;
				nextPutAll: 'and';
				space.
			expression cssContentOn: aStream ]
]

{ #category : #private }
CssMediaQueryRule >> cssStatementsContentOn: aStream [
	| tabStream |
	tabStream := IndentOnNewLineWriteStream on: aStream.
	tabStream newLine.
	styleSheet cssContentOn: tabStream
]

{ #category : #'initialize-release' }
CssMediaQueryRule >> initializeOfType: aMediaType conforming: anExpressionCollection enabling: aCascadingStyleSheet [

	mediaType := aMediaType.
	expressions := anExpressionCollection.
	styleSheet := aCascadingStyleSheet
]
