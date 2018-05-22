Extension { #name : #WATagBrush }

{ #category : #'*RenoirSt-Seaside' }
WATagBrush >> setInlineStyleTo: aDeclarationAction [

	| declarationBlock |

	declarationBlock := CssDeclarationBlock new.
	aDeclarationAction cull: declarationBlock cull: RenoirSt constants.
	self style: declarationBlock
]
