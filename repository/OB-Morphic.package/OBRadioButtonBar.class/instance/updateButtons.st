updating
updateButtons
	| labels descriptions |
	labels := self getLabels.
	descriptions := self getLongDescriptions.
	buttons := Array new: labels size.
	labels withIndexDo: 
			[:label :index | 
			buttons at: index put: (OBButtonModel withLabel: label inBar: self longDescription: (descriptions at: index ifAbsent: [nil]))].
	selection := self getSelectionIndex