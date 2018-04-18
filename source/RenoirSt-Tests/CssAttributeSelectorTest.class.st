"
A CssAttributeSelectorTest is a test class for testing the behavior of CssAttributeSelector
"
Class {
	#name : #CssAttributeSelectorTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Selectors'
}

{ #category : #Tests }
CssAttributeSelectorTest >> testBuildingShortcut [

	| baseSelector |
	baseSelector := CssUniversalSelector explicit.

	self
		assert: (baseSelector havingAttribute: 'foo') printString equals: '*[foo]';
		assert: (baseSelector withAttribute: 'foo' equalTo: 'bar') printString equals: '*[foo="bar"]';
		assert: (baseSelector attribute: 'foo' includes: 'bar') printString equals: '*[foo~="bar"]';
		assert: (baseSelector attribute: 'foo' beginsWith: 'bar') printString equals: '*[foo^="bar"]';
		assert: (baseSelector attribute: 'foo' endsWith: 'bar') printString equals: '*[foo$="bar"]';
		assert: (baseSelector attribute: 'foo' includesSubstring: 'bar') printString equals: '*[foo*="bar"]';
		assert: (baseSelector firstValueOfAttribute: 'foo' beginsWith: 'en') printString equals: '*[foo|="en"]'
]

{ #category : #Tests }
CssAttributeSelectorTest >> testPrintString [

	| baseSelector |
	baseSelector := CssUniversalSelector explicit.

	self
		assert: (CssAttributeSelector having: baseSelector theAttribute: 'foo') printString equals: '*[foo]';
		assert: (CssAttributeSelector isAttribute: 'foo' of: baseSelector equalTo: 'bar') printString equals: '*[foo="bar"]';
		assert: (CssAttributeSelector attribute: 'foo' of: baseSelector includes: 'bar') printString equals: '*[foo~="bar"]';
		assert: (CssAttributeSelector attribute: 'foo' of: baseSelector beginsWith: 'bar') printString equals: '*[foo^="bar"]';
		assert: (CssAttributeSelector attribute: 'foo' of: baseSelector endsWith: 'bar') printString equals: '*[foo$="bar"]';
		assert: (CssAttributeSelector attribute: 'foo' of: baseSelector includesSubstring: 'bar') printString equals: '*[foo*="bar"]';
		assert: (CssAttributeSelector firstValueOfAttribute: 'foo' of: baseSelector beginsWith: 'en') printString equals: '*[foo|="en"]'
]
