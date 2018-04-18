"
A IndentOnNewLineWriteStream is a write stream that adds automatically a tab after a new line.

"
Class {
	#name : #IndentOnNewLineWriteStream,
	#superclass : #Object,
	#instVars : [
		'stream'
	],
	#category : 'RenoirSt-Common'
}

{ #category : #'Instance Creation' }
IndentOnNewLineWriteStream class >> on: aWriteStream [ 
	
	^self new initializeOn: aWriteStream 
]

{ #category : #'initialize-release' }
IndentOnNewLineWriteStream >> initializeOn: aWriteStream [ 
	
	stream := aWriteStream 
]

{ #category : #'Stream-API' }
IndentOnNewLineWriteStream >> newLine [
	
	stream
		newLine;
		tab
]

{ #category : #'Stream-API' }
IndentOnNewLineWriteStream >> nextPut: aCharacter [ 
	
	stream nextPut: aCharacter 
]

{ #category : #'Stream-API' }
IndentOnNewLineWriteStream >> nextPutAll: aString [ 
	
	stream nextPutAll: aString 
]

{ #category : #'Stream-API' }
IndentOnNewLineWriteStream >> space [
	
	stream space
]

{ #category : #'Stream-API' }
IndentOnNewLineWriteStream >> tab [
	
	stream tab
]
