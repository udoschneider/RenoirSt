building-combinators
/ aSelector

	"This shortcut cover the cases when we cannot use the space to create the descendant combinator.
	For example if the right part of the selector needs parens."

	^ CssDescendantCombinator between: self and: aSelector