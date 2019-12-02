Class {
	#name : #CssRotate,
	#superclass : #CssFunction,
	#instVars : [
		'rotationDegrees',
		'function'
	],
	#category : #'RenoirSt-Transformation'
}

{ #category : #'Instance Creation' }
CssRotate class >> by: aCssMeasure [
	^ self by: aCssMeasure usingFunction: 'rotate'
]

{ #category : #'private - Instance Creation' }
CssRotate class >> by: aCssMeasure usingFunction: aFunctionName [
	^ self new initializeBy: aCssMeasure usingFunction: aFunctionName 
]

{ #category : #'Instance Creation' }
CssRotate class >> onXAxisBy: aCssMeasure [ 

	^ self by: aCssMeasure usingFunction: 'rotateX'
]

{ #category : #'Instance Creation' }
CssRotate class >> onYAxisBy: aCssMeasure [ 
	^ self by: aCssMeasure usingFunction: 'rotateY'
]

{ #category : #'Instance Creation' }
CssRotate class >> onZAxisBy: aCssMeasure [ 

	^ self by: aCssMeasure usingFunction: 'rotateZ'
]

{ #category : #private }
CssRotate >> cssFunctionParametersContentOn: aWriteStream [
	
	rotationDegrees cssContentOn: aWriteStream.
]

{ #category : #private }
CssRotate >> functionName [
	
	^function
]

{ #category : #initialization }
CssRotate >> initializeBy: aCssMeasure usingFunction: aFunctionName [

	rotationDegrees := aCssMeasure.
	function := aFunctionName
]
