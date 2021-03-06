visual properties
inARightColumn: aCollectionOfMorphs 
	| col |
	col := self class newColumn color: Color transparent;
				 vResizing: #shrinkWrap;
				 layoutInset: 1;
				 wrapCentering: #bottomRight;
				 cellPositioning: #topCenter.
	aCollectionOfMorphs
		do: [:each | col addMorphBack: each].
	^ col