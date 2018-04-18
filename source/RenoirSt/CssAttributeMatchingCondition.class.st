"
A CssAttributeMatchingOperation is a matching operation over the value of an attribute. Common examples are: = , += , ^=. See references for the whole list.
"
Class {
	#name : #CssAttributeMatchingCondition,
	#superclass : #CssObject,
	#instVars : [
		'attributeValue',
		'condition'
	],
	#category : 'RenoirSt-Selectors'
}

{ #category : #'Instance Creation' }
CssAttributeMatchingCondition class >> condition: aCondition value: aValue [

	^ self new initializeMatchingCondition: aCondition value: aValue
]

{ #category : #Printing }
CssAttributeMatchingCondition >> cssContentOn: aStream [ 
	
	condition cssContentOn: aStream.
	aStream nextPut: $".
	attributeValue cssContentOn: aStream.
	aStream nextPut: $"
]

{ #category : #'initialize-release' }
CssAttributeMatchingCondition >> initializeMatchingCondition: aCondition value: aValue [

	condition := aCondition.
	attributeValue := aValue
]
