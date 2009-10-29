*o2-standard
selectorIs: aSymbol
	aSymbol == nil ifTrue: [^ false].
	((selector isKindOf: SelectorNode) or: [selector isKindOf: Association])
		ifTrue: [^ selector key == aSymbol].
	selector isSymbol ifTrue: [^ selector == aSymbol].
	^ false