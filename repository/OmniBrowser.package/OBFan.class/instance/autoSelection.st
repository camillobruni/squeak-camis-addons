accessing
autoSelection
	| auto |
	auto := parent.
	auto isNil ifFalse: [ auto := auto metaNode autoSelect ].
	^ auto isNil ifFalse: 
		[ auto fan: self.
		auto autoSelection ]