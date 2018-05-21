Extension { #name : #Integer }

{ #category : #'*RenoirSt' }
Integer >> Hz [

	^ self newMeasureWith: RenoirSt units >> #hertz
]

{ #category : #'*RenoirSt' }
Integer >> ch [

	^ self newMeasureWith: RenoirSt units >> #zeroWidth
]

{ #category : #'*RenoirSt' }
Integer >> cm [

	^ self newMeasureWith: RenoirSt units >> #centimeter
]

{ #category : #'*RenoirSt' }
Integer >> cssContentOn: aStream [

	self printOn: aStream
]

{ #category : #'*RenoirSt' }
Integer >> deg [

	^ self newMeasureWith: RenoirSt units >> #degree
]

{ #category : #'*RenoirSt' }
Integer >> dpcm [

	^ self newMeasureWith: RenoirSt units >> #dotsPerCentimeter
]

{ #category : #'*RenoirSt' }
Integer >> dpi [

	^ self newMeasureWith: RenoirSt units >> #dotsPerInch
]

{ #category : #'*RenoirSt' }
Integer >> dppx [

	^ self newMeasureWith: RenoirSt units >> #dotsPerPixelUnit
]

{ #category : #'*RenoirSt' }
Integer >> em [

	^ self newMeasureWith: RenoirSt units >> #fontSize
]

{ #category : #'*RenoirSt' }
Integer >> ex [

	^ self newMeasureWith: RenoirSt units >> #xHeight
]

{ #category : #'*RenoirSt' }
Integer >> grad [

	^ self newMeasureWith: RenoirSt units >> #gradian
]

{ #category : #'*RenoirSt' }
Integer >> in [

	^ self newMeasureWith: RenoirSt units >> #inch
]

{ #category : #'*RenoirSt' }
Integer >> kHz [

	^ self newMeasureWith: RenoirSt units >> #kiloHertz
]

{ #category : #'*RenoirSt' }
Integer >> mm [

	^ self newMeasureWith: RenoirSt units >> #millimeter
]

{ #category : #'*RenoirSt' }
Integer >> ms [

	^ self newMeasureWith: RenoirSt units >> #millisecond
]

{ #category : #'*RenoirSt' }
Integer >> n [

	 ^CssLinearPolynomial with: self
]

{ #category : #'*RenoirSt' }
Integer >> newMeasureWith: unit [
	^ CssMeasure quantity: self unit: unit
]

{ #category : #'*RenoirSt' }
Integer >> pc [

	^ self newMeasureWith: RenoirSt units >> #pica
]

{ #category : #'*RenoirSt' }
Integer >> pt [

	^ self newMeasureWith: RenoirSt units >> #point
]

{ #category : #'*RenoirSt' }
Integer >> px [

	^ self newMeasureWith: RenoirSt units >> #pixel
]

{ #category : #'*RenoirSt' }
Integer >> rad [

	^ self newMeasureWith: RenoirSt units >> #radian
]

{ #category : #'*RenoirSt' }
Integer >> rem [

	^ self newMeasureWith: RenoirSt units >> #fontSizeOfRootElement
]

{ #category : #'*RenoirSt' }
Integer >> s [

	^ self newMeasureWith: RenoirSt units >> #second
]

{ #category : #'*RenoirSt' }
Integer >> turn [

	^ self newMeasureWith: RenoirSt units >> #turn
]

{ #category : #'*RenoirSt' }
Integer >> vh [

	^ self newMeasureWith: RenoirSt units >> #onePercentOfViewportHeight
]

{ #category : #'*RenoirSt' }
Integer >> vmax [

	^ self newMeasureWith: RenoirSt units >> #onePercentOfViewportLargerDimension
]

{ #category : #'*RenoirSt' }
Integer >> vmin [

	^ self newMeasureWith: RenoirSt units >> #onePercentOfViewportSmallerDimension
]

{ #category : #'*RenoirSt' }
Integer >> vw [

	^ self newMeasureWith: RenoirSt units >> #onePercentOfViewportWidth
]
