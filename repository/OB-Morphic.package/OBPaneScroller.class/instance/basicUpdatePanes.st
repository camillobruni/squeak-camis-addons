private
basicUpdatePanes
	| builder |
	builder := OBPlatform current builder.
	panes := model isNil 
		ifTrue: [ Array new ]
		ifFalse: [ model columns collect: [ :ea | ea buildOn: builder ] ].
	self clearPanes.
	panes do: [ :ea | self pushPane: ea ]