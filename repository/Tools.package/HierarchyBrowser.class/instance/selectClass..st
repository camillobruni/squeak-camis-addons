initialization
selectClass: classNotMeta
	| name |
	name := classNotMeta name.
	self classListIndex: (self classList findFirst:
			[:each | (each endsWith: name)
					and: [each size = name size
							or: [(each at: each size - name size) isSeparator]]])