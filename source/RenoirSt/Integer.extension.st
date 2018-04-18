Extension { #name : #Integer }

{ #category : #'*RenoirSt' }
Integer >> Hz [
	^ self newMeasureWith: CssFrequencyUnits hertz
]

{ #category : #'*RenoirSt' }
Integer >> ch [
	^ self newMeasureWith: CssLengthUnits zeroWidth
]

{ #category : #'*RenoirSt' }
Integer >> cm [

	 ^self newMeasureWith:  CssLengthUnits centimeter  
]

{ #category : #'*RenoirSt' }
Integer >> cssContentOn: aStream [

	self printOn: aStream
]

{ #category : #'*RenoirSt' }
Integer >> deg [

	 ^self newMeasureWith:  CssAngleUnits degree    
]

{ #category : #'*RenoirSt' }
Integer >> dpcm [

	 ^self newMeasureWith: CssResolutionUnits dotsPerCentimeter 
]

{ #category : #'*RenoirSt' }
Integer >> dpi [

	 ^self newMeasureWith: CssResolutionUnits dotsPerInch 
]

{ #category : #'*RenoirSt' }
Integer >> dppx [

	 ^self newMeasureWith: CssResolutionUnits dotsPerPixelUnit  
]

{ #category : #'*RenoirSt' }
Integer >> em [

	 ^self newMeasureWith: CssLengthUnits fontSize
]

{ #category : #'*RenoirSt' }
Integer >> ex [

	 ^self newMeasureWith: CssLengthUnits xHeight 
]

{ #category : #'*RenoirSt' }
Integer >> grad [

	 ^self newMeasureWith: CssAngleUnits gradian     
]

{ #category : #'*RenoirSt' }
Integer >> in [

	 ^self newMeasureWith:  CssLengthUnits inch 
]

{ #category : #'*RenoirSt' }
Integer >> kHz [
	^ self newMeasureWith: CssFrequencyUnits kiloHertz 
]

{ #category : #'*RenoirSt' }
Integer >> mm [

	 ^self newMeasureWith:  CssLengthUnits millimeter   
]

{ #category : #'*RenoirSt' }
Integer >> ms [

	 ^self newMeasureWith: CssTimeUnits millisecond 
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

	 ^self newMeasureWith: CssLengthUnits pica
]

{ #category : #'*RenoirSt' }
Integer >> pt [

	 ^self newMeasureWith: CssLengthUnits point 
]

{ #category : #'*RenoirSt' }
Integer >> px [

	 ^self newMeasureWith: CssLengthUnits pixel
]

{ #category : #'*RenoirSt' }
Integer >> rad [

	 ^self newMeasureWith: CssAngleUnits radian     
]

{ #category : #'*RenoirSt' }
Integer >> rem [

	 ^self newMeasureWith: CssLengthUnits fontSizeOfRootElement  
]

{ #category : #'*RenoirSt' }
Integer >> s [

	 ^self newMeasureWith: CssTimeUnits second
]

{ #category : #'*RenoirSt' }
Integer >> turn [

	 ^self newMeasureWith:  CssAngleUnits turn     
]

{ #category : #'*RenoirSt' }
Integer >> vh [

	 ^self newMeasureWith: CssLengthUnits onePercentOfViewportHeight
]

{ #category : #'*RenoirSt' }
Integer >> vmax [

	 ^self newMeasureWith: CssLengthUnits onePercentOfViewportLargerDimension 
]

{ #category : #'*RenoirSt' }
Integer >> vmin [

	 ^self newMeasureWith:  CssLengthUnits onePercentOfViewportSmallerDimension 
]

{ #category : #'*RenoirSt' }
Integer >> vw [

	 ^self newMeasureWith: CssLengthUnits onePercentOfViewportWidth  
]
