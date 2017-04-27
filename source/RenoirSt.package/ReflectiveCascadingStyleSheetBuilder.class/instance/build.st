building
build

	| builder |

	builder := CascadingStyleSheetBuilder new.

	(KeywordMessageSendingCollector
		sendingAllMessagesBeginningWith: 'declare'
		andEndingWith: 'StyleIn:'
		to: self
		with: builder) value.

	^ builder build