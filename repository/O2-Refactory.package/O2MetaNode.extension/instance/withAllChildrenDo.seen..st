*o2-refactory
withAllChildrenDo: aBlock seen: aSet
	(aSet includes: self) ifTrue: [ ^ self ].
	aSet add: self.
	aBlock value: self.
	self edges do: [ :each | each metaNode withAllChildrenDo: aBlock seen: aSet ]