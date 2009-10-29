as yet unclassified
initializeFrom: start to: end
	| valueStream context |
	valueStream _ WriteStream on: (Array new: 20).
	context _ start.
	[context ~~ end and: [context notNil]] whileTrue:
		[valueStream nextPut: context.
		1 to: context class instSize do: [:i | valueStream nextPut: (context instVarAt: i)].
		1 to: context size do: [:i | valueStream nextPut: (context at: i)].
		joinPoint _ context.
		context _ context sender].
	values _ valueStream contents.
	