"
I represent a location for a font inside an SVG file
"
Class {
	#name : #CssSVGFontLocation,
	#superclass : #CssObject,
	#instVars : [
		'url',
		'id'
	],
	#category : #'RenoirSt-Core-Fonts'
}

{ #category : #'Instance Creation' }
CssSVGFontLocation class >> at: anUrl withId: aString [ 
	
	^self new initializeAt: anUrl withId: aString 
]

{ #category : #Printing }
CssSVGFontLocation >> cssContentOn: aStream [

	aStream
		nextPutAll: ((String streamContents: [ :stream | url cssContentOn: stream ]) copyReplaceAll: '")' with: ('#<1s>")' expandMacrosWith: id))
]

{ #category : #'initialize-release' }
CssSVGFontLocation >> initializeAt: anUrl withId: aString [ 
	
	url := anUrl.
	id := aString 
]
