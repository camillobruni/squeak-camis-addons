dropping/grabbing
acceptDroppingMorph: dropped event: evt
	"The supplied morph, known to be acceptable to the receiver, is now to be assimilated; the precipitating event is supplied"

	| aMorph |
	aMorph := self morphToDropFrom: dropped.
	self isWorldMorph
		ifTrue:["Add the given morph to this world and start stepping it if it wants to be."
				self addMorphFront: aMorph.
				(aMorph fullBounds intersects: self viewBox) ifFalse:
					[Beeper beep.  aMorph position: self bounds center]]
		ifFalse:[super acceptDroppingMorph: aMorph event: evt].

	aMorph submorphsDo: [:m | (m isKindOf: HaloMorph) ifTrue: [m delete]].
	
	self isPartsBin
		ifTrue:
			[aMorph isPartsDonor: true.
			aMorph stopSteppingSelfAndSubmorphs.
			aMorph suspendEventHandler]
		ifFalse:
			[self world startSteppingSubmorphsOf: aMorph].

	self showingListView ifTrue:
		[self sortSubmorphsBy: (self valueOfProperty: #sortOrder).
		self currentWorld abandonAllHalos].

	self bringTopmostsToFront.
