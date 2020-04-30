Class {
	#name : #CssSkew,
	#superclass : #CssFunction,
	#instVars : [
		'values',
		'function'
	],
	#category : #'RenoirSt-Core-Transformation'
}

{ #category : #'Instance Creation' }
CssSkew class >> by: aCssMeasure [ 
	^ self firstValue: aCssMeasure secondValue: '' usingFunction: 'skew'
]

{ #category : #'private - Instance Creation' }
CssSkew class >> firstValue: aCssMeasure secondValue: anotherCssMeasure usingFunction: aFunctionName [ 
	^ self new initializeFirstValue: aCssMeasure secondValue: anotherCssMeasure usingFunction: aFunctionName 
]

{ #category : #'Instance Creation' }
CssSkew class >> onXAxisBy: aCssMeasure andYAxisBy: anotherCssMeasure [
	^ self firstValue: aCssMeasure secondValue: anotherCssMeasure usingFunction: 'skew'
]

{ #category : #'Instance Creation' }
CssSkew class >> onlyOnXAxisBy: aCssMeasure [ 
	^ self firstValue: aCssMeasure secondValue: '' usingFunction: 'skewX'
]

{ #category : #'Instance Creation' }
CssSkew class >> onlyOnYAxisBy: aCssMeasure [ 
	^ self firstValue: aCssMeasure secondValue: '' usingFunction: 'skewY'
]

{ #category : #private }
CssSkew >> cssFunctionParametersContentOn: aWriteStream [ 
	values
		do: [ :value | value cssContentOn: aWriteStream ]
		separatedBy: [ 
			aWriteStream
				nextPut: $,;
				space ]
]

{ #category : #private }
CssSkew >> functionName [
	^ function 
]

{ #category : #Initialization }
CssSkew >> initializeFirstValue: aCssMeasure secondValue: anotherCssMeasure usingFunction: aFunctionName [
	values := OrderedCollection with: aCssMeasure.
	function := aFunctionName.
	anotherCssMeasure asString isEmpty ifFalse: [ values add: anotherCssMeasure ]
]
