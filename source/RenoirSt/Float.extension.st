Extension { #name : #Float }

{ #category : #'*RenoirSt' }
Float >> cm [

	 ^self newMeasureWith: CssLengthUnits centimeter  
]

{ #category : #'*RenoirSt' }
Float >> cssContentOn: aStream [ 
	
	aStream nextPutAll: self printString
]

{ #category : #'*RenoirSt' }
Float >> deg [

	 ^self newMeasureWith: CssAngleUnits degree    
]

{ #category : #'*RenoirSt' }
Float >> em [

	 ^self newMeasureWith: CssLengthUnits fontSize
]

{ #category : #'*RenoirSt' }
Float >> grad [

	 ^self newMeasureWith:CssAngleUnits gradian     
]

{ #category : #'*RenoirSt' }
Float >> in [

	 ^self newMeasureWith: CssLengthUnits inch 
]

{ #category : #'*RenoirSt' }
Float >> mm [

	 ^self newMeasureWith: CssLengthUnits millimeter   
]

{ #category : #'*RenoirSt' }
Float >> ms [

	 ^self newMeasureWith: CssTimeUnits millisecond 
]

{ #category : #'*RenoirSt' }
Float >> newMeasureWith: unit [
	^ CssMeasure quantity: self unit: unit
]

{ #category : #'*RenoirSt' }
Float >> pc [

	 ^self newMeasureWith: CssLengthUnits pica
]

{ #category : #'*RenoirSt' }
Float >> rad [

	 ^self newMeasureWith: CssAngleUnits radian     
]

{ #category : #'*RenoirSt' }
Float >> s [

	 ^self newMeasureWith: CssTimeUnits second
]

{ #category : #'*RenoirSt' }
Float >> turn [

	 ^self newMeasureWith: CssAngleUnits turn     
]
