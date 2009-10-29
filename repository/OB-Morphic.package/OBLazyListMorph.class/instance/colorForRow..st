drawing
colorForRow: row
     | item |
	^(selectedRow notNil and: [ row = selectedRow])
		ifTrue: [ Color black ]
		ifFalse: [ item := self getListItem: row. item isText ifTrue: [item colorAt: 1] ifFalse: [self color] ].