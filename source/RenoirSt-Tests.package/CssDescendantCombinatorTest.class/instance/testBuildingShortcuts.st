Tests
testBuildingShortcuts

	| ancestor descendant |

	ancestor := CssUniversalSelector implicit class: 'custom'.
	descendant := CssTypeSelector ofType: 'div'.

	self
		assert: (ancestor / descendant) printString equals: '.custom div';
		assert: ancestor div printString equals: '.custom div'