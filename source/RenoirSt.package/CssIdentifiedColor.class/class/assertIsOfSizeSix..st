private
assertIsOfSizeSix: aString

	AssertionChecker enforce: [ aString size = 6 ] because: 'Invalid hexadecimal notation for a color.' raising: InstanceCreationFailed