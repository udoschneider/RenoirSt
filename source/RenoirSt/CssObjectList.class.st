"
I represent a list of css objects
"
Class {
	#name : #CssObjectList,
	#superclass : #CssObject,
	#instVars : [
		'components'
	],
	#category : #'RenoirSt-Common'
}

{ #category : #'instance creation' }
CssObjectList class >> with: firstCssObject with: secondCssObject [

	^self
		withAll:
			{firstCssObject.
			secondCssObject}
]

{ #category : #'instance creation' }
CssObjectList class >> withAll: aCssObjectCollection [

	^self new initializeWithAll: aCssObjectCollection 	
]

{ #category : #Printing }
CssObjectList >> cssContentOn: aStream [

	components
		do: [ :shadow | shadow cssContentOn: aStream ]
		separatedBy: [ aStream
				nextPut: $,;
				space ]
]

{ #category : #'initialize-release' }
CssObjectList >> initializeWithAll: aCssObjectCollection [

	components := aCssObjectCollection 
]
