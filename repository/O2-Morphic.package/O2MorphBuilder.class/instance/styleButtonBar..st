style
styleButtonBar: aBar
	self style39
		ifFalse: [aBar borderWidth: 0]
		ifTrue: 
			[aBar
				color: Color transparent;
				borderWidth: 0;
				layoutInset: 2;
				cellInset: 2]
