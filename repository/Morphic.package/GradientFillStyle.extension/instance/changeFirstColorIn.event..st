*morphic-balloon
changeFirstColorIn: aMorph event: evt
	^self changeColorSelector: #firstColor:forMorph:hand: hand: evt hand morph: aMorph originalColor: colorRamp first value