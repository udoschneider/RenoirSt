"
I'm here helping to create stylesheets but without having to manually add every method to include.
"
Class {
	#name : #ReflectiveCascadingStyleSheetBuilder,
	#superclass : #Object,
	#category : #RenoirSt
}

{ #category : #building }
ReflectiveCascadingStyleSheetBuilder >> build [

	| builder |

	builder := CascadingStyleSheetBuilder new.

	(KeywordMessageSendingCollector
		sendingAllMessagesBeginningWith: 'declare'
		andEndingWith: 'StyleIn:'
		to: self
		with: builder) value.

	^ builder build
]
