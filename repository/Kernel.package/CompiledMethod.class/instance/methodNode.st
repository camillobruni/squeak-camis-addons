decompiling
methodNode
	"Return the parse tree that represents self"
	| aClass source |
	aClass := self methodClass.
	source := self
				getSourceFor: (self selector ifNil: [self defaultSelector])
				in: aClass.
	^(aClass parserClass new
		encoderClass: (self isBlueBookCompiled
						ifTrue: [EncoderForV3]
						ifFalse: [EncoderForV3PlusClosures]);
		parse: source class: aClass)
			sourceText: source;
			yourself