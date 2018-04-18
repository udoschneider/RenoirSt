Extension { #name : #Array }

{ #category : #'*RenoirSt' }
Array >> cssContentOn: aStream [

	self do: [ :element | element cssContentOn: aStream ] separatedBy: [ aStream space ]
]
