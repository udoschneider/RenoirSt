Extension { #name : #WriteStream }

{ #category : #'*RenoirSt' }
WriteStream >> newLine [

	self nextPutAll: '<n>' expandMacros
]
