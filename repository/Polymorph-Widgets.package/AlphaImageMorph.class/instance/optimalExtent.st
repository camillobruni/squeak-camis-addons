geometry
optimalExtent
	"Answer the optimal extent for the receiver."
	
	^self image extent * self scale + (self borderWidth * 2)