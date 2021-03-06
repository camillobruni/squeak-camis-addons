private
ensureReceiverAndArguments

	"Return true if my receiver hasn't gone away"
	self receiver ifNil: [ ^false ].

	"Make sure that my arguments haven't gone away"
	arguments ifNotNil: [
		arguments with: shouldBeNil do: [ :arg :flag |
			arg ifNil: [ flag ifFalse: [ ^false ]]
		]
	].

	^true
