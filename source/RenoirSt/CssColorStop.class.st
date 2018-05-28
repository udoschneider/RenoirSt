"
A CssColorStop determines an specific position for a color in the gradient

"
Class {
	#name : #CssColorStop,
	#superclass : #CssObject,
	#instVars : [
		'color',
		'stop'
	],
	#category : #'RenoirSt-Colors'
}

{ #category : #'Instance Creation' }
CssColorStop class >> for: aCssColor at: aLenght [

	^ self new initializeFor: (self lookupColor: aCssColor) at: aLenght
]

{ #category : #Printing }
CssColorStop >> cssContentOn: aWriteStream [ 
	
	color cssContentOn: aWriteStream.
	aWriteStream space.
	stop cssContentOn: aWriteStream 
]

{ #category : #'initialize-release' }
CssColorStop >> initializeFor: aCssColor at: aLenght [
	color := aCssColor.
	stop := aLenght
]
