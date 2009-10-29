request processing
processPath: path content: content type: type 
	| target |
	path ifEmpty: [^self createLauncher].
	target := dispatcher resolvePath: path ifAbsent: [^self notFound: path].
	^ [type = 'application/json' 
		ifTrue: [self processAjax: content for: target]
		ifFalse: [self processGetFor: target]] 
			on: OBWindowRequest
			do: [:req | req handleWith: self]