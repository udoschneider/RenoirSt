"
A CssAlphaChannelComponent is the abstract class of the alpha channel provision

"
Class {
	#name : #CssAlphaChannel,
	#superclass : #Object,
	#category : 'RenoirSt-Colors'
}

{ #category : #Enumerating }
CssAlphaChannel >> componentsDo: aBlockClosure separatedBy: aSeparationBlock [ 

	self subclassResponsibility 
]

{ #category : #Accessing }
CssAlphaChannel >> functionNameFor: aBasicFunctionName [

	self subclassResponsibility 
]
