Extension { #name : #Array }

{ #category : #'*RenoirSt-Core' }
Array >> cssContentOn: aStream [

	self do: [ :element | element cssContentOn: aStream ] separatedBy: [ aStream space ]
]
