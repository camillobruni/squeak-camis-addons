error handling
deprecated: anExplanationString on: date in: version
	"Warn that the sending method has been deprecated"
	
	(Deprecation
		method: thisContext sender method
		explanation: anExplanationString
		on: date
		in: version) signal