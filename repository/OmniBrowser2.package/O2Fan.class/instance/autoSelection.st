accessing
autoSelection
	| auto |
	auto := parent ifNotNilDo: [:node | node metaNode autoSelect]. 
	^auto ifNotNil: [auto fan: self. auto autoSelection]