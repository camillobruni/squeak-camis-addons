converting
on: aNode for: aRequestor 
	| inst |
	inst := self copy.
	inst 
		setTarget: aNode
		requestor: aRequestor.
	^ inst