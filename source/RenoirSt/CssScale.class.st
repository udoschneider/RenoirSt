Class {
	#name : #CssScale,
	#superclass : #CssFunction,
	#instVars : [
		'values',
		'function'
	],
	#category : #'RenoirSt-Transformation'
}

{ #category : #'Instance Creation' }
CssScale class >> by: anInteger [ 
	^ self onXAxisBy: anInteger andYAxisBy: ''
]

{ #category : #'private - Instance Creation' }
CssScale class >> firstAxisValue: anInteger secondAxisValue: anotherInteger thirdAxisValue: aThirdInteger usingFunction: aFunctionName [ 
	^ self new
		initializeFirstAxisValue: anInteger
		secondAxisValue: anotherInteger
		andThirdAxisValue: aThirdInteger
		usingFunction: aFunctionName
]

{ #category : #'Instance Creation' }
CssScale class >> onXAxisBy: anInteger andYAxisBy: anotherInteger [
	^ self 
		firstAxisValue: anInteger 
		secondAxisValue: anotherInteger 
		thirdAxisValue: '' 
		usingFunction: 'scale'
]

{ #category : #'Instance Creation' }
CssScale class >> onXAxisBy: anInteger onYAxisBy: anotherInteger andZAxisBy: aThirdInteger [
	^ self
		firstAxisValue: anInteger
		secondAxisValue: anotherInteger
		thirdAxisValue: aThirdInteger
		usingFunction: 'scale3d'
]

{ #category : #'Instance Creation' }
CssScale class >> onlyOnXAxisBy: anInteger [ 
	^ self
		firstAxisValue: anInteger 
		secondAxisValue: '' 
		thirdAxisValue: '' 
		usingFunction: 'scaleX'
]

{ #category : #'Instance Creation' }
CssScale class >> onlyOnYAxisBy: anInteger [ 
	^ self
		firstAxisValue: anInteger 
		secondAxisValue: '' 
		thirdAxisValue: '' 
		usingFunction: 'scaleY'
]

{ #category : #'Instance Creation' }
CssScale class >> onlyOnZAxisBy: anInteger [ 
	^ self
		firstAxisValue: anInteger 
		secondAxisValue: '' 
		thirdAxisValue: '' 
		usingFunction: 'scaleZ'
]

{ #category : #private }
CssScale >> cssFunctionParametersContentOn: aWriteStream [
	
	values
		do: [ :value | value cssContentOn: aWriteStream ]
		separatedBy: [ 
			aWriteStream
				nextPut: $,;
				space ]
]

{ #category : #private }
CssScale >> functionName [
	^ function 
]

{ #category : #Initialization }
CssScale >> initializeFirstAxisValue: anInteger secondAxisValue: anotherInteger andThirdAxisValue: aThirdInteger usingFunction: aFunctionName [ 
	
	values := OrderedCollection with: anInteger.
	function := aFunctionName.
	
	anotherInteger asString isEmpty ifFalse: [ values add: anotherInteger ].
	aThirdInteger asString isEmpty ifFalse: [ values add: aThirdInteger ]
]
