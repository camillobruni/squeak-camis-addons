updating
signalSelection
	(self announce: O2AboutToChange) isVetoed ifFalse: [ self announce: (O2SelectingNode node: self) ]