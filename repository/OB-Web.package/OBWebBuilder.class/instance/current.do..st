accessing
current: aWidget do: aBlock
	super current: aWidget do: aBlock.
	current addChild: aWidget.
	^ aWidget