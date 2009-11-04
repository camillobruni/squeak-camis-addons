actions
search: aRule
	process := [ self basicSearch: aRule ]
		newProcess.
	process name: 'lint'.
	process resume