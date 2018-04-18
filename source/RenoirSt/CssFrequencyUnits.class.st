"
A CssFrequencyUnits is a shared pool providing access to the commonly used Css Frequency Units

"
Class {
	#name : #CssFrequencyUnits,
	#superclass : #Object,
	#classVars : [
		'Hertz',
		'KiloHertz'
	],
	#category : 'RenoirSt-Units'
}

{ #category : #Accessing }
CssFrequencyUnits class >> hertz [

	^Hertz 
]

{ #category : #'initialize-release' }
CssFrequencyUnits class >> initialize [
	Hertz := CssUnit identifiedBy: 'Hz'.
	KiloHertz  := CssUnit identifiedBy: 'kHz'
]

{ #category : #Accessing }
CssFrequencyUnits class >> kiloHertz [

	^KiloHertz 
]
