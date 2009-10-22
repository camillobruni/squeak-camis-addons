accessing
saveIntervalled
	[true]
		whileTrue: [
			Transcript cr; cr; show: '------ saving -----'; cr; cr.
			self save.
			(Delay forSeconds: self saveIntervalMinutes * 60) wait]