"
A CssImportantDeclaration is declaration with an !important modifier

"
Class {
	#name : #CssImportantDeclaration,
	#superclass : #CssAbstractDeclaration,
	#instVars : [
		'declaration'
	],
	#category : 'RenoirSt'
}

{ #category : #'instance creation' }
CssImportantDeclaration class >> over: aCssDeclaration [ 
	
	^self new initializeOver: aCssDeclaration 
]

{ #category : #private }
CssImportantDeclaration >> cssContentEndingOn: aStream [
	
	aStream
		space;
		nextPutAll: '!important'.
	super cssContentEndingOn: aStream
]

{ #category : #'initialize-release' }
CssImportantDeclaration >> initializeOver: aCssDeclaration [ 
	
	declaration := aCssDeclaration 
]

{ #category : #private }
CssImportantDeclaration >> property [

	^declaration property
]

{ #category : #private }
CssImportantDeclaration >> value [

	^declaration value
]
