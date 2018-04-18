"
I represent an external font reference
"
Class {
	#name : #CssExternalFontReference,
	#superclass : #CssFontReference,
	#instVars : [
		'url',
		'format'
	],
	#category : #'RenoirSt-Fonts'
}

{ #category : #'Instance Creation' }
CssExternalFontReference class >> locatedAt: anUrl [ 
	
	^self locatedAt: anUrl withFormat: ''
]

{ #category : #'Instance Creation' }
CssExternalFontReference class >> locatedAt: anUrl withFormat: aFontFormatString [
		
	^self new initializeLocatedAt: anUrl withFormat: aFontFormatString 
]

{ #category : #'Instance Creation' }
CssExternalFontReference class >> svgFontLocatedAt: aUrl withId: aString [

	^ self locatedAt: (CssSVGFontLocation at: aUrl withId: aString) withFormat: CssFontConstants svg
]

{ #category : #Printing }
CssExternalFontReference >> cssContentOn: aStream [

	url cssContentOn: aStream.
	format notEmpty
		ifTrue: [ aStream
				space;
				nextPutAll: 'format(';
				nextPut: $".
			format cssContentOn: aStream.
			aStream
				nextPut: $";
				nextPut: $) ]
]

{ #category : #'initialize-release' }
CssExternalFontReference >> initializeLocatedAt: anUrl withFormat: aString [ 

	url := anUrl.
	format := aString 
]
