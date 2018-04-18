"
A CssWAUrlTest is a test case for the extensions to WAUrl
"
Class {
	#name : #CssWAUrlTest,
	#superclass : #TestCase,
	#category : 'RenoirSt-Seaside-Tests'
}

{ #category : #Tests }
CssWAUrlTest >> testAbsoluteCssContentOn [

	| url |
	url := 'http://www.example.com/images/logo.png' seasideUrl.

	self
		assert: (String streamContents: [ :stream | url cssContentOn: stream ])
		equals: 'url("http://www.example.com/images/logo.png")'
]

{ #category : #Tests }
CssWAUrlTest >> testRelativeCssContentOn [

	| url |

	url := 'images/logo.png' seasideUrl.

	"By default URLs are considered relative to the site root"
	self assert: (String streamContents: [ :stream | url cssContentOn: stream ]) equals: 'url("/images/logo.png")'.

	"To make it relative to the style sheet send it relativeToStyleSheet"
	self assert: (String streamContents: [ :stream | url relativeToStyleSheet cssContentOn: stream ]) equals: 'url("images/logo.png")'
]
