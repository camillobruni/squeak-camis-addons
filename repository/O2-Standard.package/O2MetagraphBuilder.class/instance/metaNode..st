accessing
metaNode: aMetaNodeName 
	^ self metaNodes 
		at: aMetaNodeName
		ifAbsentPut: [ O2MetaNode named: aMetaNodeName ]