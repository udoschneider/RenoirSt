Tests
testRelativeCssContentOn

	| url |
	url := 'images/logo.png' seasideUrl.

	self assert: (String streamContents: [ :stream | url cssContentOn: stream ]) equals: 'url("images/logo.png")'