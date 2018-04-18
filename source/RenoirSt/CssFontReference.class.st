"
I represent a font reference
"
Class {
	#name : #CssFontReference,
	#superclass : #CssObject,
	#category : 'RenoirSt-Fonts'
}

{ #category : #Concatenating }
CssFontReference >> , aCssFontReference [

	^CssObjectList with: self with: aCssFontReference 
]
