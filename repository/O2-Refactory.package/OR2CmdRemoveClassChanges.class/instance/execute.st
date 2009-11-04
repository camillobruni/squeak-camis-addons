execution
execute
	self browser root changes do: [ :each |
		(target change changeClass = each change changeClass)
			ifTrue: [ each remove ] ].
	self refresh