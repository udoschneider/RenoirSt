Extension { #name : #Float }

{ #category : #'*RenoirSt' }
Float >> cm [

	^ self newMeasureWith: RenoirSt units >> #centimeter
]

{ #category : #'*RenoirSt' }
Float >> cssContentOn: aStream [ 
	
	aStream nextPutAll: self printString
]

{ #category : #'*RenoirSt' }
Float >> deg [

	 ^self newMeasureWith: RenoirSt units >> #degree    
]

{ #category : #'*RenoirSt' }
Float >> em [

	^ self newMeasureWith: RenoirSt units >> #fontSize
]

{ #category : #'*RenoirSt' }
Float >> grad [

	^ self newMeasureWith: RenoirSt units >> #gradian
]

{ #category : #'*RenoirSt' }
Float >> in [

	^ self newMeasureWith: RenoirSt units >> #inch
]

{ #category : #'*RenoirSt' }
Float >> mm [

	^ self newMeasureWith: RenoirSt units >> #millimeter
]

{ #category : #'*RenoirSt' }
Float >> ms [

	^ self newMeasureWith: RenoirSt units >> #millisecond
]

{ #category : #'*RenoirSt' }
Float >> newMeasureWith: unit [
	^ CssMeasure quantity: self unit: unit
]

{ #category : #'*RenoirSt' }
Float >> pc [

	^ self newMeasureWith: RenoirSt units >> #pica
]

{ #category : #'*RenoirSt' }
Float >> rad [

	^ self newMeasureWith: RenoirSt units >> #radian
]

{ #category : #'*RenoirSt' }
Float >> s [

	^ self newMeasureWith: RenoirSt units >> #second
]

{ #category : #'*RenoirSt' }
Float >> turn [

	^ self newMeasureWith: RenoirSt units >> #turn
]
