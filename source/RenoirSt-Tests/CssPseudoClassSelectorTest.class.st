"
A CssPseudoClassSelectorTest is a test class for testing the behavior of CssPseudoClassSelector
"
Class {
	#name : #CssPseudoClassSelectorTest,
	#superclass : #TestCase,
	#category : 'RenoirSt-Tests-Selectors'
}

{ #category : #Tests }
CssPseudoClassSelectorTest >> testBuildingShortcut [
	
	| baseSelector |
	
	baseSelector := CssUniversalSelector explicit.
	
	self
		assert: (baseSelector lang: 'es-ar') printString equals: '*:lang(es-ar)';
		assert: baseSelector link printString equals: '*:link';
		assert: baseSelector visited printString equals: '*:visited';
		assert: baseSelector target printString equals: '*:target';
		assert: baseSelector enabled printString equals: '*:enabled';
		assert: baseSelector disabled printString equals: '*:disabled';
		assert: baseSelector checked printString equals: '*:checked';
		assert: baseSelector active printString equals: '*:active';
		assert: baseSelector hover printString equals: '*:hover';
		assert: baseSelector focus printString equals: '*:focus';
		assert: (baseSelector not: (baseSelector class: 'bad')) printString equals: '*:not(*.bad)'

]

{ #category : #Tests }
CssPseudoClassSelectorTest >> testBuildingShortcutOfStructuralPseudoClasses [
	
	| baseSelector |
	
	baseSelector := CssUniversalSelector explicit.
	
	self
		assert: baseSelector root printString equals: '*:root';
		assert: (baseSelector childAt: 2) printString equals: '*:nth-child(2)';
		assert: (baseSelector childFromLastAt: 2) printString equals: '*:nth-last-child(2)';
		assert: (baseSelector siblingOfTypeAt: 3) printString equals: '*:nth-of-type(3)';
		assert: (baseSelector siblingOfTypeFromLastAt: 2) printString equals: '*:nth-last-of-type(2)';
		assert: baseSelector firstChild printString equals: '*:first-child';
		assert: baseSelector lastChild printString equals: '*:last-child';
		assert: baseSelector firstOfType printString equals: '*:first-of-type';
		assert: baseSelector lastOfType printString equals: '*:last-of-type';
		assert: baseSelector onlyChild printString equals: '*:only-child';
		assert: baseSelector onlyOfType printString equals: '*:only-of-type';
		assert: baseSelector empty printString equals: '*:empty'
]

{ #category : #Tests }
CssPseudoClassSelectorTest >> testBuildingShortcutOfStructuralPseudoClassesUsingFormulas [
	
	| baseSelector |
	
	baseSelector := CssUniversalSelector explicit.
	
	self
		assert: (baseSelector childAt: 2 n - 3) printString equals: '*:nth-child(2n-3)';
		assert: (baseSelector childFromLastAt: 2 n) printString equals: '*:nth-last-child(2n)';
		assert: (baseSelector siblingOfTypeAt: 3 n) printString equals: '*:nth-of-type(3n)';
		assert: (baseSelector siblingOfTypeFromLastAt: 2 n + 1) printString equals: '*:nth-last-of-type(2n+1)'
]

{ #category : #Tests }
CssPseudoClassSelectorTest >> testPrintStringOfLangPseudoClass [
	
	| baseSelector |
	
	baseSelector := CssUniversalSelector explicit.
	
	self assert: (CssPseudoClassSelector language: 'es-ar' on: baseSelector) printString equals: '*:lang(es-ar)'
]

{ #category : #Tests }
CssPseudoClassSelectorTest >> testPrintStringOfLinkPseudoClasses [

	| baseSelector |

	baseSelector := CssUniversalSelector explicit.

	self
		assert: (CssPseudoClassSelector linkOn: baseSelector) printString equals: '*:link';
		assert: (CssPseudoClassSelector visitedOn: baseSelector) printString equals: '*:visited'
]

{ #category : #Tests }
CssPseudoClassSelectorTest >> testPrintStringOfNotPseudoClass [
	
	| baseSelector selectorToNegate |
	
	baseSelector := CssUniversalSelector explicit.
	selectorToNegate := CssIdSelector for: #id over: baseSelector.
	
	self assert: (CssPseudoClassSelector not: selectorToNegate on: baseSelector) printString equals: '*:not(*#id)'
]

{ #category : #Tests }
CssPseudoClassSelectorTest >> testPrintStringOfStructuralPseudoClasses [

	| baseSelector |

	baseSelector := CssUniversalSelector explicit.

	self
		assert: (CssPseudoClassSelector rootOn: baseSelector) printString equals: '*:root';
		assert: (CssPseudoClassSelector childAt: 2 on: baseSelector) printString equals: '*:nth-child(2)';
		assert: (CssPseudoClassSelector childFromLastAt: 2 on: baseSelector) printString equals: '*:nth-last-child(2)';
		assert: (CssPseudoClassSelector siblingOfTypeAt: 3 on: baseSelector) printString equals: '*:nth-of-type(3)';
		assert: (CssPseudoClassSelector siblingOfTypeFromLastAt: 2 on: baseSelector) printString equals: '*:nth-last-of-type(2)';
		assert: (CssPseudoClassSelector firstChildOn: baseSelector) printString equals: '*:first-child';
		assert: (CssPseudoClassSelector lastChildOn: baseSelector) printString equals: '*:last-child';
		assert: (CssPseudoClassSelector firstOfTypeOn: baseSelector) printString equals: '*:first-of-type';
		assert: (CssPseudoClassSelector lastOfTypeOn: baseSelector) printString equals: '*:last-of-type';
		assert: (CssPseudoClassSelector onlyChildOn: baseSelector) printString equals: '*:only-child';
		assert: (CssPseudoClassSelector onlyOfTypeOn: baseSelector) printString equals: '*:only-of-type';
		assert: (CssPseudoClassSelector emptyOn: baseSelector) printString equals: '*:empty'
]

{ #category : #Tests }
CssPseudoClassSelectorTest >> testPrintStringOfStructuralPseudoClassesUsingEvenAndOddConstants [

	| baseSelector |

	baseSelector := CssUniversalSelector explicit.

	self
		assert: (CssPseudoClassSelector childAt: CssConstants even on: baseSelector) printString equals: '*:nth-child(even)';
		assert: (CssPseudoClassSelector siblingOfTypeAt: CssConstants odd on: baseSelector) printString equals: '*:nth-of-type(odd)'
]

{ #category : #Tests }
CssPseudoClassSelectorTest >> testPrintStringOfTargetPseudoClass [

	| baseSelector |

	baseSelector := CssUniversalSelector explicit.

	self
		assert: (CssPseudoClassSelector targetOn: baseSelector) printString equals: '*:target'
]

{ #category : #Tests }
CssPseudoClassSelectorTest >> testPrintStringOfUIElementsStatePseudoClasses [

	| baseSelector |

	baseSelector := CssUniversalSelector explicit.

	self
		assert: (CssPseudoClassSelector enabledOn: baseSelector) printString equals: '*:enabled';
		assert: (CssPseudoClassSelector disabledOn: baseSelector) printString equals: '*:disabled';
		assert: (CssPseudoClassSelector checkedOn: baseSelector) printString equals: '*:checked'
]

{ #category : #Tests }
CssPseudoClassSelectorTest >> testPrintStringOfUserActionPseudoClasses [

	| baseSelector |

	baseSelector := CssUniversalSelector explicit.

	self
		assert: (CssPseudoClassSelector activeOn: baseSelector) printString equals: '*:active';
		assert: (CssPseudoClassSelector hoverOn: baseSelector) printString equals: '*:hover';
		assert: (CssPseudoClassSelector focusOn: baseSelector) printString equals: '*:focus'
]
