filtering
noteParent: pNode child: cNode 
	^ note isNil 
		ifTrue: 
			[ super 
				noteParent: pNode
				child: cNode ]
		ifFalse: 
			[ note 
				value: pNode
				value: cNode ]