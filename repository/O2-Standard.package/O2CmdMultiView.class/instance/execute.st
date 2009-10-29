execution
execute
	| viewType |
	viewType := O2ChoiceRequest labels: #(#Source #Bytecode #Decompile #PrettyPrint ).
	viewType ifNotNil: [ self perform: (#toggle , viewType) asSymbol ]