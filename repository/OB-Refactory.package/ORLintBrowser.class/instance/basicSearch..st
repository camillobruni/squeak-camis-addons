private
basicSearch: aRule
	| percent increment checker |
	aRule resetResult.
	self status: 'Searching'; refresh.
	percent := 0.0.
	increment := self environment numberSelectors isZero
		ifFalse: [ 100.0 / self environment numberSelectors ]
		ifTrue: [ 0 ].
	checker := SmalllintChecker new.
	checker
		rule: aRule;
		context: SmalllintContext new;
		environment: self environment;
		methodBlock: [ 
			percent := percent + increment min: 100.
			self status: percent truncated asString , '%' ].
	[ checker run ] ensure: [
		self refresh.
		self status: (self root problemCount > 0
			ifTrue: [ self root problemCount asString , ' problems' ]).
		checker release.
		process := nil ]