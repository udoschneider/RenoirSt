"
A gradient is an image that smoothly fades from one color to another. 
"
Class {
	#name : #CssGradient,
	#superclass : #CssObject,
	#category : #'RenoirSt-Colors'
}

{ #category : #converting }
CssGradient class >> asColorStops: aColorStopOrNamedConstantCollection [

	^ aColorStopOrNamedConstantCollection collect: [ :colorStopOrNamedConstant | self lookupColor: colorStopOrNamedConstant ]
]

{ #category : #private }
CssGradient >> colorStops [

	self subclassResponsibility 
]

{ #category : #Printing }
CssGradient >> cssContentOn: aWriteStream [

	aWriteStream nextPutAll: self functionName.
	aWriteStream nextPut: $(.
	self shape cssContentOn: aWriteStream.
	self colorStops
		do: [ :colorStop | colorStop cssContentOn: aWriteStream ]
		separatedBy: [ 
			aWriteStream
				nextPut: $,;
				space ].
	aWriteStream nextPut: $)
]

{ #category : #private }
CssGradient >> functionName [

	self subclassResponsibility 
]

{ #category : #private }
CssGradient >> shape [

	self subclassResponsibility 
]
