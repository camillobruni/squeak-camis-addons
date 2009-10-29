accessing
update: aSelector
	aSelector = #relabel
		ifTrue: [self createMessage
					selector: 'title';
					arguments: {model labelString};
					queue]