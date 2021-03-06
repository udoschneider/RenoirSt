"
A CssAttributeReferenceTest is a test class for testing the behavior of CssAttributeReference
"
Class {
	#name : #CssAttributeReferenceTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Units'
}

{ #category : #Tests }
CssAttributeReferenceTest >> testAttributeReferenceWithStringTypeAndFallback [

	| attributeReference |
	
	attributeReference := CssAttributeReference toStringAttributeNamed: 'title' withFallback: 'Missing Title'.
	
	self assert: attributeReference printString equals: 'attr(title string, "Missing Title")'
]

{ #category : #Tests }
CssAttributeReferenceTest >> testAttributeReferenceWithType [

	| attributeReference |

	attributeReference := CssAttributeReference toAttributeNamed: 'length' ofType: #fontSize.

	self assert: attributeReference printString equals: 'attr(length em)'
]

{ #category : #Tests }
CssAttributeReferenceTest >> testAttributeReferenceWithTypeAndFallback [

	| attributeReference |

	attributeReference := CssAttributeReference toAttributeNamed: 'length' ofType: #fontSize withFallback: 10 px.

	self assert: attributeReference printString equals: 'attr(length em, 10px)'
]

{ #category : #Tests }
CssAttributeReferenceTest >> testSimplestAttributeReference [

	| attributeReference |
	
	attributeReference := CssAttributeReference toAttributeNamed: 'title'.
	
	self assert: attributeReference printString equals: 'attr(title string)'
]
