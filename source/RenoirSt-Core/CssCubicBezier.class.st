Class {
	#name : #CssCubicBezier,
	#superclass : #CssFunction,
	#instVars : [
		'values'
	],
	#category : #'RenoirSt-Core-Easing'
}

{ #category : #'Instance Creation' }
CssCubicBezier class >> firstXAxis: firstXAxisNumber firstYAxis: firstYAxisNumber secondXAxis: secondXAxisNumber secondYAxis: secondYAxisNumber [
	^ self new initializeFirstXAxis: firstXAxisNumber firstYAxis: firstYAxisNumber secondXAxis: secondXAxisNumber secondYAxis: secondYAxisNumber
]

{ #category : #private }
CssCubicBezier >> cssFunctionParametersContentOn: aWriteStream [ 
	values
		do: [ :value | value cssContentOn: aWriteStream ]
		separatedBy: [ 
			aWriteStream
				nextPut: $,;
				space ]
]

{ #category : #private }
CssCubicBezier >> functionName [
	^ 'cubic-bezier'
]

{ #category : #Initialization }
CssCubicBezier >> initializeFirstXAxis: firstXAxisNumber firstYAxis: firstYAxisNumber secondXAxis: secondXAxisNumber secondYAxis: secondYAxisNumber [
	
	values := OrderedCollection with: firstXAxisNumber with: firstYAxisNumber 
		with: secondXAxisNumber with: secondYAxisNumber 
]
