*ob-morphic
animateValue: newValue
	| to delta currentTo accel |
	to := newValue roundTo: scrollDelta.
	delta := 0.005 min: (to - value) abs.
	currentTo := to.
	[ [ (value closeTo: to) or: [ (currentTo closeTo: to) not ] ] whileFalse: [
		| time |
		time := DateAndTime now.
		delta := (delta * 1.5) min: ((currentTo - value) abs).
		self setValue: (value < to
			ifTrue: [ value + delta ]
			ifFalse: [ value - delta ]).
		((10 milliSeconds - (DateAndTime now - time)) max: 0 milliSeconds) asDelay wait ] ]
			forkAt: Processor highestPriority