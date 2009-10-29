as yet unclassified
with: aSearchNode 
	^ self 
		metaNode: self defaultMetaNode
		root: (O2CollectionNode on: (OrderedCollection with: aSearchNode))
		selection: aSearchNode