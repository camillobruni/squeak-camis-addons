utils
setTextInDefinitionPanel: aTextOrString 
	(requestor announce: O2AboutToChange) isVetoed ifFalse: 
		[ requestor announce: (O2DefinitionChanged definition: (O2ReadOnlyDefinition new
					setText: aTextOrString;
					yourself)) ]