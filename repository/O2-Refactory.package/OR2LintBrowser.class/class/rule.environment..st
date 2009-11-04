instance-creation
rule: aRule environment: anEnvironment
	PaneCount := self panesFor: aRule level: 1.
	^ (self root: aRule asO2Node) environment: anEnvironment