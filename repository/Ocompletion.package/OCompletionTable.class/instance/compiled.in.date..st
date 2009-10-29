as yet unclassified
compiled: selector in: class date: date 
	self 
		addEntry: selector
		date: date.
	(class canUnderstand: selector) ifTrue: [
		(class compiledMethodAt: selector ifAbsent: [^self]) messages do: [ :m | 
			self  addEntry: m date: date ]].
	self class classes addEntry: class theNonMetaClass name date: date.
	