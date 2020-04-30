Class {
	#name : #CssSteps,
	#superclass : #CssFunction,
	#instVars : [
		'values'
	],
	#category : #'RenoirSt-Core-Easing'
}

{ #category : #'Instance Creation' }
CssSteps class >> by: anInteger [ 
	^ self steps: anInteger headingTo: ''
]

{ #category : #'Instance Creation' }
CssSteps class >> by: anInteger direction: aConstant [ 
	^ self steps: anInteger headingTo: aConstant.
]

{ #category : #'private - Instance Creation' }
CssSteps class >> steps: anInteger headingTo: aConstant [ 
	 ^ self new initialize steps: anInteger headingTo: aConstant
]

{ #category : #private }
CssSteps >> cssFunctionParametersContentOn: aWriteStream [ 
	values
		do: [ :value | value cssContentOn: aWriteStream ]
		separatedBy: [ 
			aWriteStream
				nextPut: $,;
				space ]
]

{ #category : #private }
CssSteps >> functionName [
	^ 'steps'
]

{ #category : #Initialization }
CssSteps >> steps: anInteger headingTo: aConstant [
	values := OrderedCollection with: anInteger.
	aConstant isEmpty ifFalse: [ values add: aConstant ]
]
