panes
separator
	^ BorderedSubpaneDividerMorph vertical
		color: model defaultBackgroundColor duller;
		styleWith: O2MorphBuilder new;
		yourself