Tests
testIdentifiedBy

	| grey gray |

	grey := CssIdentifiedColor representing: (CssRGBColor red: 128 green: 128 blue: 128) identifiedBy: 'grey'.

	gray := grey identifiedBy: 'gray'.

	self
		assert: gray printString equals: 'gray';
		assert: grey printString equals: 'grey';
		assert: gray color printString equals: grey color printString