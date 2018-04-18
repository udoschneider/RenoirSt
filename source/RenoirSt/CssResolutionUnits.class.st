"
A CssResolutionUnits is a shared pool providing access to the commonly used Css Resolution Units
"
Class {
	#name : #CssResolutionUnits,
	#superclass : #Object,
	#classVars : [
		'DotsPerCentimeter',
		'DotsPerInch',
		'DotsPerPixelUnit'
	],
	#category : 'RenoirSt-Units'
}

{ #category : #Accessing }
CssResolutionUnits class >> dotsPerCentimeter [

	^DotsPerCentimeter 
]

{ #category : #Accessing }
CssResolutionUnits class >> dotsPerInch [

	^DotsPerInch 
]

{ #category : #Accessing }
CssResolutionUnits class >> dotsPerPixelUnit [

	^DotsPerPixelUnit 
]

{ #category : #'initialize-release' }
CssResolutionUnits class >> initialize [
	
	DotsPerCentimeter := 'dpcm'.
	DotsPerInch := 'dpi'.
	DotsPerPixelUnit := 'dppx'
]
