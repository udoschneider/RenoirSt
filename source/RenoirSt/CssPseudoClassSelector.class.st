"
The pseudo-class concept is introduced to permit selection based on information that lies outside of the document tree or that cannot be expressed using the other simple selectors.

A pseudo-class always consists of a ""colon"" (:) followed by the name of the pseudo-class and optionally by a value between parentheses.

Pseudo-classes are allowed in all sequences of simple selectors contained in a selector. Pseudo-classes are allowed anywhere in sequences of simple selectors, after the leading type selector or universal selector (possibly omitted). Pseudo-class names are case-insensitive. Some pseudo-classes are mutually exclusive, while others can be applied simultaneously to the same element. Pseudo-classes may be dynamic, in the sense that an element may acquire or lose a pseudo-class while a user interacts with the document.
"
Class {
	#name : #CssPseudoClassSelector,
	#superclass : #CssSelector,
	#instVars : [
		'selector',
		'pseudoClassName',
		'arguments'
	],
	#category : #'RenoirSt-Selectors'
}

{ #category : #'Instance Creation' }
CssPseudoClassSelector class >> activeOn: aSelector [ 
	
	^self named: 'active' over: aSelector 
]

{ #category : #'Instance Creation' }
CssPseudoClassSelector class >> checkedOn: aSelector [
	
	^self named: 'checked' over: aSelector 
]

{ #category : #'Instance Creation' }
CssPseudoClassSelector class >> childAt: aNamedConstantOrInteger on: aSelector [

	^ self named: 'nth-child' withArguments: {(self lookupValue: aNamedConstantOrInteger)} over: aSelector
]

{ #category : #'Instance Creation' }
CssPseudoClassSelector class >> childFromLastAt: anInteger on: aSelector [ 
	
	^self named: 'nth-last-child' withArguments: { anInteger } over: aSelector 
]

{ #category : #'Instance Creation' }
CssPseudoClassSelector class >> disabledOn: aSelector [ 
	
	^self named: 'disabled' over: aSelector 
]

{ #category : #'Instance Creation' }
CssPseudoClassSelector class >> emptyOn: aSelector [ 
	
	^self named: 'empty' over: aSelector 
]

{ #category : #'Instance Creation' }
CssPseudoClassSelector class >> enabledOn: aSelector [ 
	
	^self named: 'enabled' over: aSelector 
]

{ #category : #'Instance Creation' }
CssPseudoClassSelector class >> firstChildOn: aSelector [ 
	
	^self named: 'first-child' over: aSelector 
]

{ #category : #'Instance Creation' }
CssPseudoClassSelector class >> firstOfTypeOn: aSelector [ 
	
	^self named: 'first-of-type' over: aSelector 
]

{ #category : #'Instance Creation' }
CssPseudoClassSelector class >> focusOn: aSelector [ 
	
	^self named: 'focus' over: aSelector 
]

{ #category : #'Instance Creation' }
CssPseudoClassSelector class >> hoverOn: aSelector [ 
	
	^self named: 'hover' over: aSelector 
]

{ #category : #'Instance Creation' }
CssPseudoClassSelector class >> language: aLanguageId on: aSelector [ 
	
	^self named: 'lang' withArguments: { aLanguageId } over: aSelector 
]

{ #category : #'Instance Creation' }
CssPseudoClassSelector class >> lastChildOn: aSelector [ 
	
	^self named: 'last-child' over: aSelector 
]

{ #category : #'Instance Creation' }
CssPseudoClassSelector class >> lastOfTypeOn: aSelector [ 
	
	^self named: 'last-of-type' over: aSelector 
]

{ #category : #'Instance Creation' }
CssPseudoClassSelector class >> linkOn: aSelector [ 
	
	^self named: 'link' over: aSelector 
]

{ #category : #private }
CssPseudoClassSelector class >> named: aPseudoClassName over: aSelector [ 
	
	^self named: aPseudoClassName withArguments: #() over: aSelector 
]

{ #category : #private }
CssPseudoClassSelector class >> named: aPseudoClassName withArguments: theArguments over: aSelector [ 
	
	^self new initializeNamed: aPseudoClassName withArguments: theArguments over: aSelector 
]

{ #category : #'Instance Creation' }
CssPseudoClassSelector class >> not: aSelectorToNegate on: aBaseSelector [ 
	
	 ^self named: 'not' withArguments: { aSelectorToNegate } over: aBaseSelector 
]

{ #category : #'Instance Creation' }
CssPseudoClassSelector class >> onlyChildOn: aSelector [ 
	
	^self named: 'only-child' over: aSelector 
]

{ #category : #'Instance Creation' }
CssPseudoClassSelector class >> onlyOfTypeOn: aSelector [ 
	
	^self named: 'only-of-type' over: aSelector 
]

{ #category : #'Instance Creation' }
CssPseudoClassSelector class >> rootOn: aSelector [ 
	
	^self named: 'root' over: aSelector 
]

{ #category : #'Instance Creation' }
CssPseudoClassSelector class >> siblingOfTypeAt: aNamedConstantOrInteger on: aSelector [

	^ self named: 'nth-of-type' withArguments: {(self lookupValue: aNamedConstantOrInteger)} over: aSelector
]

{ #category : #'Instance Creation' }
CssPseudoClassSelector class >> siblingOfTypeFromLastAt: anInteger on: aSelector [ 
	
	^self named: 'nth-last-of-type' withArguments: { anInteger } over: aSelector
]

{ #category : #'Instance Creation' }
CssPseudoClassSelector class >> targetOn: aSelector [ 
	
	^self named: 'target' over: aSelector 
]

{ #category : #'Instance Creation' }
CssPseudoClassSelector class >> visitedOn: aSelector [ 
	
	^self named: 'visited' over: aSelector 
]

{ #category : #Printing }
CssPseudoClassSelector >> cssContentOn: aStream [

	selector cssContentOn: aStream.

	aStream
		nextPut: $:;
		nextPutAll: pseudoClassName.

	arguments
		do: [ :argument | 
			aStream nextPut: $(.
			argument cssContentOn: aStream.
			aStream nextPut: $) ]
]

{ #category : #'initialize-release' }
CssPseudoClassSelector >> initializeNamed: aPseudoClassName withArguments: theArguments over: aSelector [
	
	pseudoClassName := aPseudoClassName.
	arguments := theArguments.
	selector := aSelector
]
