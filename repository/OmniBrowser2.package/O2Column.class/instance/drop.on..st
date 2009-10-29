callbacks
drop: passenger on: target 
	^ [ target acceptDroppedNode: passenger ] 
		on: O2AnnouncerRequest
		do: [ :notification | notification resume: self announcer ]