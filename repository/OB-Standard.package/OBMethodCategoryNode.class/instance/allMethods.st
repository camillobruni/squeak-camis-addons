navigating
allMethods
	| allMethods |
	allMethods := OrderedCollection new.
	self theClass withAllSuperclassesDo: [ :class | 
		class methodDict keysAndValuesDo: [ :selector :method | 
			self name = (class organization categoryOfElement: selector)
				ifTrue: [ allMethods add: selector] ] ].
	^ allMethods collect: [ :selector | 
		OBMethodNode 
			on: selector
			inClass: (self theClass 
				whichClassIncludesSelector: selector) ]