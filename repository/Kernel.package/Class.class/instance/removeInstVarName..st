instance variables
removeInstVarName: aString 
	"Remove the argument, aString, as one of the receiver's instance variables."

	| newInstVarString |
	(self instVarNames includes: aString)
		ifFalse: [self error: aString , ' is not one of my instance variables'].
	newInstVarString := ''.
	(self instVarNames copyWithout: aString) do: 
		[:varName | newInstVarString := newInstVarString , ' ' , varName].
	^(ClassBuilder new)
		name: self name
		inEnvironment: self environment
		subclassOf: self superclass
		type: self typeOfClass
		instanceVariableNames: newInstVarString
		classVariableNames: self classVariablesString
		poolDictionaries: self sharedPoolsString
		category: self category