"
A CssTimeUnits is a shared pool providing access to the commonly used Css Time Units

"
Class {
	#name : #CssTimeUnits,
	#superclass : #Object,
	#classVars : [
		'Millisecond',
		'Second'
	],
	#category : 'RenoirSt-Units'
}

{ #category : #'initialize-release' }
CssTimeUnits class >> initialize [
	Second := CssUnit identifiedBy: 's'.
	Millisecond := CssUnit identifiedBy: 'ms'
]

{ #category : #Accessing }
CssTimeUnits class >> millisecond [

	^Millisecond 
]

{ #category : #Accessing }
CssTimeUnits class >> second [

	^Second 
]
