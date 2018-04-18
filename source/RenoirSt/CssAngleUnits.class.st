"
A CssAngleUnits is a shared pool providing access to the commonly used Css Angle Units

"
Class {
	#name : #CssAngleUnits,
	#superclass : #Object,
	#classVars : [
		'Degree',
		'Gradian',
		'Radian',
		'Turn'
	],
	#category : #'RenoirSt-Units'
}

{ #category : #Accessing }
CssAngleUnits class >> degree [

	^Degree 
]

{ #category : #Accessing }
CssAngleUnits class >> gradian [

	^Gradian   
]

{ #category : #'initialize-release' }
CssAngleUnits class >> initialize [

	<ignoreForCoverage>
	Degree := CssUnit identifiedBy: 'deg'.
	Radian := CssUnit identifiedBy: 'rad'.
	Gradian := CssUnit identifiedBy: 'grad'.
	Turn := CssUnit identifiedBy: 'turn'
]

{ #category : #Accessing }
CssAngleUnits class >> radian [

	^Radian  
]

{ #category : #Accessing }
CssAngleUnits class >> turn [

	^Turn   
]
