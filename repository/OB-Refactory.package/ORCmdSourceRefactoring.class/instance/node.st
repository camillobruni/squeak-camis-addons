accessing-selection
node
	^ RBParser parseExpression: self selection onError: [ :str :pos | ^ nil ]