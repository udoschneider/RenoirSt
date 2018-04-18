Extension { #name : #CssColorUnit }

{ #category : #'*RenoirSt-Seaside' }
CssColorUnit >> javascriptOn: aStream [

	aStream nextPut: $".
	self cssContentOn: aStream.
	aStream nextPut: $"
]
