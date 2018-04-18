Extension { #name : #WAUrl }

{ #category : #'*RenoirSt-Seaside' }
WAUrl >> cssContentOn: aStream [

	aStream nextPutAll: 'url("'.
	host isNil
		ifTrue: [ aStream nextPut: $/.
			self path do: [ :segment | aStream nextPutAll: segment ] separatedBy: [ aStream nextPut: $/ ] ]
		ifFalse: [ self printOn: aStream ].
	aStream nextPutAll: '")'
]

{ #category : #'*RenoirSt-Seaside' }
WAUrl >> cssContentRelativeToStyleSheetOn: aStream [

	aStream nextPutAll: 'url("'.
	host isNil
		ifTrue: [ self path do: [ :segment | aStream nextPutAll: segment ] separatedBy: [ aStream nextPut: $/ ] ]
		ifFalse: [ self printOn: aStream ].
	aStream nextPutAll: '")'
]

{ #category : #'*RenoirSt-Seaside' }
WAUrl >> relativeToStyleSheet [

	^UrlRelativeToStyleSheet on: self
]
