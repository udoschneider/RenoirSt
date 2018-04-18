Class {
	#name : #CssDeclarationBlockJavascriptTest,
	#superclass : #TestCase,
	#category : 'RenoirSt-Seaside-Tests'
}

{ #category : #Tests }
CssDeclarationBlockJavascriptTest >> testGreaseStringOnDeclarationBlock [

	| declarationBlock |
	declarationBlock := CssDeclarationBlock new
		margin: 2 px;
		border: 1 cm;
		yourself.

	self assert: declarationBlock greaseString equals: 'margin: 2px;border: 1cm;'
]

{ #category : #Tests }
CssDeclarationBlockJavascriptTest >> testJavascriptOnDeclarationBlock [

	| declarationBlock |
	declarationBlock := CssDeclarationBlock new
		margin: 2 px;
		border: 1 cm;
		yourself.

	self
		assert: (String streamContents: [ :stream | declarationBlock javascriptOn: stream ])
		equals: '{"margin":"2px","border":"1cm"}'
]
