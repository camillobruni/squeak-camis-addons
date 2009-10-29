callbacks
commands
	| commands node buttons grouped groups |
	node := self currentNode.
	node ifNil: 
		[ ^ #() ].
	commands := (self announce: O2NodeCommandScan) 
		commandsOn: node
		for: self.
	buttons := commands select: [ :ea | ea wantsButton ].
	groups := (buttons collect: [ :ea | ea group ]) asSet asSortedCollection: [ :a :b | a > b ].
	grouped := groups collect: 
		[ :ea | 
		(buttons select: [ :b | b group = ea ]) asSortedCollection: [ :a :b | a order <= b order ] ].
	^ grouped gather: [ :ea | ea ]