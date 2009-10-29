testing-method
testVisitMethod
	| pragma |
	pragma := self 
		pragma: 'foo'
		selector: #bar.
	self assert: pragma method == (self class >> #bar)