tests
testConstants

	self
		assert: CssMediaQueryConstants braille equals: 'braille';
		assert: CssMediaQueryConstants embossed equals: 'embossed';
		assert: CssMediaQueryConstants handheld equals: 'handheld';
		assert: CssMediaQueryConstants projection equals: 'projection';
		assert: CssMediaQueryConstants speech equals: 'speech';
		assert: CssMediaQueryConstants tty equals: 'tty';
		assert: CssMediaQueryConstants tv equals: 'tv'