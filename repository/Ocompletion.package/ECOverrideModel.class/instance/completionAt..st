action
completionAt: aNumber 
	| output source declaration |
	source := self methodSourceAt: aNumber.
	declaration := (source lineCorrespondingToIndex: 1) withoutTrailingBlanks.
	output := WriteStream on: String new.
	output nextPutAll: declaration;
		 cr;
		 tab;
		
		 nextPutAll: (self computeReturn: source);
		 nextPutAll: 'super ';
		 nextPutAll: declaration.
	^ output contents