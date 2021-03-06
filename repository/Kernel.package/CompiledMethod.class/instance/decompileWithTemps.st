decompiling
decompileWithTemps
	"Return the decompiled parse tree that represents self, but get the temp names
	 by compiling the sourcecode..."

	|  class selector |
	class := self methodClass ifNil: [Object].
	selector := self selector ifNil: [self defaultSelector].

	(self fileIndex > 0 and: [(SourceFiles at: self fileIndex) isNil]) ifTrue: [
			"Emergency or no source file -- decompile without temp names "
			^self decompile.
	].
	^((self decompilerClass new withTempNames: self methodNode tempNames)
						decompile: selector
						in: class
						method: self)