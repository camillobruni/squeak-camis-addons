filtering
filterProtocols: protocols onClasses: allClasses forNode: aNode 
	^ protocols allButFirst "the first is the synthetic --all-- category"
		select: [:p | allClasses anySatisfy: [:c | c organization categories includes: p name]]