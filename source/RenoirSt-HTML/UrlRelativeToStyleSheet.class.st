"
I represent a URL that must be considered relative to the style sheet when used in a style sheet
"
Class {
	#name : #UrlRelativeToStyleSheet,
	#superclass : #CssObject,
	#instVars : [
		'url'
	],
	#category : 'RenoirSt-HTML'
}

{ #category : #'Instance Creation' }
UrlRelativeToStyleSheet class >> on: aRelativeUrl [

	^self new initializeOn: aRelativeUrl 
]

{ #category : #Printing }
UrlRelativeToStyleSheet >> cssContentOn: aStream [

	url cssContentRelativeToStyleSheetOn: aStream
	
]

{ #category : #'initialize-release' }
UrlRelativeToStyleSheet >> initializeOn: aRelativeUrl [

	url := aRelativeUrl
]
