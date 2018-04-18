"
A CSS style sheet, for any level of CSS, consists of a list of statements. There are two kinds of statements: at-rules and rule sets. There may be white space around the statements.
"
Class {
	#name : #CascadingStyleSheet,
	#superclass : #CssObject,
	#instVars : [
		'statements'
	],
	#category : 'RenoirSt'
}

{ #category : #'Instance Creation' }
CascadingStyleSheet class >> withAll: anStatementCollection [
	
	^self new initializeWithAll: anStatementCollection
]

{ #category : #Printing }
CascadingStyleSheet >> cssContentOn: aStream [
	
	statements
		do: [ :statement | statement cssContentOn: aStream ]
		separatedBy: [ 
			aStream
				newLine;
				newLine ]
]

{ #category : #'initialize-release' }
CascadingStyleSheet >> initializeWithAll: anStatementCollection [

	statements := anStatementCollection
]
