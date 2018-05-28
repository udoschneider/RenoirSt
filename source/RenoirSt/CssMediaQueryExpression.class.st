"
A CssMediaQueryExpression represents a condition to check of a particular media feature.
"
Class {
	#name : #CssMediaQueryExpression,
	#superclass : #CssObject,
	#instVars : [
		'mediaFeature',
		'values'
	],
	#category : #'RenoirSt-MediaQueries'
}

{ #category : #private }
CssMediaQueryExpression class >> assertNotEmpty: aString [

	AssertionChecker refuse: [ aString isEmpty ] because: 'A media feature name can''t be empty' raising: InstanceCreationFailed
]

{ #category : #'Instance Creation' }
CssMediaQueryExpression class >> forFeatureNamed: aFeatureName [

	^self forFeatureNamed: aFeatureName withValues: #()
]

{ #category : #'Instance Creation' }
CssMediaQueryExpression class >> forFeatureNamed: aString withValue: aValue [

	^ self forFeatureNamed: aString withValues: {aValue}
]

{ #category : #private }
CssMediaQueryExpression class >> forFeatureNamed: aString withValues: aCollection [

	self assertNotEmpty: aString.
	^ self new initializeForFeatureNamed: aString withValues: aCollection
]

{ #category : #Printing }
CssMediaQueryExpression >> cssContentOn: aStream [

	aStream nextPut: $(.
	mediaFeature cssContentOn: aStream.
	values
		do: [ :value | 
			aStream
				nextPut: $:;
				space.
			value cssContentOn: aStream ].
	aStream nextPut: $)
]

{ #category : #'initialize-release' }
CssMediaQueryExpression >> initializeForFeatureNamed: aString withValues: aCollection [

	mediaFeature := aString.
	values := aCollection collect: [ :aValue | CssMediaQueryConstants at: aValue ifAbsent: [ aValue ] ]
]
