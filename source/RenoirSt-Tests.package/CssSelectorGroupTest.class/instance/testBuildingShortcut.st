Tests
testBuildingShortcut
	
	| firstSelector secondSelector |
	
	firstSelector := CssUniversalSelector implicit class: 'custom'.
	secondSelector := CssTypeSelector ofType: 'div'.
	
	self
		assert: (firstSelector , secondSelector) printString
		equals: ('.custom ,<1s>div' expandMacrosWith: OSPlatform current lineEnding);

		assert: (firstSelector , secondSelector , secondSelector) printString
		equals: ('.custom ,<1s>div ,<1s>div' expandMacrosWith: OSPlatform current lineEnding)