Tests
testCantCreateWithoutFeatureName

	self
		should: [ CssMediaQueryExpression forFeatureNamed: '' ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :error | self assert: error messageText equals: 'A media feature name can''t be empty' ].

	self should: [ CssMediaQueryExpression forFeatureNamed: '' withValue: 1 px ] raise: InstanceCreationFailed