initialize-release
setUp
	model := OModel class: OModel temporaries: #(foo bar baz).
	model useUniqueTable.
	self fillModel.