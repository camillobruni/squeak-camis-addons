examples
exampleBasicControls
	"Open a window with examples of each of the basic controls."
	"self exampleBasicControls"
	
	|dialog builder radioModel treeModel|
	builder := self exampleBuilder.
	dialog := (builder newPluggableDialogWindow: 'Example basic controls') useDefaultOKButton.
	radioModel := ExampleRadioButtonModel new.
	treeModel := ValueHolder new contents: TextStyle actualTextStyles explorerContents.
	dialog contentMorph: (dialog newRow: {
		dialog newLabelGroup: {
			'Normal Label'->(dialog newLabel: 'A Label').
			'Disabled Label'->(dialog newLabel: 'A Disabled Label') disable.
			'Normal Button'->(dialog newButtonFor: nil action: nil label: 'A Button' help: 'This is a button').
			'Default Button'->((dialog newButtonFor: nil action: nil label: 'Default Button' help: 'This is a default button') isDefault: true).
			'Disabled Button'->(dialog newButtonFor: nil action: nil label: 'Disabled Button'
							help: 'This is a disabled button') disable.
			'Selected Button'->(dialog newButtonFor: (ValueHolder new contents: true) getState: #contents
							action: nil arguments: #() getEnabled: nil label: 'A Button' help: 'This is a selected button').
			'Selected Disabled Button'->(dialog newButtonFor: (ValueHolder new contents: true) getState: #contents
							action: nil arguments: #() getEnabled: nil label: 'Disabled Button'
							help: 'This is a selected disabled button') disable.
			'Checkbox'->(dialog newCheckboxFor: (ValueHolder new contents: true)
							getSelected: #contents setSelected: #contents: label: 'A Checkbox' help: 'This is a checkbox').
			'Disabled Checkbox'->(dialog newCheckboxFor: (ValueHolder new contents: true)
							getSelected: #contents setSelected: #contents:
							label: 'A Disabled Checkbox' help: 'This is a disabled checkbox') disable.
			'Radio Buttons'->(dialog newColumn: {
								(dialog newRadioButtonFor: radioModel
									getSelected: #isLeft setSelected: #beLeft label: 'Left' help: 'This is a radio buton').
								(dialog newRadioButtonFor: radioModel
									getSelected: #isCenter setSelected: #beCenter label: 'Center' help: 'This is a radio buton').
								(dialog newRadioButtonFor: radioModel
									getSelected: #isRight setSelected: #beRight label: 'Right' help: 'This is a radio buton')}).
			'Disabled Radio Button'->(dialog newRadioButtonFor: radioModel
									getSelected: #isRight setSelected: #beRight label: 'Right'
									help: 'This is a disabled radio buton') disable.
			'Text Entry'->(dialog newTextEntryFor: (ValueHolder new contents: 'Hello')
							getText: #contents setText: #contents: help: 'This is a text entry').
			'Disabled Text Entry'->(dialog newTextEntryFor: (ValueHolder new contents: 'Hello')
							getText: #contents setText: #contents: help: 'This is a disabled text entry') disable.
			'Slider'->(dialog newSliderFor: (ValueHolder new contents: 0.5)
							getValue: #contents setValue: #contents: help: 'This is a slider').
			'Disabled Slider'->(dialog newSliderFor: (ValueHolder new contents: 0.75)
							getValue: #contents setValue: #contents: help: 'This is a disabled slider') disable}.
			dialog newVerticalSeparator.
			dialog newLabelGroupSpread: {
			'Drop List'->(dialog newDropListFor: (ListModel new list: #('One' 'Two' 'Three' 'Four'))
							list: #list getSelected: #selectionIndex setSelected: #selectionIndex: help: 'This is a drop list').
			'Disabled Drop List'->(dialog newDropListFor: (ListModel new list: #('One' 'Two' 'Three' 'Four'); selectionIndex: 3)
							list: #list getSelected: #selectionIndex setSelected: #selectionIndex:
							help: 'This is a disabled drop list') disable.
			'Morph Drop List'->(dialog newMorphDropListFor: (ListModel new list: ({Color red. Color green. Color blue}
									collect: [:c | Morph new extent: 60@12; color: c]))
							list: #list getSelected: #selectionIndex setSelected: #selectionIndex:
							help: 'This is a morph drop list').
			'Normal List'->((dialog newListFor: (ListModel new list: #('One' 'Two' 'Three' 'Four'); selectionIndex: 3)
							list: #list selected: #selectionIndex changeSelected: #selectionIndex:
							help: 'This is a list') minWidth: 120).
			'Disabled List'->(dialog newListFor: (ListModel new list: #('One' 'Two' 'Three' 'Four'); selectionIndex: 3)
							list: #list selected: #selectionIndex changeSelected: #selectionIndex:
							help: 'This is a disabled list') disable.
			'Morph List'->(dialog newMorphListFor: (ListModel new list: ((Color wheel: 20)
									collect: [:c | Morph new extent: 80@12; color: c]))
							list: #list getSelected: #selectionIndex setSelected: #selectionIndex:
							help: 'This is a morph list').
			'Tree'->((dialog newTreeFor: treeModel list: #contents selected: nil changeSelected: nil) minHeight: 100)}.
			dialog newVerticalSeparator.
			dialog newColumn: {
				dialog newTitle: 'Text Editor' for: (
					(dialog newTextEditorFor: (ValueHolder new contents: 'Hello')
						getText: #contents setText: #contents:) minWidth: 100).
				dialog newTitle: 'Disabled Text Editor' for: (
					(dialog newTextEditorFor: (ValueHolder new contents: 'Hello')
						getText: #contents setText: #contents:) disable)}});
		model: nil.
	builder openModal: dialog