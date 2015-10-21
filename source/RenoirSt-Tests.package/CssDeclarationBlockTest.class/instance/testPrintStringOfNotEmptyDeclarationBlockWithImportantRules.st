Tests
testPrintStringOfNotEmptyDeclarationBlockWithImportantRules

	self
		assert:
			(CssDeclarationBlock new
				color: 'red';
				beImportantDuring: [ :declarationBlock | declarationBlock margin: 1 px ];
				padding: 2 px;
				yourself) printString
		equals:
			('{<1s><2s>color: red;<1s><2s>margin: 1px !important;<1s><2s>padding: 2px;<1s>}'
				expandMacrosWith: OSPlatform current lineEnding
				with: Character tab asString)