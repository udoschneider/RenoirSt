"
A CascadingStyleSheetBuilder is a builder to help creting style sheets.
"
Class {
	#name : #CascadingStyleSheetBuilder,
	#superclass : #Object,
	#instVars : [
		'statements'
	],
	#pools : [
		'RenoirSt'
	],
	#category : #'RenoirSt-Common'
}

{ #category : #private }
CascadingStyleSheetBuilder >> addStatement: aCssStatement [
	"aCssStatement can be a Rule Set or some At-Rule"
	statements add: aCssStatement
]

{ #category : #building }
CascadingStyleSheetBuilder >> build [
	
	^CascadingStyleSheet withAll: statements 
]

{ #category : #Configuring }
CascadingStyleSheetBuilder >> comment: aCommentText [

	self addStatement: (CssComment for: aCommentText)
]

{ #category : #Configuring }
CascadingStyleSheetBuilder >> declare: aSubStyleSheetBlock forMediaMatching: aMediaQueryBlock [

	| styleSheetBuilder mediaQueryBuilder |

	styleSheetBuilder := self class new.
	aSubStyleSheetBlock value: styleSheetBuilder.

	mediaQueryBuilder := CssMediaQueryRuleBuilder new.
	aMediaQueryBlock cull: mediaQueryBuilder cull: CssMediaQueryConstants.

	mediaQueryBuilder useStyleSheet: styleSheetBuilder build.
	self addStatement: mediaQueryBuilder build
]

{ #category : #Configuring }
CascadingStyleSheetBuilder >> declareFontFaceRuleWith: aDeclarationAction [

	|  declarationBlock |
	declarationBlock := CssDeclarationBlock new.
	aDeclarationAction cull: declarationBlock cull: CssConstants.
	self addStatement: (CssRuleSet selector: '@font-face' declarations: declarationBlock)
]

{ #category : #Configuring }
CascadingStyleSheetBuilder >> declareRuleSetFor: aSelectorBlock with: aDeclarationAction [

	self declareRuleSetFor: aSelectorBlock with: aDeclarationAction andComment: ''
]

{ #category : #Configuring }
CascadingStyleSheetBuilder >> declareRuleSetFor: aSelectorBlock with: aDeclarationAction andComment: aComment [

	| selector declarationBlock |
	selector := aSelectorBlock cull: CssUniversalSelector implicit.
	declarationBlock := CssDeclarationBlock new.
	aDeclarationAction cull: declarationBlock cull: CssConstants.
	self addStatement: (CssRuleSet selector: selector declarations: declarationBlock comment: aComment)
]

{ #category : #'initialize-release' }
CascadingStyleSheetBuilder >> initialize [

	super initialize.
	statements := OrderedCollection new
]
