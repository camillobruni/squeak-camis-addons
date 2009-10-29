as yet unclassified
defaultAction
	^ 
	[ fan children size = 0 
		ifTrue: [ O2InformRequest message: self noChildrenMessage ]
		ifFalse: 
			[ self browserClass 
				browseRoot: fan parent
				label: self label ] ]