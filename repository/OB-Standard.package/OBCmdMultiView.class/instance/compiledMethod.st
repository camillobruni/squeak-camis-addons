accessing
compiledMethod

	^target theClass 
		compiledMethodAt: target selector 
		ifAbsent: [CompiledMethod new]