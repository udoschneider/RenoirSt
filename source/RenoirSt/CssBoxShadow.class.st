"
I represent a box shadow propery value. See http://www.w3.org/TR/css3-background/#box-shadow.
"
Class {
	#name : #CssBoxShadow,
	#superclass : #CssObject,
	#instVars : [
		'components'
	],
	#category : 'RenoirSt-Common'
}

{ #category : #'Instance Creation' }
CssBoxShadow class >> horizontalOffset: horizontalOffsetLength verticalOffset: verticalOffsetLength [

	^ self
		withAll:
			{horizontalOffsetLength.
			verticalOffsetLength}
]

{ #category : #'Instance Creation' }
CssBoxShadow class >> horizontalOffset: horizontalOffsetLength verticalOffset: verticalOffsetLength blurRadius: blurRadiusLength [

	^ self
		withAll:
			{horizontalOffsetLength.
			verticalOffsetLength.
			blurRadiusLength}
]

{ #category : #'Instance Creation' }
CssBoxShadow class >> horizontalOffset: horizontalOffsetLength verticalOffset: verticalOffsetLength blurRadius: blurRadiusLength color: color [

	^ self
		withAll:
			{horizontalOffsetLength.
			verticalOffsetLength.
			blurRadiusLength.
			color}
]

{ #category : #'Instance Creation' }
CssBoxShadow class >> horizontalOffset: horizontalOffsetLength verticalOffset: verticalOffsetLength blurRadius: blurRadiusLength spreadDistance: spreadDistanceLength [

	^ self
		withAll:
			{horizontalOffsetLength.
			verticalOffsetLength.
			blurRadiusLength.
			spreadDistanceLength}
]

{ #category : #'Instance Creation' }
CssBoxShadow class >> horizontalOffset: horizontalOffsetLength verticalOffset: verticalOffsetLength blurRadius: blurRadiusLength spreadDistance: spreadDistanceLength color: color [

	^ self
		withAll:
			{horizontalOffsetLength.
			verticalOffsetLength.
			blurRadiusLength.
			spreadDistanceLength.
			color}
]

{ #category : #'Instance Creation' }
CssBoxShadow class >> horizontalOffset: horizontalOffsetLength verticalOffset: verticalOffsetLength color: color [

	^ self
		withAll:
			{horizontalOffsetLength.
			verticalOffsetLength.
			color}
]

{ #category : #private }
CssBoxShadow class >> withAll: anArray [

	^self new initializeWithAll: anArray 
]

{ #category : #Concatenating }
CssBoxShadow >> , aCssBoxShadow [

	^CssObjectList with: self with: aCssBoxShadow 
]

{ #category : #Configuring }
CssBoxShadow >> beInset [

	components := components asOrderedCollection
		addFirst: CssConstants inset;
		asArray
]

{ #category : #Printing }
CssBoxShadow >> cssContentOn: aStream [
	components cssContentOn: aStream
]

{ #category : #'initialize-release' }
CssBoxShadow >> initializeWithAll: anArray [

	components := anArray
]
