Tests
testInvalidInstanceCreationFromHexaNotation
	
	self
		should: [ CssIdentifiedColor fromHexadecimalNotation: #'00' ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :error | self assert: error messageText equals: 'Invalid hexadecimal notation for a color.' ]