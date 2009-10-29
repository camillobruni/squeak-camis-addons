notifications
handleCloseWindow: req
	req resume: (self destroyWindowFor: req model)