"
A CascadingStyleSheetBuilderTest is a test class for testing the behavior of CascadingStyleSheetBuilder
"
Class {
	#name : #CascadingStyleSheetBuilderTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests'
}

{ #category : #Tests }
CascadingStyleSheetBuilderTest >> testBuildingOnlyWithComments [
	
	| builder |
	builder := CascadingStyleSheetBuilder new.
	builder comment: 'Example CSS'.
	
	self
		assert: builder build printString
		equals: '/*Example CSS*/<n>' expandMacros
]

{ #category : #Tests }
CascadingStyleSheetBuilderTest >> testBuildingSimpleStyleSheet [
	
	| builder |
	builder := CascadingStyleSheetBuilder new.
	builder
		declareRuleSetFor: [ :selector | selector class: 'xxx' ]
			with: [ :style | 
			style
				color: 'white';
				margin: 12 pt ];
		declareRuleSetFor: [ :selector | selector id: #oop ] with: [ :style | style color: 'red' ].
	
	self
		assert: builder build printString
		equals: '.xxx<n>{<n><t>color: white;<n><t>margin: 12pt;<n>}<n><n>#oop<n>{<n><t>color: red;<n>}' expandMacros
]

{ #category : #Tests }
CascadingStyleSheetBuilderTest >> testBuildingSimpleStyleSheetWithSomeComments [

	| builder |
	builder := CascadingStyleSheetBuilder new.
	builder declareRuleSetFor: [ :selector | selector id: #oop ] with: [ :style | style color: 'red' ] andComment: 'Example CSS'.

	self assert: builder build printString equals: '/*Example CSS*/<n>#oop<n>{<n><t>color: red;<n>}' expandMacros
]

{ #category : #Tests }
CascadingStyleSheetBuilderTest >> testBuildingStyleSheetWithMediaQuery [

	| builder |
	builder := CascadingStyleSheetBuilder new.
	builder
		declareRuleSetFor: [ :selector | selector class: 'xxx' ] with: [ :style | style margin: 12 pt ];
		declare: [ :cssBuilder | cssBuilder declareRuleSetFor: [ :selector | selector id: #oop ] with: [ :style | style color: 'red' ] ]
			forMediaMatching: [ :queryBuilder | queryBuilder type: CssMediaQueryConstants print ].

	self
		assert: builder build printString
		equals: '.xxx<n>{<n><t>margin: 12pt;<n>}<n><n>@media print<n>{<n><t>#oop<n><t>{<n><t><t>color: red;<n><t>}<n>}' expandMacros
]
