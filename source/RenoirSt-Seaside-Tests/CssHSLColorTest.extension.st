Extension { #name : #CssHSLColorTest }

{ #category : #'*RenoirSt-Seaside-Tests' }
CssHSLColorTest >> testJavascriptOn [

	| color |

	color := CssHSLColor hue: 120 saturation: 100 percent lightness: 50 percent.

	self assert: color asJavascript equals: '"hsl(120,100%,50%)"'
]
