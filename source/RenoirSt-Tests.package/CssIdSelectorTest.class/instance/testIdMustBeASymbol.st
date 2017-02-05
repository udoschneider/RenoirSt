Tests
testIdMustBeASymbol

	self
		should: [ CssIdSelector for: 'pastoral' over: CssUniversalSelector explicit ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :error | self assert: error messageText equals: ('<1s> must be a symbol to be considered a valid id' expandMacrosWith: 'pastoral' printString) ]