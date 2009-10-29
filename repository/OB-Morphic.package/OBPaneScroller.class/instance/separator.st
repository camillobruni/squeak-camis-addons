panes
separator
	^ BorderedSubpaneDividerMorph vertical
		color: model defaultBackgroundColor duller;
		styleWith: OBPlatform current builder;
		yourself