label-styles
windowMaximizeDownForm
	"Answer the form to use for window maximise buttons with mouse down."

	^self forms at: #windowMaximizeDown ifAbsent: [Form extent: 18@18 depth: Display depth]