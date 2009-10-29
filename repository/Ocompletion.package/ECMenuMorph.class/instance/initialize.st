initialization
initialize
	super initialize.
	self color: self class backgroundColor.
	self setBorderWidth: 1 borderColor: self class borderColor.
	self
		when: #positionChanged
		send: #updateDetail
		to: self