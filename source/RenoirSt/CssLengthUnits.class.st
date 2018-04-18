"
A CssLengthUnits is a shared pool providing access to the commonly used Css Length Units
"
Class {
	#name : #CssLengthUnits,
	#superclass : #Object,
	#classVars : [
		'Centimeter',
		'FontSize',
		'FontSizeOfRootElement',
		'Inch',
		'Millimeter',
		'OnePercentOfViewportHeight',
		'OnePercentOfViewportLargerDimension',
		'OnePercentOfViewportSmallerDimension',
		'OnePercentOfViewportWidth',
		'Pica',
		'Pixel',
		'Point',
		'XHeight',
		'ZeroWidth'
	],
	#category : #'RenoirSt-Units'
}

{ #category : #'Accessing - Absolute' }
CssLengthUnits class >> centimeter [

	^Centimeter 
]

{ #category : #'Accessing - Relative' }
CssLengthUnits class >> fontSize [

	^FontSize 
]

{ #category : #'Accessing - Relative' }
CssLengthUnits class >> fontSizeOfRootElement [

	^FontSizeOfRootElement 
]

{ #category : #'Accessing - Absolute' }
CssLengthUnits class >> inch [

	^Inch 
]

{ #category : #'initialize-release' }
CssLengthUnits class >> initialize [

	<ignoreForCoverage>
	self initializeAbsoluteUnits.
	self initializeRelativeUnits
]

{ #category : #'initialize-release' }
CssLengthUnits class >> initializeAbsoluteUnits [

	<ignoreForCoverage>
	Centimeter := CssUnit identifiedBy: 'cm'.
	Inch := CssUnit identifiedBy: 'in'.
	Millimeter := CssUnit identifiedBy: 'mm'.
	Pica := CssUnit identifiedBy: 'pc'.
	Pixel := CssUnit identifiedBy: 'px'.
	Point := CssUnit identifiedBy: 'pt'
]

{ #category : #'initialize-release' }
CssLengthUnits class >> initializeRelativeUnits [

	<ignoreForCoverage>
	FontSize := CssUnit identifiedBy: 'em'.
	XHeight := CssUnit identifiedBy: 'ex'.
	ZeroWidth := CssUnit identifiedBy: 'ch'.
	FontSizeOfRootElement := CssUnit identifiedBy: 'rem'.
	OnePercentOfViewportHeight := CssUnit identifiedBy: 'vh'.
	OnePercentOfViewportWidth := CssUnit identifiedBy: 'vw'.
	OnePercentOfViewportSmallerDimension := CssUnit identifiedBy: 'vmin'.
	OnePercentOfViewportLargerDimension := CssUnit identifiedBy: 'vmax'
]

{ #category : #'Accessing - Absolute' }
CssLengthUnits class >> millimeter [

	^Millimeter 
]

{ #category : #'Accessing - Relative' }
CssLengthUnits class >> onePercentOfViewportHeight [

	^OnePercentOfViewportHeight  
]

{ #category : #'Accessing - Relative' }
CssLengthUnits class >> onePercentOfViewportLargerDimension [ 

	^OnePercentOfViewportLargerDimension 
]

{ #category : #'Accessing - Relative' }
CssLengthUnits class >> onePercentOfViewportSmallerDimension [ 

	^OnePercentOfViewportSmallerDimension 
]

{ #category : #'Accessing - Relative' }
CssLengthUnits class >> onePercentOfViewportWidth [

	^OnePercentOfViewportWidth 
]

{ #category : #'Accessing - Absolute' }
CssLengthUnits class >> pica [

	^Pica
]

{ #category : #'Accessing - Relative' }
CssLengthUnits class >> pixel [

	^Pixel 
]

{ #category : #'Accessing - Absolute' }
CssLengthUnits class >> point [

	^Point 
]

{ #category : #'Accessing - Relative' }
CssLengthUnits class >> xHeight [

	^XHeight 
]

{ #category : #'Accessing - Relative' }
CssLengthUnits class >> zeroWidth [

	^ZeroWidth 
]
