interaction
handleMultipleChoiceRequest: aRequest
	| menu |
	aRequest values isEmpty
		ifTrue: [ ^ aRequest values ].
	menu := MenuMorph new.
	menu stayUp: true.
	aRequest prompt isEmptyOrNil
		ifFalse: [ menu addTitle: aRequest prompt ].
	aRequest values do: [ :value |
		menu
			addUpdating: #label: target: aRequest selector: #toggle: 
			argumentList: (Array with: value) ].
	menu addLine.
	menu add: 'ok' target: menu selector: #delete.
	menu invokeModal.
	^ aRequest selection asArray