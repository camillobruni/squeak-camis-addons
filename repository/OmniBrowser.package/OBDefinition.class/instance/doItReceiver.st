callbacks
doItReceiver
	| class |
	class := self selectedClass.
	^ class isNil 
		ifFalse: [ class theNonMetaClass ]
		ifTrue: [ FakeClassPool new ]