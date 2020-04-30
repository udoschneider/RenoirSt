Extension { #name : #Integer }

{ #category : #'*RenoirSt-Core' }
Integer >> Hz [

	^ self newMeasureWith: RenoirSt units >> #hertz
]

{ #category : #'*RenoirSt-Core' }
Integer >> ch [

	^ self newMeasureWith: RenoirSt units >> #zeroWidth
]

{ #category : #'*RenoirSt-Core' }
Integer >> cm [

	^ self newMeasureWith: RenoirSt units >> #centimeter
]

{ #category : #'*RenoirSt-Core' }
Integer >> cssContentOn: aStream [

	self printOn: aStream
]

{ #category : #'*RenoirSt-Core' }
Integer >> deg [

	^ self newMeasureWith: RenoirSt units >> #degree
]

{ #category : #'*RenoirSt-Core' }
Integer >> dpcm [

	^ self newMeasureWith: RenoirSt units >> #dotsPerCentimeter
]

{ #category : #'*RenoirSt-Core' }
Integer >> dpi [

	^ self newMeasureWith: RenoirSt units >> #dotsPerInch
]

{ #category : #'*RenoirSt-Core' }
Integer >> dppx [

	^ self newMeasureWith: RenoirSt units >> #dotsPerPixelUnit
]

{ #category : #'*RenoirSt-Core' }
Integer >> em [

	^ self newMeasureWith: RenoirSt units >> #fontSize
]

{ #category : #'*RenoirSt-Core' }
Integer >> ex [

	^ self newMeasureWith: RenoirSt units >> #xHeight
]

{ #category : #'*RenoirSt-Core' }
Integer >> grad [

	^ self newMeasureWith: RenoirSt units >> #gradian
]

{ #category : #'*RenoirSt-Core' }
Integer >> in [

	^ self newMeasureWith: RenoirSt units >> #inch
]

{ #category : #'*RenoirSt-Core' }
Integer >> kHz [

	^ self newMeasureWith: RenoirSt units >> #kiloHertz
]

{ #category : #'*RenoirSt-Core' }
Integer >> mm [

	^ self newMeasureWith: RenoirSt units >> #millimeter
]

{ #category : #'*RenoirSt-Core' }
Integer >> ms [

	^ self newMeasureWith: RenoirSt units >> #millisecond
]

{ #category : #'*RenoirSt-Core' }
Integer >> n [

	 ^CssLinearPolynomial with: self
]

{ #category : #'*RenoirSt-Core' }
Integer >> newMeasureWith: unit [
	^ CssMeasure quantity: self unit: unit
]

{ #category : #'*RenoirSt-Core' }
Integer >> pc [

	^ self newMeasureWith: RenoirSt units >> #pica
]

{ #category : #'*RenoirSt-Core' }
Integer >> pt [

	^ self newMeasureWith: RenoirSt units >> #point
]

{ #category : #'*RenoirSt-Core' }
Integer >> px [

	^ self newMeasureWith: RenoirSt units >> #pixel
]

{ #category : #'*RenoirSt-Core' }
Integer >> rad [

	^ self newMeasureWith: RenoirSt units >> #radian
]

{ #category : #'*RenoirSt-Core' }
Integer >> rem [

	^ self newMeasureWith: RenoirSt units >> #fontSizeOfRootElement
]

{ #category : #'*RenoirSt-Core' }
Integer >> s [

	^ self newMeasureWith: RenoirSt units >> #second
]

{ #category : #'*RenoirSt-Core' }
Integer >> turn [

	^ self newMeasureWith: RenoirSt units >> #turn
]

{ #category : #'*RenoirSt-Core' }
Integer >> vh [

	^ self newMeasureWith: RenoirSt units >> #onePercentOfViewportHeight
]

{ #category : #'*RenoirSt-Core' }
Integer >> vmax [

	^ self newMeasureWith: RenoirSt units >> #onePercentOfViewportLargerDimension
]

{ #category : #'*RenoirSt-Core' }
Integer >> vmin [

	^ self newMeasureWith: RenoirSt units >> #onePercentOfViewportSmallerDimension
]

{ #category : #'*RenoirSt-Core' }
Integer >> vw [

	^ self newMeasureWith: RenoirSt units >> #onePercentOfViewportWidth
]
