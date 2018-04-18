Extension { #name : #UnitValue }

{ #category : #'*RenoirSt-UnitsCompatibility' }
UnitValue >> cssContentOn: aStream [

	value cssContentOn: aStream.
	unit cssContentOn: aStream.
]
