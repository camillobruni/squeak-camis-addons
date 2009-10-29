accessing
state
	| list icons first |
	list _ self list.
	icons _ list size > 0 ifFalse: [#()] ifTrue:
		[first _ model iconAt: 1.
		first 
			ifNil: [#()]
			ifNotNil: [((2 to: list size) collect: [:i | model iconAt: i]) copyWithFirst: first]].
	^ JsonObject new
		items: list;
		icons: icons;
		selection: self selection;
		yourself