list
listHolder
	^ listHolder ifNil: [ listHolder := O2List column: self ]