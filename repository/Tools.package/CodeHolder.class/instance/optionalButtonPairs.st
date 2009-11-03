controls
optionalButtonPairs
	"Answer a tuple (formerly pairs) defining buttons, in the format:
			button label
			selector to send
			help message"

	^ #(
	('browse'			browseMethodFull			'view this method in a browser')
	('senders' 			browseSendersOfMessages	'browse senders of...')
	('implementors'		browseMessages				'browse implementors of...')
	('versions'			browseVersions				'browse versions')
	('inheritance'		methodHierarchy			'browse method inheritance')
	('hierarchy'		classHierarchy				'browse class hierarchy')
	('inst vars'			browseInstVarRefs			'inst var refs...')
	('class vars'			browseClassVarRefs			'class var refs...')).
