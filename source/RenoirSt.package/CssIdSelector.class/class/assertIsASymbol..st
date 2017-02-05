private
assertIsASymbol: anObject

	AssertionChecker enforce: [ anObject isSymbol ] because: [ '<1s> must be a symbol to be considered a valid id' expandMacrosWith: anObject printString ] raising: InstanceCreationFailed