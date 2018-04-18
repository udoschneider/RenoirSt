"
In a radial gradient, rather than colors smoothly fading from one side of the gradient box to the other as with linear gradients, they instead emerge from a single point and smoothly spread outward in a circular or elliptical shape.
"
Class {
	#name : #CssRadialGradient,
	#superclass : #CssGradient,
	#instVars : [
		'shape',
		'colorStops',
		'functionName'
	],
	#category : #'RenoirSt-Colors'
}

{ #category : #'Instance Creation' }
CssRadialGradient class >> circular: aRadiusOrKeyword at: aPosition fading: colorStops [ 
	
	^self shape: (CssGradientComponent on: { aRadiusOrKeyword . 'circle'. 'at'. aPosition }) fading: colorStops
]

{ #category : #'Instance Creation' }
CssRadialGradient class >> circular: aRadiusOrKeyword fading: colorStops [
	
	^self shape: (CssGradientComponent on: {aRadiusOrKeyword. 'circle'}) fading: colorStops 
]

{ #category : #'Instance Creation' }
CssRadialGradient class >> elliptical: aCssValue at: aPosition fading: colorStops [
	
	^ self
		shape:
			(CssGradientComponent
				on:
					{aCssValue.
					'ellipse'.
					'at'.
					aPosition})
		fading: colorStops
]

{ #category : #'Instance Creation' }
CssRadialGradient class >> elliptical: aCssValue fading: colorStops [
	
	^self shape: (CssGradientComponent on: {aCssValue. 'ellipse'}) fading: colorStops 
]

{ #category : #'Instance Creation' }
CssRadialGradient class >> fading: aColorStopCollection [ 
	
	^self shape: '' fading: aColorStopCollection 
]

{ #category : #private }
CssRadialGradient class >> shape: aShapeSpec fading: aColorStopCollection [ 
	
	^self new initializeShape: aShapeSpec fading: aColorStopCollection 
]

{ #category : #Configuring }
CssRadialGradient >> beRepeating [
	
	functionName := 'repeating-radial-gradient'
]

{ #category : #private }
CssRadialGradient >> colorStops [
	^ colorStops
]

{ #category : #private }
CssRadialGradient >> functionName [
	^ functionName
]

{ #category : #'initialize-release' }
CssRadialGradient >> initializeShape: aShapeSpec fading: aColorStopCollection [ 

	functionName := 'radial-gradient'.
	shape := aShapeSpec.
	colorStops := aColorStopCollection 
]

{ #category : #private }
CssRadialGradient >> shape [
	^ shape
]
