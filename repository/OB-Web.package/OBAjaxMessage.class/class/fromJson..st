as yet unclassified
fromJson: aJsonObject
	^ self
		receiver: aJsonObject receiver
		selector: aJsonObject selector asSymbol
		arguments: aJsonObject arguments