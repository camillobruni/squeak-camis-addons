as yet unclassified
merger: aMerger
	merger := aMerger.
	items := aMerger operations asSortedCollection.
	conflicts := aMerger conflicts sortBy: [:a :b | a operation <= b operation].