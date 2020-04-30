"
A CssImportantRulePrecedencePoliciy is a policy indicating an important declaration.

"
Class {
	#name : #CssImportantRulePrecedencePoliciy,
	#superclass : #CssRulePrecedencePolicy,
	#category : #'RenoirSt-Core-Common'
}

{ #category : #Applying }
CssImportantRulePrecedencePoliciy >> applyTo: aCssDeclaration [ 
	
	^CssImportantDeclaration over: aCssDeclaration 
]
