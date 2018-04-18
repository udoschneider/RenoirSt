"
A CssGradientComponent represents a part of a gradient
"
Class {
	#name : #CssGradientComponent,
	#superclass : #CssObject,
	#instVars : [
		'direction'
	],
	#category : 'RenoirSt-Colors'
}

{ #category : #'Instance Creation' }
CssGradientComponent class >> on: aCssValue [

	^self new initializeOn: aCssValue 
]

{ #category : #Printing }
CssGradientComponent >> cssContentOn: aWriteStream [
	
	direction cssContentOn: aWriteStream.
	aWriteStream
		nextPut: $,;
		space
]

{ #category : #'initialize-release' }
CssGradientComponent >> initializeOn: aCssValue [

	direction := aCssValue 
]
