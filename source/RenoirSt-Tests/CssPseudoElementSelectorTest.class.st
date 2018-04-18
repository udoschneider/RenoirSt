"
A CssPseudoElementSelectorTest is a test class for testing the behavior of CssPseudoElementSelector
"
Class {
	#name : #CssPseudoElementSelectorTest,
	#superclass : #TestCase,
	#category : 'RenoirSt-Tests-Selectors'
}

{ #category : #Tests }
CssPseudoElementSelectorTest >> testBuildingShortcut [

	| baseSelector |

	baseSelector := CssUniversalSelector explicit.

	self
		assert: baseSelector firstLine printString equals: '*::first-line';
		assert: baseSelector firstLetter printString equals: '*::first-letter';
		assert: baseSelector before printString equals: '*::before';
		assert: baseSelector after printString equals: '*::after'
]

{ #category : #Tests }
CssPseudoElementSelectorTest >> testPrintString [

	| baseSelector |

	baseSelector := CssUniversalSelector explicit.

	self
		assert: (CssPseudoElementSelector firstLineOf: baseSelector) printString equals: '*::first-line';
		assert: (CssPseudoElementSelector firstLetterOf: baseSelector) printString equals: '*::first-letter';
		assert: (CssPseudoElementSelector before: baseSelector) printString equals: '*::before';
		assert: (CssPseudoElementSelector after: baseSelector) printString equals: '*::after'
]
