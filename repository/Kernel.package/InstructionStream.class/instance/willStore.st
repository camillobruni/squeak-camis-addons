testing
willStore
	"Answer whether the next bytecode is a store or store-pop"

	| byte |
	byte := self method at: pc.
	^(byte between: 96 and: 142)
		and: [byte <= 111			"96 103		storeAndPopReceiverVariableBytecode"
									"104 111	storeAndPopTemporaryVariableBytecode"
			or: [byte >= 129		"129		extendedStoreBytecode"
				and: [byte <= 130	"130		extendedStoreAndPopBytecode"
					or: [(byte = 132	"132		doubleExtendedDoAnythingBytecode"
						and: [(self method at: pc+1) >= 160])
					or: [byte = 141	"141		storeRemoteTempLongBytecode"
					or: [byte = 142	"142		storeAndPopRemoteTempLongBytecode"]]]]]]