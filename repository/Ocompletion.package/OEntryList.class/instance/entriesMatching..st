accessing
entriesMatching: prefix
	^ entries select: [:e | e matches: prefix]