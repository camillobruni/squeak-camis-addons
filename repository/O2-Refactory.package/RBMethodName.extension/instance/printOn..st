*o2-refactory
printOn: aStream
	| argumentStream |
	self selector isNil 
		ifTrue: [ self selector: (#value numArgs: self arguments size) ].
	argumentStream := self arguments readStream.
	self selector keywords keysAndValuesDo: [ :key :part |
		key = 1 ifFalse: [ aStream space ].
		aStream nextPutAll: part.
		(self selector isUnary or: [ argumentStream atEnd ]) 
			ifTrue: [ ^ self ].
		aStream space; nextPutAll: argumentStream next ]