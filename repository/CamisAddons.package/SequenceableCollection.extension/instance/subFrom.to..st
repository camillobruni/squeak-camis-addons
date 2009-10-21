*CamisAddons
subFrom: start to: end
	| startT endT |
	startT := start.
	endT := end.
	start < 0 ifTrue: [ startT := self size + start + 1 ].
	end < 0 ifTrue: [ endT := self size + end + 1 ].
	
	startT < endT 
		ifTrue: [ ^ self copyFrom: startT to: endT. ]
		ifFalse: [ ^ (self copyFrom: endT to: startT) reverse ]