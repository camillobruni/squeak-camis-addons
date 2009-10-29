instance creation
metaNode: metaNode root: rootNode selection: selectedNode panels: panels 
	| browser |
	browser := self basicNew initialize.
	panels do: [ :ea | browser addPanel: ea ].
	browser 
		setMetaNode: metaNode
		node: rootNode.
	selectedNode isNil ifFalse: [ browser jumpTo: selectedNode ].
	^ browser