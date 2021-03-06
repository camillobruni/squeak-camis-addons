examples
exampleWindowWithToolbars
	"Open an example window with toolbars."
	"self exampleWindowWithToolbars"

	|win fileMenu tools dock text holder|
	win := StandardWindow new.
	fileMenu := win newMenu.
	fileMenu
		addToggle: 'Open' translated
		target: nil "would be model"
		selector: #openFile.
	fileMenu lastItem
		font: win theme menuFont;
		icon: MenuIcons smallOpenIcon;
		keyText: 'Ctrl+O'.
	fileMenu
		addToggle: 'Save' translated
		target: nil
		selector: #saveFile
		getStateSelector: nil
		enablementSelector: nil.
	fileMenu lastItem
		font: win theme menuFont;
		keyText: 'Ctrl+S'.
	fileMenu
		addToggle: 'Print...' translated
		target: nil
		selector: #print.
	fileMenu lastItem
		font: win theme menuFont;
		icon: MenuIcons smallPrintIcon;
		keyText: 'Ctrl+P'.
	tools := win newToolbar: {win
			newButtonFor: nil "if we had a model it would go here"
			getState: nil
			action: #openFile
			arguments: nil
			getEnabled: nil
			labelForm: MenuIcons smallOpenIcon
			help: 'Open file' translated.
		win
			newButtonFor: nil
			getState: nil
			action: #saveFile
			arguments: nil
			getEnabled: nil
			labelForm: MenuIcons smallSaveIcon
			help: 'Save file' translated.
		win
			newButtonFor: nil
			getState: nil
			action: #print
			arguments: nil
			getEnabled: nil
			labelForm: MenuIcons smallPrintIcon
			help: 'Print' translated}.
		holder := StringHolder new.
		text := win
			newTextEditorFor: holder
			getText:  #contents
			setText: #contents:
			getEnabled: nil.
		dock := win newToolDockingBar.
		dock
			add: 'File' translated
			font: win theme menuBarFont
			icon: MenuIcons smallOpenIcon
			help: 'File operations' translated
			subMenu: fileMenu;
			addMorphBack: tools.
		win
			addMorph: dock
			fullFrame: (LayoutFrame fractions: (0@0 corner: 1@0) offsets: (0@0 corner: 0 @ dock minExtent y));
			addMorph: text
			fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1) offsets: (0@dock minExtent y corner: 0 @ 0)).
		win
			themeChanged;
			openInWorld
		
		