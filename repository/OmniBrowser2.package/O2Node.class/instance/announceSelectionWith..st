updating
announceSelectionWith: anObject 
	(anObject announce: O2AboutToChange) isVetoed ifFalse: [ anObject announce: (O2SelectingNode node: self) ]