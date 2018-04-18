Extension { #name : #Percentage }

{ #category : #'*RenoirSt' }
Percentage >> cssContentOn: aStream [ 
	
	self value cssContentOn: aStream.
	aStream nextPut: $%
]
