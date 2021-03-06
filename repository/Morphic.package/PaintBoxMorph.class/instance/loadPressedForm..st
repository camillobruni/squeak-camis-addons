initialization
loadPressedForm: pic16Bit 
	"Prototype loadPressedForm: (Smalltalk imageImports at: #pressedPaletteJapanese)"

	| blt on |
	AllPressedImage := AllPressedImage := Form extent: OriginalBounds extent depth: 16.
	blt := BitBlt current toForm: AllPressedImage.
	blt sourceForm: pic16Bit;
		 combinationRule: Form over;
		 sourceRect: OriginalBounds;
		 destOrigin: 0 @ 0;
		 copyBits.
	AllPressedImage mapColor: Color black to: Color transparent.
	self
		allMorphsDo: [:button | (button isKindOf: ThreePhaseButtonMorph)
				ifTrue: [on := Form extent: button extent depth: 16.
					on
						copy: (0 @ 0 extent: button extent)
						from: button topLeft - self topLeft
						in: AllPressedImage
						rule: Form over.
					button pressedImage: on]].
	AllPressedImage := nil.
	self invalidRect: bounds
