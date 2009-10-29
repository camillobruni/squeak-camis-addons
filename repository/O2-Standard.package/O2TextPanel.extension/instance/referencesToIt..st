*o2-standard-cmds
referencesToIt: aClassName 
	| class |
	class := self environment 
		at: aClassName
		ifAbsent: [ ^ false ].
	class isBehavior ifFalse: [ ^ false ].
	O2ReferencesBrowser browseRoot: (O2ClassNode on: class).
	^ true