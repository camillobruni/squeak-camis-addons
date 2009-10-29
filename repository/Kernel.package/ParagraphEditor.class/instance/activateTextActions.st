as yet unclassified
activateTextActions
	(paragraph text attributesAt: startBlock stringIndex) 
		do: [:att | att actOnClickFor: model in: paragraph]