"
A CssLinearPolynomial represents a function of the type: an+b where n is a free variable. It can be used in some structural pseudo class selectors.
"
Class {
	#name : #CssLinearPolynomial,
	#superclass : #CssObject,
	#instVars : [
		'dependentCoefficient',
		'independentCoefficient'
	],
	#category : #'RenoirSt-Selectors'
}

{ #category : #'Instance Creation' }
CssLinearPolynomial class >> forIdentity [
	
	^self with: 1
]

{ #category : #'Instance Creation' }
CssLinearPolynomial class >> with: a [ 

	^ self new initializeWith: a 
]

{ #category : #Configuring }
CssLinearPolynomial >> + aPositiveInteger [

	independentCoefficient := aPositiveInteger 
]

{ #category : #Configuring }
CssLinearPolynomial >> - aPositiveInteger [

	independentCoefficient := aPositiveInteger * -1
]

{ #category : #Printing }
CssLinearPolynomial >> cssContentOn: aWriteStream [

	self cssDependentCoefficientContentOn: aWriteStream.
	aWriteStream nextPut: $n.
	self cssIndependentCoefficientContentOn: aWriteStream
]

{ #category : #private }
CssLinearPolynomial >> cssDependentCoefficientContentOn: aWriteStream [

	dependentCoefficient abs = 1
		ifTrue: [ 
			dependentCoefficient negative
				ifTrue: [ aWriteStream nextPut: $- ] ]
		ifFalse: [ dependentCoefficient cssContentOn: aWriteStream ]
]

{ #category : #private }
CssLinearPolynomial >> cssIndependentCoefficientContentOn: aWriteStream [
	independentCoefficient isZero
		ifTrue: [ ^ self ].
	independentCoefficient positive
		ifTrue: [ aWriteStream nextPut: $+ ].
	independentCoefficient cssContentOn: aWriteStream
]

{ #category : #'initialize-release' }
CssLinearPolynomial >> initializeWith: a [ 
	independentCoefficient := 0.
	dependentCoefficient := a
]
