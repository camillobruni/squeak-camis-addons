progressbar
progressBarBorderStyleFor: aProgressBar
	"Return the progress bar borderStyle for the given progress bar."

	| aStyle |
	aStyle := BorderStyle complexInset.
	aStyle width: 2.
	aStyle color: self backgroundColor.
	^aStyle.