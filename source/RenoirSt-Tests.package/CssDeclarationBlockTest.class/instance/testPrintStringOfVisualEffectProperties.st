Tests
testPrintStringOfVisualEffectProperties

	self 
		assert: [ :style | style clip: CssConstants auto ] rendersProperty: 'clip' withValue: 'auto';
		assert: [ :style | style overflow: CssConstants hidden ] rendersProperty: 'overflow' withValue: 'hidden';
		assert: [ :style | style visibility: CssConstants collapse ] rendersProperty: 'visibility' withValue: 'collapse'