configuration
optionalButtonPanel
	^ O2Platform current optionalButtons ifTrue: [ O2FixedButtonPanel new ]