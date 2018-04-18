"
A CssConstantsTest is a test class for testing the behavior of CssConstants
"
Class {
	#name : #CssConstantsTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests'
}

{ #category : #Tests }
CssConstantsTest >> testAttachmentProperties [
	
	self
		assert: CssConstants fixed equals: 'fixed';
		assert: CssConstants scroll equals: 'scroll'
]

{ #category : #Tests }
CssConstantsTest >> testBackgroundProperties [
	
	self
		assert: CssConstants round equals: 'round';
		assert: CssConstants space equals: 'space';
		assert: CssConstants local equals: 'local';
		assert: CssConstants borderBox equals: 'border-box';
		assert: CssConstants paddingBox equals: 'padding-box';
		assert: CssConstants contentBox equals: 'content-box';
		assert: CssConstants closestCorner equals: 'closest-corner';
		assert: CssConstants closestSide equals: 'closest-side';
		assert: CssConstants farthestCorner equals: 'farthest-corner';
		assert: CssConstants farthestSide equals: 'farthest-side'
]

{ #category : #Tests }
CssConstantsTest >> testBasicConstants [

	self
		assert: CssConstants auto equals: 'auto';
		assert: CssConstants even equals: 'even';
		assert: CssConstants hide equals: 'hide';
		assert: CssConstants inherit equals: 'inherit';
		assert: CssConstants none equals: 'none';
		assert: CssConstants odd equals: 'odd';
		assert: CssConstants show equals: 'show';
		assert: CssConstants vertical equals: 'vertical';
		assert: CssConstants initial equals: 'initial';
		assert: CssConstants invert equals: 'invert'
]

{ #category : #Tests }
CssConstantsTest >> testBorderProperties [

	self
		assert: CssConstants fill equals: 'fill';
		assert: CssConstants stretch equals: 'stretch';
		assert: CssConstants collapse equals: 'collapse';
		assert: CssConstants dashed equals: 'dashed';
		assert: CssConstants dotted equals: 'dotted';
		assert: CssConstants double equals: 'double';
		assert: CssConstants groove equals: 'groove';
		assert: CssConstants inset equals: 'inset';
		assert: CssConstants medium equals: 'medium';
		assert: CssConstants outset equals: 'outset';
		assert: CssConstants ridge equals: 'ridge';
		assert: CssConstants separate equals: 'separate';
		assert: CssConstants solid equals: 'solid';
		assert: CssConstants thick equals: 'thick';
		assert: CssConstants thin equals: 'thin'
]

{ #category : #Tests }
CssConstantsTest >> testCursors [

	self
		assert: CssConstants crosshair equals: 'crosshair';
		assert: CssConstants default equals: 'default';
		assert: CssConstants help equals: 'help';
		assert: CssConstants move equals: 'move';
		assert: CssConstants notAllowed equals: 'not-allowed';
		assert: CssConstants pointer equals: 'pointer';
		assert: CssConstants progress equals: 'progress';
		assert: CssConstants text equals: 'text';
		assert: CssConstants wait equals: 'wait'
]

{ #category : #Tests }
CssConstantsTest >> testDisplayConstants [

	self
		assert: CssConstants inline equals: 'inline';
		assert: CssConstants inlineBlock equals: 'inline-block';
		assert: CssConstants inlineTable equals: 'inline-table';
		assert: CssConstants listItem equals: 'list-item';
		assert: CssConstants table equals: 'table';
		assert: CssConstants tableCaption equals: 'table-caption';
		assert: CssConstants tableCell equals: 'table-cell';
		assert: CssConstants tableColumn equals: 'table-column';
		assert: CssConstants tableColumnGroup equals: 'table-column-group';
		assert: CssConstants tableFooterGroup equals: 'table-footer-group';
		assert: CssConstants tableHeaderGroup equals: 'table-header-group';
		assert: CssConstants tableRow equals: 'table-row';
		assert: CssConstants tableRowGroup equals: 'table-row-group'
]

{ #category : #Tests }
CssConstantsTest >> testFontConstants [

	self
		assert: CssConstants bold equals: 'bold';
		assert: CssConstants bolder equals: 'bolder';
		assert: CssConstants caption equals: 'caption';
		assert: CssConstants icon equals: 'icon';
		assert: CssConstants lighter equals: 'lighter';
		assert: CssConstants menu equals: 'menu';
		assert: CssConstants messageBox equals: 'message-box';
		assert: CssConstants oblique equals: 'oblique';
		assert: CssConstants smallCaption equals: 'small-caption';
		assert: CssConstants statusBar equals: 'status-bar'
]

{ #category : #Tests }
CssConstantsTest >> testGradientConstants [
	
	self
		assert: CssConstants closestSide equals: 'closest-side';
		assert: CssConstants farthestSide equals: 'farthest-side';
		assert: CssConstants closestCorner equals: 'closest-corner';
		assert: CssConstants farthestCorner equals: 'farthest-corner'
]

{ #category : #Tests }
CssConstantsTest >> testListProperties [

	self
		assert: CssConstants armenian equals: 'armenian';
		assert: CssConstants decimal equals: 'decimal';
		assert: CssConstants decimalLeadingZero equals: 'decimal-leading-zero';
		assert: CssConstants disc equals: 'disc';
		assert: CssConstants georgian equals: 'georgian';
		assert: CssConstants lowerGreek equals: 'lower-greek';
		assert: CssConstants lowerLatin equals: 'lower-latin';
		assert: CssConstants lowerRoman equals: 'lower-roman';
		assert: CssConstants outside equals: 'outside';
		assert: CssConstants square equals: 'square';
		assert: CssConstants upperAlpha equals: 'upper-alpha';
		assert: CssConstants upperLatin equals: 'upper-latin';
		assert: CssConstants upperRoman equals: 'upper-roman'
]

{ #category : #Tests }
CssConstantsTest >> testPositioningProperties [

	self
		assert: CssConstants absolute equals: 'absolute';
		assert: CssConstants always equals: 'always';
		assert: CssConstants avoid equals: 'avoid';
		assert: CssConstants baseline equals: 'baseline';
		assert: CssConstants justify equals: 'justify';
		assert: CssConstants static equals: 'static';
		assert: CssConstants sub equals: 'sub';
		assert: CssConstants super equals: 'super';
		assert: CssConstants textBottom equals: 'text-bottom';
		assert: CssConstants textTop equals: 'text-top';
		assert: CssConstants visible equals: 'visible'
]

{ #category : #Tests }
CssConstantsTest >> testRepeatProperties [

	self
		assert: CssConstants noRepeat equals: 'no-repeat';
		assert: CssConstants repeat equals: 'repeat';
		assert: CssConstants repeatX equals: 'repeat-x';
		assert: CssConstants repeatY equals: 'repeat-y'
]

{ #category : #Tests }
CssConstantsTest >> testSizeConstants [
	
	self 
		assert: CssConstants cover equals: 'cover'
]

{ #category : #Tests }
CssConstantsTest >> testTextConstants [

	self
		assert: CssConstants blink equals: 'blink';
		assert: CssConstants filled equals: 'filled';
		assert: CssConstants open equals: 'open';
		assert: CssConstants dot equals: 'dot';
		assert: CssConstants doubleCircle equals: 'double-circle';
		assert: CssConstants lineThrough equals: 'line-through';
		assert: CssConstants lowercase equals: 'lowercase';
		assert: CssConstants triangle equals: 'triangle';
		assert: CssConstants sesame equals: 'sesame';
		assert: CssConstants over equals: 'over';
		assert: CssConstants overline equals: 'overline';
		assert: CssConstants pre equals: 'pre';
		assert: CssConstants preLine equals: 'pre-line';
		assert: CssConstants preWrap equals: 'pre-wrap';
		assert: CssConstants uppercase equals: 'uppercase'
]
