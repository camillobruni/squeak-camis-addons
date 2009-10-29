accessing
browser: aBrowser
	browser := aBrowser.
	panels do: [:panel | panel browser: aBrowser]