"
I'm a pool dictionary providing access to the library namespaces
"
Class {
	#name : #RenoirSt,
	#superclass : #SharedPool,
	#classVars : [
		'CssConstants',
		'CssMediaQueryConstants'
	],
	#category : #'RenoirSt-Common'
}

{ #category : #initialization }
RenoirSt class >> initialize [

	<ignoreForCoverage>
	self initializeCssConstants.
	self initializeMediaQueryConstants
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeAttachmentConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #fixed to: 'fixed';
		bind: #scroll to: 'scroll'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeBackgroundConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #borderBox to: 'border-box';
		bind: #closestCorner to: 'closest-corner';
		bind: #closestSide to: 'closest-side';
		bind: #contentBox to: 'content-box';
		bind: #farthestCorner to: 'farthest-corner';
		bind: #farthestSide to: 'farthest-side';
		bind: #local to: 'local';
		bind: #paddingBox to: 'padding-box';
		bind: #round to: 'round';
		bind: #space to: 'space'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeBasicConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #auto to: 'auto';
		bind: #even to: 'even';
		bind: #hide to: 'hide';
		bind: #inherit to: 'inherit';
		bind: #initial to: 'initial';
		bind: #invert to: 'invert';
		bind: #none to: 'none';
		bind: #odd to: 'odd';
		bind: #show to: 'show';
		bind: #vertical to: 'vertical'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeBorderConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #collapse to: 'collapse';
		bind: #dashed to: 'dashed';
		bind: #dotted to: 'dotted';
		bind: #double to: 'double';
		bind: #fill to: 'fill';
		bind: #groove to: 'groove';
		bind: #inset to: 'inset';
		bind: #medium to: 'medium';
		bind: #outset to: 'outset';
		bind: #ridge to: 'ridge';
		bind: #separate to: 'separate';
		bind: #solid to: 'solid';
		bind: #stretch to: 'stretch';
		bind: #thick to: 'thick';
		bind: #thin to: 'thin'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeCssConstants [

	<ignoreForCoverage>
	CssConstants := Namespace new.
	self
		initializeAttachmentConstants;
		initializeBackgroundConstants;
		initializeBasicConstants;
		initializeBorderConstants;
		initializeCursorConstants;
		initializeDisplayConstants;
		initializeFontConstants;
		initializeListConstants;
		initializePositioningConstants;
		initializeRepeatConstants;
		initializeSizeConstants;
		initializeTextConstants
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeCursorConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #crosshair to: 'crosshair';
		bind: #default to: 'default';
		bind: #help to: 'help';
		bind: #move to: 'move';
		bind: #notAllowed to: 'not-allowed';
		bind: #pointer to: 'pointer';
		bind: #progress to: 'progress';
		bind: #text to: 'text';
		bind: #wait to: 'wait'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeDisplayConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #block to: 'block';
		bind: #inline to: 'inline';
		bind: #inlineBlock to: 'inline-block';
		bind: #inlineTable to: 'inline-table';
		bind: #listItem to: 'list-item';
		bind: #table to: 'table';
		bind: #tableCaption to: 'table-caption';
		bind: #tableCell to: 'table-cell';
		bind: #tableColumn to: 'table-column';
		bind: #tableColumnGroup to: 'table-column-group';
		bind: #tableFooterGroup to: 'table-footer-group';
		bind: #tableHeaderGroup to: 'table-header-group';
		bind: #tableRow to: 'table-row';
		bind: #tableRowGroup to: 'table-row-group'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeFontConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #bold to: 'bold';
		bind: #bolder to: 'bolder';
		bind: #caption to: 'caption';
		bind: #icon to: 'icon';
		bind: #italic to: 'italic';
		bind: #lighter to: 'lighter';
		bind: #menu to: 'menu';
		bind: #messageBox to: 'message-box';
		bind: #normal to: 'normal';
		bind: #oblique to: 'oblique';
		bind: #smallCaps to: 'small-caps';
		bind: #smallCaption to: 'small-caption';
		bind: #statusBar to: 'status-bar'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeListConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #armenian to: 'armenian';
		bind: #circle to: 'circle';
		bind: #decimal to: 'decimal';
		bind: #decimalLeadingZero to: 'decimal-leading-zero';
		bind: #disc to: 'disc';
		bind: #georgian to: 'georgian';
		bind: #inside to: 'inside';
		bind: #lowerAlpha to: 'lower-alpha';
		bind: #lowerGreek to: 'lower-greek';
		bind: #lowerLatin to: 'lower-latin';
		bind: #lowerRoman to: 'lower-roman';
		bind: #outside to: 'outside';
		bind: #square to: 'square';
		bind: #upperAlpha to: 'upper-alpha';
		bind: #upperLatin to: 'upper-latin';
		bind: #upperRoman to: 'upper-roman'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeMediaQueryConstants [

	<ignoreForCoverage>
	CssMediaQueryConstants := Namespace new.
	"Media Types"
	CssMediaQueryConstants
		bind: #braille to: 'braille';
		bind: #embossed to: 'embossed';
		bind: #handheld to: 'handheld';
		bind: #print to: 'print';
		bind: #projection to: 'projection';
		bind: #screen to: 'screen';
		bind: #speech to: 'speech';
		bind: #tty to: 'tty';
		bind: #tv to: 'tv'.
	"Orientation"
	CssMediaQueryConstants
		bind: #landscape to: 'landscape';
		bind: #portrait to: 'portrait'.
	"Scan"
	CssMediaQueryConstants
		bind: #interlace to: 'interlace';
		bind: #progressive to: 'progressive'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializePositioningConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #absolute to: 'absolute';
		bind: #always to: 'always';
		bind: #avoid to: 'avoid';
		bind: #baseline to: 'baseline';
		bind: #both to: 'both';
		bind: #bottom to: 'bottom';
		bind: #center to: 'center';
		bind: #hidden to: 'hidden';
		bind: #justify to: 'justify';
		bind: #left to: 'left';
		bind: #middle to: 'middle';
		bind: #relative to: 'relative';
		bind: #right to: 'right';
		bind: #static to: 'static';
		bind: #sub to: 'sub';
		bind: #super to: 'super';
		bind: #textBottom to: 'text-bottom';
		bind: #textTop to: 'text-top';
		bind: #top to: 'top';
		bind: #visible to: 'visible'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeRepeatConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #noRepeat to: 'no-repeat';
		bind: #repeat to: 'repeat';
		bind: #repeatX to: 'repeat-x';
		bind: #repeatY to: 'repeat-y'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeSizeConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #contain to: 'contain';
		bind: #cover to: 'cover'
]

{ #category : #'private - initialization' }
RenoirSt class >> initializeTextConstants [

	<ignoreForCoverage>
	CssConstants
		bind: #blink to: 'blink';
		bind: #breakWord to: 'break-word';
		bind: #capitalize to: 'capitalize';
		bind: #dot to: 'dot';
		bind: #doubleCircle to: 'double-circle';
		bind: #ellipsis to: 'ellipsis';
		bind: #filled to: 'filled';
		bind: #lineThrough to: 'line-through';
		bind: #lowercase to: 'lowercase';
		bind: #nowrap to: 'nowrap';
		bind: #open to: 'open';
		bind: #over to: 'over';
		bind: #overline to: 'overline';
		bind: #pre to: 'pre';
		bind: #preLine to: 'pre-line';
		bind: #preWrap to: 'pre-wrap';
		bind: #sesame to: 'sesame';
		bind: #triangle to: 'triangle';
		bind: #under to: 'under';
		bind: #underline to: 'underline';
		bind: #uppercase to: 'uppercase'
]
