private
shouldUseSpecialLayoutFor: panes 
	^ panes size = 2 
		and: [ panes first listDirection = #topToBottom ]
		and: [ panes second listDirection = #topToBottom ]
		and: [ panes first lastSubmorph class = O2PaneScroller ]
		and: [ panes last lastSubmorph class = O2PluggableTextMorph ]