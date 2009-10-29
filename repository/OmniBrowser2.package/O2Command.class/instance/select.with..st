user interface
select: aNode with: anAnnouncer 
	(anAnnouncer announce: O2AboutToChange) isVetoed ifFalse: [ anAnnouncer announce: (O2SelectingNode node: aNode) ]