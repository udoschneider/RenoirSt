"
A CssImportantDeclarationTest is a test class for testing the behavior of CssImportantDeclaration
"
Class {
	#name : #CssImportantDeclarationTest,
	#superclass : #TestCase,
	#category : 'RenoirSt-Tests'
}

{ #category : #Tests }
CssImportantDeclarationTest >> testPrintString [

	| declaration |
	declaration := CssImportantDeclaration
		over:
			(CssDeclaration
				property: 'margin'
				value: {1 px. 2 px. 3 px. 1 px}).
	self assert: declaration printString equals: 'margin: 1px 2px 3px 1px !important;'
]
