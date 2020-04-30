"
A CssAttributeReference represents a CSS function allowed as a component value in properties applied to an element or pseudo-element. It returns the value of an attribute on the element. If used on a pseudo-element, it returns the value of the attribute on the pseudo-element's originating element.
"
Class {
	#name : #CssAttributeReference,
	#superclass : #CssFunction,
	#instVars : [
		'attributeName',
		'typeOrUnit',
		'fallback'
	],
	#category : #'RenoirSt-Core-Units'
}

{ #category : #'Instance Creation' }
CssAttributeReference class >> toAttributeNamed: aString [ 

	^self toAttributeNamed: aString ofType: 'string'
]

{ #category : #'Instance Creation' }
CssAttributeReference class >> toAttributeNamed: aString ofType: aCssTypeOrUnit [
	^ self toAttributeNamed: aString ofType: aCssTypeOrUnit withFallbackSpecification: CssNoFallbackSpecified new
]

{ #category : #'Instance Creation' }
CssAttributeReference class >> toAttributeNamed: aString ofType: aCssUnitOrType withFallback: aCssValue [

	^ self
		toAttributeNamed: aString
		ofType: aCssUnitOrType
		withFallbackSpecification: (CssFallbackSpecified withValue: aCssValue)
]

{ #category : #private }
CssAttributeReference class >> toAttributeNamed: aString ofType: aCssTypeOrUnit withFallbackSpecification: aCssFallback [
	
	^self new initializeWithAttributeNamed: aString withType: aCssTypeOrUnit withFallback: aCssFallback
]

{ #category : #'Instance Creation' }
CssAttributeReference class >> toStringAttributeNamed: aString withFallback: aFallbackString [

	^ self
		toAttributeNamed: aString
		ofType: 'string'
		withFallbackSpecification: (CssFallbackSpecified withValue: ('"<1s>"' expandMacrosWith: aFallbackString))
]

{ #category : #private }
CssAttributeReference >> asTypeOrUnit: aCssTypeOrNamedUnit [

	^ CssConstants >> #units at: aCssTypeOrNamedUnit ifAbsent: [ aCssTypeOrNamedUnit ]
]

{ #category : #private }
CssAttributeReference >> cssFunctionParametersContentOn: aStream [
	attributeName cssContentOn: aStream.
	aStream space.
	typeOrUnit cssContentOn: aStream.
	fallback cssContentOn: aStream
]

{ #category : #private }
CssAttributeReference >> functionName [
	^'attr'
]

{ #category : #'initialize - release' }
CssAttributeReference >> initializeWithAttributeNamed: aString withType: aCssTypeOrNamedUnit withFallback: aCssFallback [

	attributeName := aString.
	typeOrUnit := self asTypeOrUnit: aCssTypeOrNamedUnit.
	fallback := aCssFallback
]
