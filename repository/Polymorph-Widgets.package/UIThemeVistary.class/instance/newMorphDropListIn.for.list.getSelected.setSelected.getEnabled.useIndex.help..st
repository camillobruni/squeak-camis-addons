morph creation
newMorphDropListIn: aThemedMorph for: aModel list: listSel getSelected: getSel setSelected: setSel getEnabled: enabledSel useIndex: useIndex help: helpText
	"Answer a morph drop list for the given model."

	^(super
		newMorphDropListIn: aThemedMorph
		for: aModel
		list: listSel
		getSelected: getSel
		setSelected: setSel
		getEnabled: enabledSel
		useIndex: useIndex
		help: helpText)
		roundedCorners: #(1 2)