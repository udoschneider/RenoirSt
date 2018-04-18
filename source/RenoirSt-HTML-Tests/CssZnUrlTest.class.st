"
A CssZnUrlTest is a test case for the extensions to ZnUrl

"
Class {
	#name : #CssZnUrlTest,
	#superclass : #TestCase,
	#category : 'RenoirSt-HTML-Tests'
}

{ #category : #Tests }
CssZnUrlTest >> testAbsoluteCssContentOn [

	| url |
	url := 'http://www.example.com/images/logo.png' asZnUrl.

	self assert: url isAbsolute.

	self
		assert: (String streamContents: [ :stream | url cssContentOn: stream ])
		equals: 'url("http://www.example.com/images/logo.png")'
]

{ #category : #Tests }
CssZnUrlTest >> testRelativeCssContentOn [

	| url |

	url := 'images/logo.png' asZnUrl.
	self assert: url isRelative.

	"By default URLs are considered relative to the site root"
	self assert: (String streamContents: [ :stream | url cssContentOn: stream ]) equals: 'url("/images/logo.png")'.

	"To make it relative to the style sheet send it relativeToStyleSheet"
	self assert: (String streamContents: [ :stream | url relativeToStyleSheet cssContentOn: stream ]) equals: 'url("images/logo.png")'
]
