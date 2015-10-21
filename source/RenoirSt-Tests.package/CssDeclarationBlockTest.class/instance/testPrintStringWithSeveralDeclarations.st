Tests
testPrintStringWithSeveralDeclarations
	
	| declarationBlock |
	declarationBlock := CssDeclarationBlock new.
	declarationBlock
		color: 'red';
		margin: {1 px. 3 pc. 4 pt. 50 percent}.
	
	self
		assert: declarationBlock printString
		equals:
			('{<1s><2s>color: red;<1s><2s>margin: 1px 3pc 4pt 50<3s>;<1s>}'
				expandMacrosWith: OSPlatform current lineEnding
				with: Character tab asString
				with: '%')