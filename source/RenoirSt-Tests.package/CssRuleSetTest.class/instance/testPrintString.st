Tests
testPrintString

	| ruleSet |

	ruleSet := CssRuleSet
		selector: CssUniversalSelector explicit link
		declarations:
			(CssDeclarationBlock new
				color: 'black';
				margin: 2 px;
				yourself).

	self
		assert: ruleSet printString
		equals:
			('*:link<1s>{<1s><2s>color: black;<1s><2s>margin: 2px;<1s>}'
				expandMacrosWith: OSPlatform current lineEnding
				with: Character tab asString)