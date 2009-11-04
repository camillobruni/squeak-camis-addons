execution
execute
	| typer |
	typer := RefactoryTyper new.
	typer runOn: target theClass.
	self definition: (OBTextDefinition text: typer printString)