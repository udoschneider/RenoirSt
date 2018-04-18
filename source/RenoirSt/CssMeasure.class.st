"
Generic measurements. Can be lengths, resolutions, time, etc
"
Class {
	#name : #CssMeasure,
	#superclass : #CssObject,
	#instVars : [
		'quantity',
		'unit'
	],
	#category : 'RenoirSt-Units'
}

{ #category : #'Instance Creation' }
CssMeasure class >> quantity: aNumber unit: aCssLengthUnit [ 
	
	^self new initializeQuantity: aNumber unit: aCssLengthUnit 

]

{ #category : #Printing }
CssMeasure >> cssContentOn: aStream [ 
	
	quantity cssContentOn: aStream.
	unit cssContentOn: aStream 
]

{ #category : #'initialize-release' }
CssMeasure >> initializeQuantity: aNumber unit: aCssLengthUnit [
	
	quantity := aNumber.
	unit := aCssLengthUnit
]
