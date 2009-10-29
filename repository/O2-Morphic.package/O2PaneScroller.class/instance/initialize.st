initialization
initialize
	super initialize.
	self 
		color: Color white;
		borderWidth: 0;
		vResizing: #spaceFill;
		hResizing: #spaceFill.
	self 
		initializeTransform;
		initializeScrollbar.