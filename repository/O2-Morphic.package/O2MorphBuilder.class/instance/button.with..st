building
button: aButtonModel with: aBlock 
	| morph buttonClass |
	buttonClass := (aButtonModel isDropEdge: aButtonModel label) 
		ifTrue: [ aButtonModel browser class draggableButtonClass ]
		ifFalse: [ PluggableButtonMorph ].
	morph := buttonClass 
		on: aButtonModel
		getState: #isSelected
		action: #push
		label: #labelMorph.
	morph
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		setBalloonText: aButtonModel longDescription;
		styleWith: O2MorphBuilder new;
		enableDragNDrop.
	^ self 
		current: morph
		do: aBlock