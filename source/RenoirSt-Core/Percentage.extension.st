Extension { #name : #Percentage }

{ #category : #'*RenoirSt-Core' }
Percentage >> cssContentOn: aStream [ 
	
	self value cssContentOn: aStream.
	aStream nextPut: $%
]
