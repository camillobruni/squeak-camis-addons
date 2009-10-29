drawing
drawOn: aCanvas 
	| rectangle model textColor |
	super drawOn: aCanvas.
	self drawTitleOn: aCanvas.
	rectangle _ self bounds copy.
	rectangle bottom: rectangle top + self itemHeight.
	rectangle _ rectangle left: rectangle left + 20.
	model _ context model.
	self extent: self extent.
	self firstVisible > 1
		ifTrue: [self drawTopScrollArrowOn: aCanvas].
	self lastVisible ~= self itemsCount
		ifTrue: [self drawBottomScrollArrowOn: aCanvas].
	model notEmpty
		ifTrue: [self firstVisible
				to: self lastVisible
				do: [:index | 
					| symbol type string | 
					symbol _ model entries at: index.
					string _ symbol contents.
					type _ symbol type.
					textColor := self selectColor: type.
					index = self selected
						ifTrue: [| rect | 
							rect _ rectangle withBottom: rectangle top + self class itemHeight.
							aCanvas fillRectangle: rect color: self class scrollColor.
							self detailPosition: rect topRight - (1@0).
							textColor := textColor negated ].
					aCanvas
						drawString: string
						in: (rectangle insetBy: 1)
						font: (self selectFont: type)
						color: textColor.
					rectangle _ self prepareRectForNextRow: rectangle]].
	"tweak rectangle to display message"
	rectangle := rectangle top: (self bounds bottom - self class messageHeight).
	self drawMessageOn: aCanvas in: rectangle