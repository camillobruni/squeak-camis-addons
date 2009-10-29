building
textarea: aDefinitionPanel with: aBlock 
	"see CodeHolder>>buildMorphicCodePaneWith:"
	| morph |
	morph := self textMorphClass  
		on: aDefinitionPanel
		text: #text
		accept: #accept:notifying:
		readSelection: #selection
		menu: #menu:shifted:.
	morph
		font: Preferences standardCodeFont;
		borderWidth: 0;
		vResizing: #spaceFill;
		hResizing: #spaceFill.
	current isNil ifFalse: [ current addMorphBack: morph ].
	^ self 
		current: morph
		do: aBlock