configuration
template
	^ 'ParseTreeSearcher new
	matches: ''`@object'' do: [ :node :answer | node ];
	matchesMethod: ''`@method: `@args | `@temps | `@.statements'' do: [ :node :answer | node ];
	yourself'