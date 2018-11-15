"
A CssAlphaChannelProvidedTest is a test class for testing the behavior of CssAlphaChannelProvided
"
Class {
	#name : #CssAlphaChannelProvidedTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Colors'
}

{ #category : #Tests }
CssAlphaChannelProvidedTest >> testCantCreateWithInvalidAlphaValues [

	self
		should: [ CssAlphaChannelProvided withValue: -1 ]
		raise: InstanceCreationFailed
		withMessageText: 'The alpha value (-1) must be between zero and one.'.

	self
		should: [ CssAlphaChannelProvided withValue: 2 ]
		raise: InstanceCreationFailed
		withMessageText: 'The alpha value (2) must be between zero and one.'.

	self should: [ CssAlphaChannelProvided withValue: 0.0 predecessor ] raise: InstanceCreationFailed.

	self should: [ CssAlphaChannelProvided withValue: 1.0 successor ] raise: InstanceCreationFailed
]

{ #category : #Tests }
CssAlphaChannelProvidedTest >> testInstanceCreationEdgeCases [
	
	self
		shouldnt: [ CssAlphaChannelProvided withValue: 0 ]
		raise: InstanceCreationFailed.
		
	self
		shouldnt: [ CssAlphaChannelProvided withValue: 1 ]
		raise: InstanceCreationFailed.
		
	self
		shouldnt: [ CssAlphaChannelProvided withValue: 0.0 ]
		raise: InstanceCreationFailed.
		
	self
		shouldnt: [ CssAlphaChannelProvided withValue: 1.0 ]
		raise: InstanceCreationFailed
]
