Class {
	#name : #CssRotate3D,
	#superclass : #CssFunction,
	#instVars : [
		'values'
	],
	#category : #'RenoirSt-Core-Transformation'
}

{ #category : #'Instance Creation' }
CssRotate3D class >> onXAxis: anXAxisCoordinate yAxis: aYAxisCoordinate zAxis: aZAxisCoordinate by: aCssMeasure [ 

	^ self new initializeOnXAxis: anXAxisCoordinate yAxis: aYAxisCoordinate zAxis: aZAxisCoordinate by: aCssMeasure 
]

{ #category : #private }
CssRotate3D >> cssFunctionParametersContentOn: aWriteStream [ 

	values
		do: [ :value | value cssContentOn: aWriteStream ]
		separatedBy: [ 
			aWriteStream
				nextPut: $,;
				space ]
]

{ #category : #private }
CssRotate3D >> functionName [
	^ 'rotate3d'
]

{ #category : #Initialization }
CssRotate3D >> initializeOnXAxis: anXAxisCoordinate yAxis: aYAxisCoordinate zAxis: aZAxisCoordinate by: aCssMeasure [
	values := OrderedCollection
		with: anXAxisCoordinate
		with: aYAxisCoordinate
		with: aZAxisCoordinate
		with: aCssMeasure
]
