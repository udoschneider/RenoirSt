Extension { #name : #CssSelector }

{ #category : #'*RenoirSt-HTML' }
CssSelector >> abbreviation [

	 ^self descendantOfType: 'abbr'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> address [

	 ^self descendantOfType: 'address'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> anchor [

	 ^self descendantOfType: 'a'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> article [

	 ^self descendantOfType: 'article'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> aside [

	 ^self descendantOfType: 'aside'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> blockquote [

	 ^self descendantOfType: 'blockquote'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> body [

	 ^self descendantOfType: 'body'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> button [

	 ^self descendantOfType: 'button'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> cite [

	 ^self descendantOfType: 'cite'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> code [

	 ^self descendantOfType: 'code'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> definitionDescription [

	 ^self descendantOfType: 'dd'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> definitionList [

	 ^self descendantOfType: 'dl'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> definitionTerm [

	 ^self descendantOfType: 'dt'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> div [

	 ^self descendantOfType: 'div'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> emphasis [

	 ^self descendantOfType: 'em'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> fieldSet [

	 ^self descendantOfType: 'fieldset'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> figure [

	 ^self descendantOfType: 'figure'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> figureCaption [

	 ^self descendantOfType: 'figcaption'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> footer [

	 ^self descendantOfType: 'footer'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> form [

	 ^self descendantOfType: 'form'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> h1 [

	^self headingLevel: 1
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> h2 [

	^self headingLevel: 2
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> h3 [

	^self headingLevel: 3
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> h4 [

	^self headingLevel: 4
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> h5 [

	^self headingLevel: 5
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> h6 [

	^self headingLevel: 6
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> header [

	 ^self descendantOfType: 'header'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> headingLevel: aNaturalNumber [

	 ^self descendantOfType: ('h<1s>' expandMacrosWith: aNaturalNumber printString)
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> horizontalRule [

	 ^self descendantOfType: 'hr'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> image [

	 ^self descendantOfType: 'img'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> input [

	 ^self descendantOfType: 'input'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> keyboardInput [

	 ^self descendantOfType: 'kbd'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> label [

	 ^self descendantOfType: 'label'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> legend [

	 ^self descendantOfType: 'legend'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> listItem [

	 ^self descendantOfType: 'li'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> main [

	 ^self descendantOfType: 'main'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> nav [

	 ^self descendantOfType: 'nav'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> option [

	 ^self descendantOfType: 'option'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> optionGroup [

	 ^self descendantOfType: 'optgroup'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> orderedList [

	 ^self descendantOfType: 'ol'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> paragraph [

	 ^self descendantOfType: 'p'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> preformatted [

	 ^self descendantOfType: 'pre'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> sample [

	 ^self descendantOfType: 'samp'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> section [

	 ^self descendantOfType: 'section'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> select [

	 ^self descendantOfType: 'select'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> small [

	 ^self descendantOfType: 'small'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> span [

	 ^self descendantOfType: 'span'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> strong [

	 ^self descendantOfType: 'strong'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> subscript [

	 ^self descendantOfType: 'sub'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> superscript [

	 ^self descendantOfType: 'sup'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> table [

	 ^self descendantOfType: 'table'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> tableBody [

	 ^self descendantOfType: 'tbody'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> tableData [

	 ^self descendantOfType: 'td'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> tableFooter [

	 ^self descendantOfType: 'tfoot'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> tableHeader [

	 ^self descendantOfType: 'thead'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> tableHeaderCell [

	 ^self descendantOfType: 'th'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> tableRow [

	 ^self descendantOfType: 'tr'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> textArea [

	 ^self descendantOfType: 'textarea'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> unorderedList [

	 ^self descendantOfType: 'ul'
]

{ #category : #'*RenoirSt-HTML' }
CssSelector >> variable [

	 ^self descendantOfType: 'var'
]
