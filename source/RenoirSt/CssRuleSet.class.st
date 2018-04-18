"
A rule set (also called ""rule"") consists of a selector followed by a declaration block.
"
Class {
	#name : #CssRuleSet,
	#superclass : #CssObject,
	#instVars : [
		'selector',
		'declarationBlock',
		'comment'
	],
	#category : #RenoirSt
}

{ #category : #'Instance Creation' }
CssRuleSet class >> selector: aSelector declarations: aDeclarationBlock [ 
	
	^self selector: aSelector declarations: aDeclarationBlock comment: ''
]

{ #category : #'Instance Creation' }
CssRuleSet class >> selector: aSelector declarations: aDeclarationBlock comment: aComment [
	
	^self new initializeSelector: aSelector declarations: aDeclarationBlock comment: aComment
]

{ #category : #Printing }
CssRuleSet >> cssContentOn: aStream [

	comment cssContentOn: aStream.
	selector cssContentOn: aStream.
	aStream newLine.
	declarationBlock cssContentOn: aStream
]

{ #category : #'initialize-release' }
CssRuleSet >> initializeSelector: aSelector declarations: aDeclarationBlock comment: aCommentText [
	
	selector := aSelector.
	declarationBlock := aDeclarationBlock.
	comment := CssComment for: aCommentText
]
