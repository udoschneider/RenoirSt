Tests
testBackgroundProperties
	
	self
		assert: CssConstants round equals: 'round';
		assert: CssConstants space equals: 'space';
		assert: CssConstants local equals: 'local';
		assert: CssConstants borderBox equals: 'border-box';
		assert: CssConstants paddingBox equals: 'padding-box';
		assert: CssConstants contentBox equals: 'content-box';
		assert: CssConstants closestCorner equals: 'closest-corner';
		assert: CssConstants closestSide equals: 'closest-side';
		assert: CssConstants farthestCorner equals: 'farthest-corner';
		assert: CssConstants farthestSide equals: 'farthest-side'