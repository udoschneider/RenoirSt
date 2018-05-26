Class {
	#name : #CssDeclarationBlockInSeasideTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Seaside-Tests'
}

{ #category : #Tests }
CssDeclarationBlockInSeasideTest >> testGreaseStringOnDeclarationBlock [

	| declarationBlock |
	declarationBlock := CssDeclarationBlock new
		margin: 2 px;
		border: 1 cm;
		yourself.

	self assert: declarationBlock greaseString equals: 'margin: 2px;border: 1cm;'
]

{ #category : #Tests }
CssDeclarationBlockInSeasideTest >> testInlineStyleRendering [

	| builder |

	builder := WAHtmlCanvas builder
		fullDocument: false;
		yourself.

	self
		assert: (builder render: [ :html | html div setInlineStyleTo: [ :style | style margin: 1 px ] ])
			equals: '<div style="margin: 1px;"></div>';
		assert:
			(builder
				render: [ :html | 
					html div
						setInlineStyleTo: [ :style :constants | 
							style
								margin: constants >> #auto;
								color: constants >> #colors >> #blue ] ])
			equals: '<div style="margin: auto;color: blue;"></div>'
]

{ #category : #Tests }
CssDeclarationBlockInSeasideTest >> testJavascriptOnDeclarationBlock [

	| declarationBlock |
	declarationBlock := CssDeclarationBlock new
		margin: 2 px;
		border: 1 cm;
		yourself.

	self
		assert: (String streamContents: [ :stream | declarationBlock javascriptOn: stream ])
		equals: '{"margin":"2px","border":"1cm"}'
]
