morphic ui
editLoadScripts

	| menu |
	self hasWorkingCopy ifFalse: [^self].
	menu := MenuMorph new defaultTarget: self.
	menu add: 'edit preamble' selector: #editScript: argument: #preamble.
	menu add: 'edit postscript' selector: #editScript: argument: #postscript.
	menu add: 'edit preambleOfRemoval' selector: #editScript: argument: #preambleOfRemoval.
	menu add: 'edit postscriptOfRemoval' selector: #editScript: argument: #postscriptOfRemoval.
	menu popUpInWorld.