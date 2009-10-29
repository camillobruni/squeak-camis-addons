private
createContextFor: aString at: anInteger 
	^ ECContext
		controller: ECController new
		class: ECTestClass
		source: aString
		position: anInteger