"
In CSS, pattern matching rules determine which style rules apply to elements in the document tree. These patterns, called selectors, may range from simple element names to rich contextual patterns. If all conditions in the pattern are true for a certain element, the selector matches the element.

"
Class {
	#name : #CssSelector,
	#superclass : #CssObject,
	#category : 'RenoirSt-Selectors'
}

{ #category : #'building-combinators' }
CssSelector >> * aSelector [

	| ancestor |
	ancestor := CssDescendantCombinator between: self and: CssUniversalSelector explicit.
	^CssDescendantCombinator between: ancestor and: aSelector 
]

{ #category : #'building-combinators' }
CssSelector >> + aSelector [

	^CssAdjacentSiblingCombinator between: self and: aSelector 
]

{ #category : #'building-combinators' }
CssSelector >> , aSelector [

	^CssSelectorGroup with: self with: aSelector 
]

{ #category : #'building-combinators' }
CssSelector >> / aSelector [

	"This shortcut cover the cases when we cannot use the space to create the descendant combinator.
	For example if the right part of the selector needs parens."

	^ CssDescendantCombinator between: self and: aSelector
]

{ #category : #'building-combinators' }
CssSelector >> > aSelector [

	^CssChildCombinator between: self and: aSelector 
]

{ #category : #'building-pseudo classes' }
CssSelector >> active [

	^ CssPseudoClassSelector activeOn: self
]

{ #category : #'building-pseudo elements' }
CssSelector >> after [

	^CssPseudoElementSelector after: self
]

{ #category : #building }
CssSelector >> attribute: aString beginsWith: aValue [

	^ CssAttributeSelector attribute: aString of: self beginsWith: aValue
]

{ #category : #building }
CssSelector >> attribute: aString endsWith: aValue [

	^ CssAttributeSelector attribute: aString of: self endsWith: aValue
]

{ #category : #building }
CssSelector >> attribute: aString includes:aValue [

	^ CssAttributeSelector attribute: aString of: self includes: aValue
]

{ #category : #building }
CssSelector >> attribute: aString includesSubstring: aValue [

	^ CssAttributeSelector attribute: aString of: self includesSubstring: aValue
]

{ #category : #'building-pseudo elements' }
CssSelector >> before [

	^CssPseudoElementSelector before: self
]

{ #category : #'building-pseudo classes' }
CssSelector >> checked [

	^ CssPseudoClassSelector checkedOn: self
]

{ #category : #'building-structural pseudo classes' }
CssSelector >> childAt: anIndex [

	^ CssPseudoClassSelector childAt: anIndex on: self
]

{ #category : #'building-structural pseudo classes' }
CssSelector >> childFromLastAt: anIndex [

	^ CssPseudoClassSelector childFromLastAt: anIndex on: self
]

{ #category : #building }
CssSelector >> class: aClassName [

	^CssClassSelector for: aClassName over: self
]

{ #category : #private }
CssSelector >> descendantOfType: aType [

	^ CssDescendantCombinator between: self and: (CssTypeSelector ofType: aType)
]

{ #category : #'building-pseudo classes' }
CssSelector >> disabled [

	^ CssPseudoClassSelector disabledOn:  self
]

{ #category : #'building-structural pseudo classes' }
CssSelector >> empty [

	^ CssPseudoClassSelector emptyOn: self
]

{ #category : #'building-pseudo classes' }
CssSelector >> enabled [

	^ CssPseudoClassSelector enabledOn:  self
]

{ #category : #'building-structural pseudo classes' }
CssSelector >> firstChild [

	^ CssPseudoClassSelector firstChildOn: self
]

{ #category : #'building-pseudo elements' }
CssSelector >> firstLetter [

	^CssPseudoElementSelector firstLetterOf: self
]

{ #category : #'building-pseudo elements' }
CssSelector >> firstLine [

	^CssPseudoElementSelector firstLineOf: self
]

{ #category : #'building-structural pseudo classes' }
CssSelector >> firstOfType [

	^ CssPseudoClassSelector firstOfTypeOn: self
]

{ #category : #building }
CssSelector >> firstValueOfAttribute: aString beginsWith: aValue [

	^ CssAttributeSelector firstValueOfAttribute: aString of: self beginsWith: aValue
]

{ #category : #'building-pseudo classes' }
CssSelector >> focus [

	^ CssPseudoClassSelector focusOn: self
]

{ #category : #building }
CssSelector >> havingAttribute: aString [ 
	
 	^CssAttributeSelector having: self theAttribute: aString 
]

{ #category : #'building-pseudo classes' }
CssSelector >> hover [

	^ CssPseudoClassSelector hoverOn: self
]

{ #category : #building }
CssSelector >> id: anIdentifier [

	^CssIdSelector for: anIdentifier over: self
]

{ #category : #testing }
CssSelector >> isImplicitUniversal [

	^false
]

{ #category : #'building-pseudo classes' }
CssSelector >> lang: aLanguageId [

	^ CssPseudoClassSelector language: aLanguageId on: self
]

{ #category : #'building-structural pseudo classes' }
CssSelector >> lastChild [

	^ CssPseudoClassSelector lastChildOn: self
]

{ #category : #'building-structural pseudo classes' }
CssSelector >> lastOfType [

	^ CssPseudoClassSelector lastOfTypeOn: self
]

{ #category : #'building-pseudo classes' }
CssSelector >> link [

	^ CssPseudoClassSelector linkOn: self
]

{ #category : #'building-pseudo classes' }
CssSelector >> not: aCssSelector [

	^ CssPseudoClassSelector not: aCssSelector on: self
]

{ #category : #'building-structural pseudo classes' }
CssSelector >> onlyChild [

	^ CssPseudoClassSelector onlyChildOn: self
]

{ #category : #'building-structural pseudo classes' }
CssSelector >> onlyOfType [

	^ CssPseudoClassSelector onlyOfTypeOn: self
]

{ #category : #'building-structural pseudo classes' }
CssSelector >> root [

	^ CssPseudoClassSelector rootOn:  self
]

{ #category : #'building-structural pseudo classes' }
CssSelector >> siblingOfTypeAt: anIndex [

	^ CssPseudoClassSelector siblingOfTypeAt:  anIndex on: self
]

{ #category : #'building-structural pseudo classes' }
CssSelector >> siblingOfTypeFromLastAt: anIndex [

	^ CssPseudoClassSelector siblingOfTypeFromLastAt:  anIndex on: self
]

{ #category : #'building-pseudo classes' }
CssSelector >> target [

	^ CssPseudoClassSelector targetOn: self
]

{ #category : #'building-pseudo classes' }
CssSelector >> visited [

	^ CssPseudoClassSelector visitedOn: self
]

{ #category : #building }
CssSelector >> withAttribute: aString equalTo: aValue [

	^ CssAttributeSelector isAttribute: aString of: self equalTo: aValue
]

{ #category : #'building-combinators' }
CssSelector >> ~ aSelector [

	^CssGeneralSiblingCombinator between: self and: aSelector 
]
