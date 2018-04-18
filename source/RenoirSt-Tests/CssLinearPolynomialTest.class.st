"
A CssLinearPolynomialTest is a test class for testing the behavior of CssLinearPolynomial
"
Class {
	#name : #CssLinearPolynomialTest,
	#superclass : #TestCase,
	#category : #'RenoirSt-Tests-Selectors'
}

{ #category : #Tests }
CssLinearPolynomialTest >> testFunctionPrintString [
	
	self
		assert: 1 n printString equals: 'n';
		assert: (1 n + 2) printString equals: 'n+2';
		assert: (1 n - 2) printString equals: 'n-2';
		
		assert: (-1 n + 2) printString equals: '-n+2';
		assert: (-1 n - 2) printString equals: '-n-2';
		assert: (-1 n) printString equals: '-n';
		
		assert: (2 n + 2) printString equals: '2n+2';
		assert: (2 n - 1) printString equals: '2n-1';
		assert: 2 n printString equals: '2n'
]

{ #category : #Tests }
CssLinearPolynomialTest >> testIdentityFunctionPrintString [

	self assert: CssLinearPolynomial forIdentity printString equals: 'n'
]
