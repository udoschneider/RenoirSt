private
assertNotEmpty: aString

	AssertionChecker refuse: [ aString isEmpty ] because: 'A media feature name can''t be empty' raising: InstanceCreationFailed