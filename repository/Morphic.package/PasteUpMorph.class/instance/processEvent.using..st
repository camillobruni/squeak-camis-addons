events-processing
processEvent: anEvent using: defaultDispatcher
	"Reimplemented to install the receiver as the new ActiveWorld if it is one"
	| priorWorld result |
	self isWorldMorph ifFalse:[^super processEvent: anEvent using: defaultDispatcher].
	priorWorld := ActiveWorld.
	ActiveWorld := self.
	result := super processEvent: anEvent using: defaultDispatcher.
	ActiveWorld := priorWorld.
	^result