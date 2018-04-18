"
A declaration is either empty or consists of a property name, followed by a colon (:), followed by a value. Around each of these there may be white space.

Because of the way selectors work, multiple declarations for the same selector may be organized into semicolon (;) separated groups.
"
Class {
	#name : #CssDeclaration,
	#superclass : #CssAbstractDeclaration,
	#instVars : [
		'property',
		'value'
	],
	#category : 'RenoirSt'
}

{ #category : #'Instance Creation' }
CssDeclaration class >> property: aPropertyName value: aValue [

	^self new initializeProperty: aPropertyName value: aValue
]

{ #category : #'initialize-release' }
CssDeclaration >> initializeProperty: aPropertyName value: aValue [

	property := aPropertyName.
	value := aValue 
]

{ #category : #private }
CssDeclaration >> property [

	^ property
]

{ #category : #private }
CssDeclaration >> value [

	^ value
]
