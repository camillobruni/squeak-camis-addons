initialize-release
fillModel

	#(asdf qwer asdfg awer asdd asdcv asdvbn insect initialize) doWithIndex: [:e :i |
		model table addEntry: e date: (DateAndTime now - i minutes)]