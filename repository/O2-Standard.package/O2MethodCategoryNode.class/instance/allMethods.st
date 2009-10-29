navigating
allMethods
	| allMethods |
	allMethods := OrderedCollection new.
	self theClass withAllSuperclassesDo: 
		[ :class | 
		class methodDict keysAndValuesDo: 
			[ :methodName :method | 
			| cat |
			cat := (MethodReference 
				class: class
				selector: methodName) category.
			cat = self name ifTrue: [ allMethods add: method selector ] ] ].
	^ allMethods collect: 
		[ :selector | 
		| class |
		class := self theClass whichClassIncludesSelector: selector.
		O2MethodNode 
			on: selector
			inClass: class ]