accessing
surroundingHierarchy
	| class result |
	result := OrderedCollection new.
	class := self theNonMetaClass.
	class allSuperclasses reverseDo: 
		[:aClass | 
		result add: aClass].

	class allSubclassesWithLevelDo:
		[:aClass :level |
		result add: aClass]
	 	startingLevel: 0.	

	^ result