shared flaps
positionVisibleFlapsRightToLeftOnEdge: edgeSymbol butPlaceAtLeftFlapsWithIDs: idList
	"Lay out flaps along the designated edge right-to-left, while laying left-to-right any flaps found in the exception list

	Flaps positionVisibleFlapsRightToLeftOnEdge: #bottom butPlaceAtLeftFlapWithIDs: {'Navigator' translated. 'Supplies' translated}
	Flaps sharedFlapsAlongBottom"

	| leftX flapList flapsOnRight flapsOnLeft |
	flapList := self globalFlapTabsIfAny select:
		[:aFlapTab | aFlapTab isInWorld and: [aFlapTab edgeToAdhereTo == edgeSymbol]].
	flapsOnLeft := flapList select: [:fl | idList includes: fl flapID].
	flapList removeAll: flapsOnLeft.

	flapsOnRight := flapList asSortedCollection:
		[:f1 :f2 | f1 left > f2 left].
	leftX := ActiveWorld width - 15.

	flapsOnRight do:
		[:aFlapTab |
			aFlapTab right: leftX - 3.
			leftX := aFlapTab left].

	leftX := ActiveWorld left.
	flapsOnLeft := flapsOnLeft asSortedCollection:
		[:f1 :f2 | f1 left > f2 left].
	flapsOnLeft do:
		[:aFlapTab |
			aFlapTab left: leftX + 3.
			leftX := aFlapTab right].

	(flapsOnLeft asOrderedCollection, flapsOnRight asOrderedCollection) do:
		[:ft | ft computeEdgeFraction.
		ft flapID = 'Navigator' translated ifTrue:
			[ft referent left: (ft center x - (ft referent width//2) max: 0)]]
