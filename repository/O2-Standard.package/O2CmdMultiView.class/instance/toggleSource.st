utils
toggleSource
	(requestor announce: O2AboutToChange) isVetoed ifFalse: [ requestor announce: target definition ]