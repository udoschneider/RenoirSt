"
A CssIdentifiedColor is a color with a given identification (a name or hexadecimal representation).

"
Class {
	#name : #CssIdentifiedColor,
	#superclass : #CssColorUnit,
	#instVars : [
		'color',
		'identification'
	],
	#category : #'RenoirSt-Core-Colors'
}

{ #category : #private }
CssIdentifiedColor class >> assertIsOfSizeSix: aString [

	AssertionChecker enforce: [ aString size = 6 ] because: 'Invalid hexadecimal notation for a color.' raising: InstanceCreationFailed
]

{ #category : #private }
CssIdentifiedColor class >> expandToExtendedHexaNotation: aString [

	"If the string is specified in the 3 letters short notation, expand it to six"

	^ aString size = 3
		then: [ '<1s><1s><2s><2s><3s><3s>'
				expandMacrosWith: aString first asString
				with: aString second asString
				with: aString third asString
			]
		otherwise: [ aString ]
]

{ #category : #'Instance Creation' }
CssIdentifiedColor class >> fromHexadecimalNotation: aString [

	| numberInHexaNotation red green blue |

	numberInHexaNotation := self expandToExtendedHexaNotation: aString.

	self assertIsOfSizeSix: numberInHexaNotation.

	red := Integer readFrom: (numberInHexaNotation copyFrom: 1 to: 2) base: 16.
	green := Integer readFrom: (numberInHexaNotation copyFrom: 3 to: 4) base: 16.
	blue := Integer readFrom: (numberInHexaNotation copyFrom: 5 to: 6) base: 16.

	^ self representing: (CssRGBColor red: red green: green blue: blue) identifiedBy: ('#<1s>' expandMacrosWith: aString)
]

{ #category : #'Instance Creation' }
CssIdentifiedColor class >> representing: aCssColor identifiedBy: aString [ 
	
	^self new initializeRepresenting: aCssColor identifiedBy: aString 

]

{ #category : #Accessing }
CssIdentifiedColor >> color [
	^ color
]

{ #category : #Printing }
CssIdentifiedColor >> cssContentOn: aWriteStream [ 
	
	identification cssContentOn: aWriteStream 
]

{ #category : #Converting }
CssIdentifiedColor >> identifiedBy: aString [

	^self class representing: color identifiedBy: aString 
]

{ #category : #'initialize-release' }
CssIdentifiedColor >> initializeRepresenting: aCssColor identifiedBy: aString [ 

	color := aCssColor.
	identification := aString 
]

{ #category : #Converting }
CssIdentifiedColor >> newWithAlpha: alphaValue [

	^color newWithAlpha: alphaValue
]
