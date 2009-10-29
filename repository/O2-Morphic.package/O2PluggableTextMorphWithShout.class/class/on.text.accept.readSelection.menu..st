instance creation
on: anObject text: getTextSel accept: setTextSel readSelection: getSelectionSel menu: getMenuSel
	|styler answer stylerClass |
	answer := self new.
	stylerClass := Smalltalk classNamed: #SHTextStylerST80.
	styler := stylerClass
		ifNotNil:[
			stylerClass new
				view: answer;
				yourself].
	^ answer
		styler: styler;
		on: anObject
		text: getTextSel
		accept: setTextSel
		readSelection: getSelectionSel
		menu: getMenuSel