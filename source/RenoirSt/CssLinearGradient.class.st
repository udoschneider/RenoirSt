"
A linear gradient is created by specifying a gradient line and then several colors placed along that line. The image is constructed by creating an infinite canvas and painting it with lines perpendicular to the gradient line, with the color of the painted line being the color of the gradient line where the two intersect. This produces a smooth fade from each color to the next, progressing in the specified direction.
"
Class {
	#name : #CssLinearGradient,
	#superclass : #CssGradient,
	#instVars : [
		'direction',
		'colorStops',
		'functionName'
	],
	#category : 'RenoirSt-Colors'
}

{ #category : #'Instance Creation' }
CssLinearGradient class >> fading: aColorStopCollection [

	^self in: '' fading: aColorStopCollection 
]

{ #category : #private }
CssLinearGradient class >> in: aDirection fading: aColorStopCollection [ 
	
	^self new initializeIn: aDirection fading: aColorStopCollection 
]

{ #category : #'Instance Creation' }
CssLinearGradient class >> rotated: aCssAngle fading: aColorStopCollection [ 
	
	^self in: (CssGradientComponent on: aCssAngle) fading: aColorStopCollection 
]

{ #category : #'Instance Creation' }
CssLinearGradient class >> to: aKeywordDirectionOrCollection fading: aColorStopCollection [ 
	
	^self in: (CssGradientComponent on: { 'to'. aKeywordDirectionOrCollection }) fading: aColorStopCollection
]

{ #category : #Configuring }
CssLinearGradient >> beRepeating [

	functionName := 'repeating-linear-gradient'
]

{ #category : #private }
CssLinearGradient >> colorStops [
	^ colorStops
]

{ #category : #private }
CssLinearGradient >> functionName [
	^ functionName 
]

{ #category : #'initialize-release' }
CssLinearGradient >> initializeIn: aDirection fading: aColorStopCollection [
	
	direction := aDirection.
	colorStops := aColorStopCollection.
	functionName := 'linear-gradient'
]

{ #category : #private }
CssLinearGradient >> shape [

	^ direction
]
