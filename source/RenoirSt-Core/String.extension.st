Extension { #name : #String }

{ #category : #'*RenoirSt-Core' }
String >> cssContentOn: aStream [

	aStream nextPutAll: self
]
