private
basicUpdatePanes
	| builder |
	builder := O2MorphBuilder new.
	panes := model 
		ifNil: [ Array new ]
		ifNotNil: [ model columns collect: [ :ea | ea buildOn: builder ] ].
	self clearPanes.
	panes do: [ :ea | self pushPane: ea ].
	self containingWindow ifNotNilDo: [:window | self adoptPaneColor: window paneColor].