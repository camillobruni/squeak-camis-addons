as yet unclassified
createLauncher
	| launcher |
	launcher := OBWebLauncher new.
	(dispatcher at: 'windows') at: launcher identifier put: launcher.
	^ HttpResponse fromUrl: launcher path