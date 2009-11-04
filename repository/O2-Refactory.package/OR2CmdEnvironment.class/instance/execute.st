execution
execute
	[ self openEnvironment: self environment ] 
		on: OR2UICancellationError
		do: [ :err | ^ self ]