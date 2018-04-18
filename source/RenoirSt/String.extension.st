Extension { #name : #String }

{ #category : #'*RenoirSt' }
String >> cssContentOn: aStream [

	aStream nextPutAll: self
]
