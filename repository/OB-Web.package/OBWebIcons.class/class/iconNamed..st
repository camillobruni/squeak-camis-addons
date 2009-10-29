as yet unclassified
iconNamed: aSymbol
	^ icons 
		at: aSymbol 
		ifAbsentPut: 
			[[self new perform: aSymbol]
				on: MessageNotUnderstood
				do: [:exc | self iconNamed: #blank]]