services
chooseDirectoryIn: aThemedMorph title: title path: path
	"Answer the result of a file dialog with the given title, choosing directories only."

	|fd|
	fd := FileDialogWindow basicNew
		initialize;
		title: title;
		answerDirectory.
	path ifNotNil: [fd selectPathName: path].
	^(aThemedMorph openModal: fd) answer