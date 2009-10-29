navigating
messages
	^ self messageSelectors
			collect: [:sel | OBMessageNode 
								on: sel 
								inMethod: selector 
								inClass: self theClass]