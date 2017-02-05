Preconditions
assertNotEmpty: aString

	AssertionChecker refuse: [ aString isEmpty ] because: 'A unit identifier can''t be empty' raising: InstanceCreationFailed