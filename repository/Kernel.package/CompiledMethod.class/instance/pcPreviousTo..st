debugger support
pcPreviousTo: pc
	| scanner client prevPc |
	self flag: 'belongs in DebuggerMethodMap?'.
	pc > self endPC ifTrue: [^self endPC].
	scanner := InstructionStream on: self.
	client := InstructionClient new.
	[scanner pc < pc] whileTrue:
		[prevPc := scanner pc.
		 scanner interpretNextInstructionFor: client].
	^prevPc