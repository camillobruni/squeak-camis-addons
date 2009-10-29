preferences
selectFontFor: aSymbol 
	| emphasized attributes |
	attributes _ SHTextStylerST80 new
				attributesFor: (self convertToSHSymbol: aSymbol).
	emphasized _ attributes size > 1
				ifTrue: [attributes second emphasisCode]
				ifFalse: [0]. 
	^ self listFont emphasized: emphasized