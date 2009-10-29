as yet unclassified
initialize
	Smalltalk at: #Optimist put: true.
	SystemChangeNotifier uniqueInstance notify: self ofSystemChangesOfItem: #method using: #methodChanged:.
	self initializeTable.