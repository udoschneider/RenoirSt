"
A CssMediaQueryConstantsTest is a test class for testing the behavior of CssMediaQueryConstants
"
Class {
	#name : #CssMediaQueryConstantsTest,
	#superclass : #TestCase,
	#category : 'RenoirSt-Tests-MediaQueries'
}

{ #category : #tests }
CssMediaQueryConstantsTest >> testConstants [

	self
		assert: CssMediaQueryConstants braille equals: 'braille';
		assert: CssMediaQueryConstants embossed equals: 'embossed';
		assert: CssMediaQueryConstants handheld equals: 'handheld';
		assert: CssMediaQueryConstants projection equals: 'projection';
		assert: CssMediaQueryConstants speech equals: 'speech';
		assert: CssMediaQueryConstants tty equals: 'tty';
		assert: CssMediaQueryConstants tv equals: 'tv'
]
