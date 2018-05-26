"
A CssConstantsTest is a test class for testing the behavior of CssConstants
"
Class {
	#name : #CssConstantsTest,
	#superclass : #TestCase,
	#pools : [
		'RenoirSt'
	],
	#category : #'RenoirSt-Tests-Common'
}

{ #category : #'private - asserting' }
CssConstantsTest >> assertConstant: aSymbol equals: anExpectedValue [

	self assert: CssConstants >> aSymbol equals: anExpectedValue
]

{ #category : #Tests }
CssConstantsTest >> testAttachmentProperties [

	self
		assertConstant: #fixed equals: 'fixed';
		assertConstant: #scroll equals: 'scroll'
]

{ #category : #Tests }
CssConstantsTest >> testBackgroundProperties [
	
	self
		assertConstant: #round equals: 'round';
		assertConstant: #space equals: 'space';
		assertConstant: #local equals: 'local';
		assertConstant: #borderBox equals: 'border-box';
		assertConstant: #paddingBox equals: 'padding-box';
		assertConstant: #contentBox equals: 'content-box';
		assertConstant: #closestCorner equals: 'closest-corner';
		assertConstant: #closestSide equals: 'closest-side';
		assertConstant: #farthestCorner equals: 'farthest-corner';
		assertConstant: #farthestSide equals: 'farthest-side'
]

{ #category : #Tests }
CssConstantsTest >> testBasicConstants [

	self
		assertConstant: #auto equals: 'auto';
		assertConstant: #even equals: 'even';
		assertConstant: #hide equals: 'hide';
		assertConstant: #inherit equals: 'inherit';
		assertConstant: #none equals: 'none';
		assertConstant: #odd equals: 'odd';
		assertConstant: #show equals: 'show';
		assertConstant: #vertical equals: 'vertical';
		assertConstant: #initial equals: 'initial';
		assertConstant: #invert equals: 'invert'
]

{ #category : #Tests }
CssConstantsTest >> testBorderProperties [

	self
		assertConstant: #fill equals: 'fill';
		assertConstant: #stretch equals: 'stretch';
		assertConstant: #collapse equals: 'collapse';
		assertConstant: #dashed equals: 'dashed';
		assertConstant: #dotted equals: 'dotted';
		assertConstant: #double equals: 'double';
		assertConstant: #groove equals: 'groove';
		assertConstant: #inset equals: 'inset';
		assertConstant: #medium equals: 'medium';
		assertConstant: #outset equals: 'outset';
		assertConstant: #ridge equals: 'ridge';
		assertConstant: #separate equals: 'separate';
		assertConstant: #solid equals: 'solid';
		assertConstant: #thick equals: 'thick';
		assertConstant: #thin equals: 'thin'
]

{ #category : #Tests }
CssConstantsTest >> testCursors [

	self
		assertConstant: #crosshair equals: 'crosshair';
		assertConstant: #default equals: 'default';
		assertConstant: #help equals: 'help';
		assertConstant: #move equals: 'move';
		assertConstant: #notAllowed equals: 'not-allowed';
		assertConstant: #pointer equals: 'pointer';
		assertConstant: #progress equals: 'progress';
		assertConstant: #text equals: 'text';
		assertConstant: #wait equals: 'wait'
]

{ #category : #Tests }
CssConstantsTest >> testDisplayConstants [

	self
		assertConstant: #inline equals: 'inline';
		assertConstant: #inlineBlock equals: 'inline-block';
		assertConstant: #inlineTable equals: 'inline-table';
		assertConstant: #listItem equals: 'list-item';
		assertConstant: #table equals: 'table';
		assertConstant: #tableCaption equals: 'table-caption';
		assertConstant: #tableCell equals: 'table-cell';
		assertConstant: #tableColumn equals: 'table-column';
		assertConstant: #tableColumnGroup equals: 'table-column-group';
		assertConstant: #tableFooterGroup equals: 'table-footer-group';
		assertConstant: #tableHeaderGroup equals: 'table-header-group';
		assertConstant: #tableRow equals: 'table-row';
		assertConstant: #tableRowGroup equals: 'table-row-group'
]

{ #category : #Tests }
CssConstantsTest >> testFontConstants [

	self
		assertConstant: #bold equals: 'bold';
		assertConstant: #bolder equals: 'bolder';
		assertConstant: #caption equals: 'caption';
		assertConstant: #icon equals: 'icon';
		assertConstant: #lighter equals: 'lighter';
		assertConstant: #menu equals: 'menu';
		assertConstant: #messageBox equals: 'message-box';
		assertConstant: #oblique equals: 'oblique';
		assertConstant: #smallCaption equals: 'small-caption';
		assertConstant: #statusBar equals: 'status-bar'
]

{ #category : #Tests }
CssConstantsTest >> testGradientConstants [
	
	self
		assertConstant: #closestSide equals: 'closest-side';
		assertConstant: #farthestSide equals: 'farthest-side';
		assertConstant: #closestCorner equals: 'closest-corner';
		assertConstant: #farthestCorner equals: 'farthest-corner'
]

{ #category : #Tests }
CssConstantsTest >> testListProperties [

	self
		assertConstant: #armenian equals: 'armenian';
		assertConstant: #decimal equals: 'decimal';
		assertConstant: #decimalLeadingZero equals: 'decimal-leading-zero';
		assertConstant: #disc equals: 'disc';
		assertConstant: #georgian equals: 'georgian';
		assertConstant: #lowerGreek equals: 'lower-greek';
		assertConstant: #lowerLatin equals: 'lower-latin';
		assertConstant: #lowerRoman equals: 'lower-roman';
		assertConstant: #outside equals: 'outside';
		assertConstant: #square equals: 'square';
		assertConstant: #upperAlpha equals: 'upper-alpha';
		assertConstant: #upperLatin equals: 'upper-latin';
		assertConstant: #upperRoman equals: 'upper-roman'
]

{ #category : #Tests }
CssConstantsTest >> testPositioningProperties [

	self
		assertConstant: #absolute equals: 'absolute';
		assertConstant: #always equals: 'always';
		assertConstant: #avoid equals: 'avoid';
		assertConstant: #baseline equals: 'baseline';
		assertConstant: #justify equals: 'justify';
		assertConstant: #static equals: 'static';
		assertConstant: #sub equals: 'sub';
		assertConstant: #super equals: 'super';
		assertConstant: #textBottom equals: 'text-bottom';
		assertConstant: #textTop equals: 'text-top';
		assertConstant: #visible equals: 'visible'
]

{ #category : #Tests }
CssConstantsTest >> testRepeatProperties [

	self
		assertConstant: #noRepeat equals: 'no-repeat';
		assertConstant: #repeat equals: 'repeat';
		assertConstant: #repeatX equals: 'repeat-x';
		assertConstant: #repeatY equals: 'repeat-y'
]

{ #category : #Tests }
CssConstantsTest >> testSizeConstants [

	self assertConstant: #cover equals: 'cover'
]

{ #category : #Tests }
CssConstantsTest >> testTextConstants [

	self
		assertConstant: #blink equals: 'blink';
		assertConstant: #filled equals: 'filled';
		assertConstant: #open equals: 'open';
		assertConstant: #dot equals: 'dot';
		assertConstant: #doubleCircle equals: 'double-circle';
		assertConstant: #lineThrough equals: 'line-through';
		assertConstant: #lowercase equals: 'lowercase';
		assertConstant: #triangle equals: 'triangle';
		assertConstant: #sesame equals: 'sesame';
		assertConstant: #over equals: 'over';
		assertConstant: #overline equals: 'overline';
		assertConstant: #pre equals: 'pre';
		assertConstant: #preLine equals: 'pre-line';
		assertConstant: #preWrap equals: 'pre-wrap';
		assertConstant: #uppercase equals: 'uppercase'
]
