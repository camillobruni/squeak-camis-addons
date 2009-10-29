as yet unclassified
printOn: aStream
	
	| base digits current i letters quo |
	base _ 36.
	digits _ '0123456789abcdefghijklmnopqrstuvwxyz'.
	current _ id.
	i _ id digitLength * 8.
	letters _ String new: i.
	[current < base] whileFalse: 
		[quo _ current quo: base.
		letters at: i put: (digits at: (current - (quo * base)) + 1).
		i _ i - 1.
		current _ quo].
	letters at: i put: (digits at: current + 1).
	aStream nextPut: $w.
	aStream nextPutAll: (letters copyFrom: i to: letters size)
	
