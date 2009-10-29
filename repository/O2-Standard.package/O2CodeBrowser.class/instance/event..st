updating
event: anEvent
	anEvent isDoIt ifTrue: [ ^ self ].
	"Transcript show: 'OBPackageBrowser>>event:  ', anEvent itemKind printString; cr."
	changeEvent := anEvent.
"	v := Time millisecondsToRun: [anEvent itemKind == #method 
		ifFalse: [changeEvent := anEvent. ^ self].

	selectedClassNode := self navigationPanel columns second selectedNode.
	selectedClassNode ifNil: [ ^ self ]. 
	
	selectedClass := selectedClassNode theClass.
	methodClass := anEvent item methodClass.
	
	selectedClass ~~ methodClass ifTrue: [ ^ self ]. 
	changeEvent := anEvent.].
Transcript show: 'OBPackageBrowser>>event:  ', anEvent itemKind printString, '  time: ', v printString; cr."	