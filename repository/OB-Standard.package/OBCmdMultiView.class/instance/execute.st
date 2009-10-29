execution
execute
	| viewType |
	viewType := OBChoiceRequest labels: #(#Source #Bytecode #Decompile #PrettyPrint ).
	viewType isNil ifFalse: [ self perform: (#toggle , viewType) asSymbol ]