private events
isKbdEvent: buf
	^ (buf at: 1) = EventTypeKeyboard and: [(buf at: 4) = EventKeyChar]