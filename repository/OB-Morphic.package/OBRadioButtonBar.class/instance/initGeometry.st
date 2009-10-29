initialize-release
initGeometry
	self
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		rubberBandCells: true;
		styleWith: OBPlatform current builder