Class {
	#name : #CssTranslate,
	#superclass : #CssFunction,
	#instVars : [
		'values',
		'function'
	],
	#category : #'RenoirSt-Core-Transformation'
}

{ #category : #'Instance Creation' }
CssTranslate class >> by: aCssMeasure [ 
	
	^ self onXAxisBy: aCssMeasure andYAxisBy: ''
]

{ #category : #'private - Instance Creation' }
CssTranslate class >> firstAxisValue: aCssMeasure secondAxisValue: anotherCssMeasure thirdAxisValue: aThirdCssMeasure usingFunction: aFunctionName [

	^ self new 
		initializeFirstAxisValue: aCssMeasure 
		secondAxisValue: anotherCssMeasure 
		andThirdAxisValue: aThirdCssMeasure 
		usingFunction: aFunctionName
]

{ #category : #'Instance Creation' }
CssTranslate class >> onXAxisBy: aCssMeasure andYAxisBy: anotherCssMeasure [
	^ self
		firstAxisValue: aCssMeasure
		secondAxisValue: anotherCssMeasure 
		thirdAxisValue: ''
		usingFunction: 'translate'
]

{ #category : #'Instance Creation' }
CssTranslate class >> onXAxisBy: aCssMeasure onYAxisBy: anotherCssMeasure andZAxisBy: aThirdCssMeasure [
	^ self
		firstAxisValue: aCssMeasure
		secondAxisValue: anotherCssMeasure
		thirdAxisValue: aThirdCssMeasure
		usingFunction: 'translate3d'
]

{ #category : #'Instance Creation' }
CssTranslate class >> onlyOnXAxisBy: aCssMeasure [ 
	^ self
		firstAxisValue: aCssMeasure
		secondAxisValue: ''
		thirdAxisValue: ''
		usingFunction: 'translateX'
]

{ #category : #'Instance Creation' }
CssTranslate class >> onlyOnYAxisBy: aCssMeasure [ 
	^ self
		firstAxisValue: aCssMeasure
		secondAxisValue: ''
		thirdAxisValue: ''
		usingFunction: 'translateY'
]

{ #category : #'Instance Creation' }
CssTranslate class >> onlyOnZAxisBy: aCssMeasure [
	^ self
		firstAxisValue: aCssMeasure
		secondAxisValue: ''
		thirdAxisValue: ''
		usingFunction: 'translateZ'
]

{ #category : #private }
CssTranslate >> cssFunctionParametersContentOn: aWriteStream [
	
	values
		do: [ :value | value cssContentOn: aWriteStream ]
		separatedBy: [ 
			aWriteStream
				nextPut: $,;
				space ]
]

{ #category : #private }
CssTranslate >> functionName [
	
	^ function 
]

{ #category : #Initialization }
CssTranslate >> initializeFirstAxisValue: aCssMeasure secondAxisValue: anotherCssMeasure andThirdAxisValue: aThirdCssMeasure usingFunction: aFunctionName [

	values := OrderedCollection with: aCssMeasure.
	function := aFunctionName.

	anotherCssMeasure asString isEmpty ifFalse: [ values add: anotherCssMeasure ].
	aThirdCssMeasure asString isEmpty ifFalse: [ values add: aThirdCssMeasure ]
]
