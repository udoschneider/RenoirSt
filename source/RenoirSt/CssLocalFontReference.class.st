"
I represent a local font reference
"
Class {
	#name : #CssLocalFontReference,
	#superclass : #CssFontReference,
	#instVars : [
		'fontName'
	],
	#category : #'RenoirSt-Fonts'
}

{ #category : #'Instance Creation' }
CssLocalFontReference class >> toFontNamed: aFontName [

	^self new initializeToFontNamed: aFontName 
]

{ #category : #Printing }
CssLocalFontReference >> cssContentOn: aStream [

	aStream nextPutAll: 'local('.
	fontName cssContentOn: aStream.
	aStream nextPutAll: ')'
]

{ #category : #'initialize-release' }
CssLocalFontReference >> initializeToFontNamed: aFontName [

	fontName := aFontName 
]
