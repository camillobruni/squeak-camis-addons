label-styles
vThumbForm
	"Answer the form to use for vertical thumbs."

	^self forms at: #vThumb ifAbsent: [Form extent: 10@10 depth: Display depth]