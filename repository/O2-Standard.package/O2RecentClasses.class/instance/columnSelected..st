updating
columnSelected: announcement 
	"This method is sent by the browser when a node is selected. The annoucement is an OBSelectionChanged."
	(announcement node isKindOf: O2ClassNode) ifTrue: [ self userHasSelectedClass: announcement node theNonMetaClassName ]