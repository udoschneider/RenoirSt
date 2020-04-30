Class {
	#name : #CssPerspective,
	#superclass : #CssFunction,
	#instVars : [
		'value'
	],
	#category : #'RenoirSt-Core-Transformation'
}

{ #category : #'Instance Creation' }
CssPerspective class >> of: aCssMeasure [ 
	
	^ self new initializeOf: aCssMeasure 
]

{ #category : #private }
CssPerspective >> cssFunctionParametersContentOn: aWriteStream [ 

	^ value cssContentOn: aWriteStream 
]

{ #category : #private }
CssPerspective >> functionName [
	^ 'perspective'
]

{ #category : #Initialization }
CssPerspective >> initializeOf: aCssMeasure [ 
	
	value := aCssMeasure 
]
