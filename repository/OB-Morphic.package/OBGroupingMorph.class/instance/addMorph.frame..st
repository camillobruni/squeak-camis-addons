as yet unclassified
addMorph: aMorph frame: relFrame
	"Stole this from SystemWindow"
	
	| frame |
	frame := LayoutFrame new.
	frame 
		leftFraction: relFrame left; 
		rightFraction: relFrame right; 
		topFraction: relFrame top; 
		bottomFraction: relFrame bottom.
	self addMorph: aMorph fullFrame: frame.

