drawing
colorForRow: row
     | item |
	^(selectedRow notNil and: [ row = selectedRow])
		ifTrue: [ (listSource backgroundColorAt: row) ifNotNilDo: [:clr | clr alphaMixed: 0.1 with: Color blue] ifNil: [Color red] ]
		ifFalse: [ item := self getListItem: row. item isText ifTrue: [item colorAt: 1] ifFalse: [self color] ].