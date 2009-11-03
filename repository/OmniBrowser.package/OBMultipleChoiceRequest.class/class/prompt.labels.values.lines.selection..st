as yet unclassified
prompt: aString labels: labelArray values: valueArray lines: lineArray selection: aSelection
	^ (self new 
		setPrompt: aString 
		labels: labelArray 
		values: valueArray 
		lines: lineArray
		selection: aSelection) 
			signal