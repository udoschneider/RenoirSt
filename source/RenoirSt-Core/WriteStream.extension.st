Extension { #name : #WriteStream }

{ #category : #'*RenoirSt-Core' }
WriteStream >> newLine [

	self nextPutAll: '<n>' expandMacros
]
