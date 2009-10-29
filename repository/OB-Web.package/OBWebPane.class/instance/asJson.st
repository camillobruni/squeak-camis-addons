as yet unclassified
asJson
	^ JsonObject new
		id: self identifier;
		list: children first identifier;
		buttons: children second identifier;
		show: model wantsButton;
		yourself