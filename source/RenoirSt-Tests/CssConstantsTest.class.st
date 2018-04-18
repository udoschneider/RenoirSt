"
A CssConstantsTest is a test class for testing the behavior of CssConstants
"
Class {
	#name : #CssConstantsTest,
	#superclass : #TestCase,
	#category : 'RenoirSt-Tests'
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
		assert: CssConstants initial equals: 'initial'
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
CssConstantsTest >> testGradientConstants [
	
	self
		assert: CssConstants closestSide equals: 'closest-side';
		assert: CssConstants farthestSide equals: 'farthest-side';
		assert: CssConstants closestCorner equals: 'closest-corner';
		assert: CssConstants farthestCorner equals: 'farthest-corner'
]

{ #category : #Tests }
CssConstantsTest >> testTextConstants [
	
	self
		assert: CssConstants filled equals: 'filled';
		assert: CssConstants open equals: 'open';
		assert: CssConstants dot equals: 'dot';
		assert: CssConstants doubleCircle equals: 'double-circle';
		assert: CssConstants triangle equals: 'triangle';
		assert: CssConstants sesame equals: 'sesame';
		assert: CssConstants over equals: 'over'
]
