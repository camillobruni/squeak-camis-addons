initialize-release
setUp
	
	before := (ODatedEntry contents: 'before' type: #selector) now.
	before date: before date - 2 seconds.
	now := (ODatedEntry contents: 'now' type: #selector) now.
	now date: now date - 1 second.
	after := (ODatedEntry contents: 'after' type: #selector) now.
	noz := (ODatedEntry contents: 'noz' type: #selector) now.
	noz date: now date.