*CamisAddons
mutatingSelectors 
	^ (OrderedCollection newFrom: #(#add: #add:withOccurrences: #addAll #addEvery #insertInto:from:to #remove #remove:ifAbsent: #removeAll #removeAllFoundIn: #removeAllSuchThat: #union:))
			addEvery: (self superclass mutatingSelectors).