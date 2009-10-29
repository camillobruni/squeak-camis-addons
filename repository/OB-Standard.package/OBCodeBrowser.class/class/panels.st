configuration
panels
	^ (Array with: self mercuryPanel with: self navigationPanel with: self annotationPanel with: self optionalButtonPanel with: self definitionPanel) reject: [:ea | ea isNil]