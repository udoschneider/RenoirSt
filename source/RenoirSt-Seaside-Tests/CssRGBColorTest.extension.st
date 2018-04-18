Extension { #name : #CssRGBColorTest }

{ #category : #'*RenoirSt-Seaside-Tests' }
CssRGBColorTest >> testJavascriptOn [

	| color |

	color := (CssRGBColor red: 255 green: 0 blue: 0 alpha: 0.5).

	self assert: color asJavascript equals: '"rgba(255,0,0,0.5)"'
]
