interaction
handleBrowseRequest: request
	^ (OBPlatform current build: request browser) openInWorld