"
A CssDeclarationTest is a test class for testing the behavior of CssDeclaration
"
Class {
	#name : #CssDeclarationTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Common'
}

{ #category : #Tests }
CssDeclarationTest >> testPrintString [

	| declaration |

	declaration := CssDeclaration property: 'margin' value:	{1 px. 2 px. 3 px. 1 px}.
	self assert: declaration printString equals: 'margin: 1px 2px 3px 1px;'
]
