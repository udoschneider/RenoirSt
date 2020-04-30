"
A CssMediaQueryRuleBuilder is a builder to help creating media queries

"
Class {
	#name : #CssMediaQueryRuleBuilder,
	#superclass : #Object,
	#instVars : [
		'styleSheet',
		'mediaType',
		'expressions'
	],
	#category : #'RenoirSt-Core-MediaQueries'
}

{ #category : #private }
CssMediaQueryRuleBuilder >> addExpressionForFeatureNamed: aFeatureName withValue: aValue [

	expressions add: (CssMediaQueryExpression forFeatureNamed: aFeatureName withValue: aValue)
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> aspectRatio: aFraction [

	self addExpressionForFeatureNamed: 'aspect-ratio' withValue: aFraction 
]

{ #category : #Building }
CssMediaQueryRuleBuilder >> build [

	^CssMediaQueryRule ofType: mediaType conforming: expressions enabling: styleSheet 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> color: anInteger [ 
	
	self addExpressionForFeatureNamed: 'color' withValue: anInteger 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> colorIndex: anInteger [ 
	
	self addExpressionForFeatureNamed: 'color-index' withValue: anInteger 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> deviceHeight: aCssLenght [ 
	
	self addExpressionForFeatureNamed: 'device-height' withValue: aCssLenght 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> deviceWidth: aCssLenght [ 
	
	self addExpressionForFeatureNamed: 'device-width' withValue: aCssLenght 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> grid: anInteger [ 
	
	self addExpressionForFeatureNamed: 'grid' withValue: anInteger 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> height: aCssLenght [ 
	
	self addExpressionForFeatureNamed: 'height' withValue: aCssLenght 
]

{ #category : #'initialize-release' }
CssMediaQueryRuleBuilder >> initialize [

	super initialize.
	styleSheet := CascadingStyleSheet withAll: #().
	expressions := OrderedCollection new.
	mediaType := 'all'
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> maxAspectRatio: aFraction [

	self addExpressionForFeatureNamed: 'max-aspect-ratio' withValue: aFraction 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> maxColor: anInteger [ 

	self addExpressionForFeatureNamed: 'max-color' withValue: anInteger 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> maxColorIndex: anInteger [ 
	
	self addExpressionForFeatureNamed: 'max-color-index' withValue: anInteger 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> maxDeviceHeight: aCssLenght [ 
	
	self addExpressionForFeatureNamed: 'max-device-height' withValue: aCssLenght 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> maxDeviceWidth: aCssLenght [ 
	
	self addExpressionForFeatureNamed: 'max-device-width' withValue: aCssLenght 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> maxHeight: aCssLenght [ 
	
	self addExpressionForFeatureNamed: 'max-height' withValue: aCssLenght 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> maxMonochrome: anInteger [ 
	
	self addExpressionForFeatureNamed: 'max-monochrome' withValue: anInteger 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> maxWidth: aCssLenght [ 
	
	self addExpressionForFeatureNamed: 'max-width' withValue: aCssLenght 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> minAspecRatio: aFraction [

	self addExpressionForFeatureNamed: 'min-aspect-ratio' withValue: aFraction 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> minColor: anInteger [ 
	
	self addExpressionForFeatureNamed: 'min-color' withValue: anInteger 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> minColorIndex: anInteger [ 
	
	self addExpressionForFeatureNamed: 'min-color-index' withValue: anInteger 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> minDeviceHeight: aCssLenght [ 
	
	self addExpressionForFeatureNamed: 'min-device-height' withValue: aCssLenght 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> minDeviceWidth: aCssLenght [ 
	
	self addExpressionForFeatureNamed: 'min-device-width' withValue: aCssLenght 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> minHeight: aCssLenght [ 
	
	self addExpressionForFeatureNamed: 'min-height' withValue: aCssLenght 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> minMonochrome: anInteger [ 
	
	self addExpressionForFeatureNamed: 'min-monochrome' withValue: anInteger 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> minWidth: aCssLenght [ 

	self addExpressionForFeatureNamed: 'min-width' withValue: aCssLenght 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> monochrome: anInteger [ 
	
	self addExpressionForFeatureNamed: 'monochrome' withValue: anInteger 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> orientation: anOrientation [

	self addExpressionForFeatureNamed: 'orientation' withValue: anOrientation 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> resolution: aCssResolution [ 
	
	self addExpressionForFeatureNamed: 'resolution' withValue: aCssResolution 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> scan: aScanType [

	self addExpressionForFeatureNamed: 'scan' withValue: aScanType 
]

{ #category : #Configuring }
CssMediaQueryRuleBuilder >> type: aMediaType [

	mediaType := aMediaType
]

{ #category : #Configuring }
CssMediaQueryRuleBuilder >> useStyleSheet: aCascadingStyleSheet [ 
	
	styleSheet := aCascadingStyleSheet 
]

{ #category : #'Configuring - Features' }
CssMediaQueryRuleBuilder >> width: aCssLenght [ 
	
	self addExpressionForFeatureNamed: 'width' withValue: aCssLenght 
]
