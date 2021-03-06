controls
contentsSymbolQuints
	"Answer a list of quintuplets representing information on the alternative views available in the code pane
		first element:	the contentsSymbol used
		second element:	the selector to call when this item is chosen.
		third element:	the selector to call to obtain the wording of the menu item.
		fourth element:	the wording to represent this view
		fifth element:	balloon help
	A hypen indicates a need for a seperator line in a menu of such choices"

	^ #(
(source			togglePlainSource 			showingPlainSourceString	'source'		'the textual source code as writen')
(documentation	toggleShowDocumentation	showingDocumentationString	'documentation'		'the first comment in the method')
-
(prettyPrint		togglePrettyPrint 			prettyPrintString			'prettyPrint'			'the method source presented in a standard text format')
-
(showDiffs		toggleRegularDiffing		showingRegularDiffsString	'showDiffs'				'the textual source diffed from its prior version')
(prettyDiffs		togglePrettyDiffing			showingPrettyDiffsString	'prettyDiffs'		'formatted textual source diffed from formatted form of prior version')
-
(decompile		toggleDecompile				showingDecompileString		'decompile'			'source code decompiled from byteCodes')
(byteCodes		toggleShowingByteCodes		showingByteCodesString		'byteCodes'			'the bytecodes that comprise the compiled method'))