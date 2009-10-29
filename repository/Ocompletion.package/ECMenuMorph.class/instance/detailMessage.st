drawing
detailMessage
	^ detailMorph
		ifNil: [self helpText, ' | -> open detail']
		ifNotNil: [self helpText, ' | <- close detail']