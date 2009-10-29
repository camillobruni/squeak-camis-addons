accessing
position
	^ position ifNil: [ position := self defaultPosition ]