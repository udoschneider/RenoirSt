Extension { #name : #Fraction }

{ #category : #'*RenoirSt-Core' }
Fraction >> cssContentOn: aStream [

	self numerator cssContentOn: aStream.
	aStream nextPut: $/.
	self denominator cssContentOn: aStream 
]
