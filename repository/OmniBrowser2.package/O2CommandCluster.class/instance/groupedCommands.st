accessing
groupedCommands
	| groups |
	groups := commands 
				groupBy: [:svc | svc group]
				having: [:group | group isEmpty not].
	groups := groups collect: [:ea | ea asArray sort: [:a :b | a priority < b priority or: [a priority = b priority and: [a label <= b label]]]].
	^ groups asArray sort: [:a :b | a anyOne group <= b anyOne group]