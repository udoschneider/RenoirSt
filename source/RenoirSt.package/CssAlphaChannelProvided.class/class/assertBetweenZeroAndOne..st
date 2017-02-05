private
assertBetweenZeroAndOne: aNumber

	AssertionChecker
		enforce: [ aNumber between: 0 and: aNumber class one ]
		because: [ 'The alpha value (<1s>) must be between zero and one.' expandMacrosWith: aNumber printString ]
		raising: InstanceCreationFailed