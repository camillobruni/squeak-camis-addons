editing keys
hierarchyOfIt
	"Launch a browser for the class indicated by the
	current selection. 
	If multiple classes matching the selection exist, let
	the user choose among them."
	| aBrow aClass |
	self lineSelectAndEmptyCheck: [^ self].
	aClass := SystemNavigation default
				classFromPattern: (self selection string copyWithout: Character cr)
				withCaption: 'choose a class to browse...'.
	aClass ifNil: [^ self flash].
	self terminateAndInitializeAround: [OBCodeBrowser hierarchyBrowserClass openOnClass: aClass]