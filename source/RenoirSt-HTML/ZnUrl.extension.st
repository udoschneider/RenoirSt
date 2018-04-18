Extension { #name : #ZnUrl }

{ #category : #'*RenoirSt-HTML' }
ZnUrl >> cssContentOn: aStream [

	aStream nextPutAll: 'url("'.
	self printOn: aStream.
	aStream nextPutAll: '")'
]

{ #category : #'*RenoirSt-HTML' }
ZnUrl >> cssContentRelativeToStyleSheetOn: aStream [
	
	aStream nextPutAll: 'url("'.
	self isAbsolute
		ifTrue: [ self printOn: aStream ]
		ifFalse: [ segments do: [ :segment | aStream nextPutAll: segment ] separatedBy: [ aStream nextPut: $/ ] ].
	aStream nextPutAll: '")'
]

{ #category : #'*RenoirSt-HTML' }
ZnUrl >> relativeToStyleSheet [

	^UrlRelativeToStyleSheet on: self
]
