Class {
	#name : #CssKeyframesRuleBuilder,
	#superclass : #Object,
	#instVars : [
		'keyframesName',
		'styleSheet',
		'webkitCompatibility'
	],
	#category : #'RenoirSt-Keyframes'
}

{ #category : #Building }
CssKeyframesRuleBuilder >> build [
	^ CssKeyframesRule
		named: keyframesName
		enabling: styleSheet
		withWebkitCompatibilityEnabled: webkitCompatibility 
]

{ #category : #Configuring }
CssKeyframesRuleBuilder >> enableWebkitCompatibility [
	
	webkitCompatibility := true
]

{ #category : #initialization }
CssKeyframesRuleBuilder >> initialize [ 
	super initialize.
	webkitCompatibility := false.
	styleSheet := CascadingStyleSheet withAll: #().
	keyframesName := ''.
]

{ #category : #Configuring }
CssKeyframesRuleBuilder >> named: aName [

	keyframesName := aName
]

{ #category : #Configuring }
CssKeyframesRuleBuilder >> useStyleSheet: aCascadingStyleSheet [ 
	
	styleSheet := aCascadingStyleSheet 
]
