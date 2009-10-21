*CamisAddons
mutatingSelectors
	^ (OrderedCollection newFrom: #(#byteAt:put:))
		addEvery: self superclass mutatingSelectors.