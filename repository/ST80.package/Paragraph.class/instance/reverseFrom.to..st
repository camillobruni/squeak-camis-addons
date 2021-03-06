selecting
reverseFrom: characterBlock1 to: characterBlock2 
	"Reverse area between the two character blocks given as arguments."
	| visibleRectangle initialRectangle interiorRectangle finalRectangle lineNo baseline caret |
	characterBlock1 = characterBlock2 ifTrue:
		[lineNo := self lineIndexOfCharacterIndex: characterBlock1 stringIndex.
		baseline := lineNo = 0 ifTrue: [textStyle baseline]
							ifFalse: [(lines at: lineNo) baseline].
		caret := self caretFormForDepth: Display depth.
		^ caret  "Use a caret to indicate null selection"
				displayOn: destinationForm
				at: characterBlock1 topLeft + (-3 @ baseline)
				clippingBox: clippingRectangle
				rule: (false "Display depth>8" ifTrue: [9 "not-reverse"]
									ifFalse: [Form reverse])
				fillColor: nil].
	visibleRectangle := 
		(clippingRectangle intersect: compositionRectangle)
			"intersect: destinationForm boundingBox" "not necessary".
	characterBlock1 top = characterBlock2 top
		ifTrue: [characterBlock1 left < characterBlock2 left
					ifTrue: 
						[initialRectangle := 
							(characterBlock1 topLeft corner: characterBlock2 bottomLeft)
								intersect: visibleRectangle]
					ifFalse: 
						[initialRectangle := 
							(characterBlock2 topLeft corner: characterBlock1 bottomLeft)
								intersect: visibleRectangle]]
		ifFalse: [characterBlock1 top < characterBlock2 top
					ifTrue: 
						[initialRectangle := 
							(characterBlock1 topLeft 
								corner: visibleRectangle right @ characterBlock1 bottom)
								intersect: visibleRectangle.
						characterBlock1 bottom = characterBlock2 top
							ifTrue: 
								[finalRectangle := 
									(visibleRectangle left @ characterBlock2 top 
										corner: characterBlock2 bottomLeft)
										intersect: visibleRectangle]
							ifFalse: 
								[interiorRectangle := 
									(visibleRectangle left @ characterBlock1 bottom
										corner: visibleRectangle right 
														@ characterBlock2 top)
										intersect: visibleRectangle.
								finalRectangle := 
									(visibleRectangle left @ characterBlock2 top 
										corner: characterBlock2 bottomLeft)
										intersect: visibleRectangle]]
				ifFalse: 
					[initialRectangle := 
						(visibleRectangle left @ characterBlock1 top 
							corner: characterBlock1 bottomLeft)
							intersect: visibleRectangle.
					characterBlock1 top = characterBlock2 bottom
						ifTrue: 
							[finalRectangle := 
								(characterBlock2 topLeft 
									corner: visibleRectangle right 
												@ characterBlock2 bottom)
									intersect: visibleRectangle]
						ifFalse: 
							[interiorRectangle := 
								(visibleRectangle left @ characterBlock2 bottom 
									corner: visibleRectangle right @ characterBlock1 top)
									intersect: visibleRectangle.
							finalRectangle := 
								(characterBlock2 topLeft 
									corner: visibleRectangle right 
												@ characterBlock2 bottom)
									intersect: visibleRectangle]]].
	self hiliteRect: initialRectangle.
	self hiliteRect: interiorRectangle.
	self hiliteRect: finalRectangle.