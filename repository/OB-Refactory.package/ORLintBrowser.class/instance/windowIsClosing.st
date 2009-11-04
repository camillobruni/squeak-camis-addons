private
windowIsClosing
	self isSearching
		ifTrue: [ process terminate ]