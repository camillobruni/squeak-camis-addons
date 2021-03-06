*Polymorph-Widgets
pixelWord32
	"Returns an integer representing the bits that appear in a single pixel of this color in a Form of depth 32.
	Transparency: The pixel value zero is reserved for transparent. For depths greater than 8, black maps to the darkest possible blue.
	Just a little quicker if we are dealing with RGBA colors at 32 bit depth."

	| val |
	val := super pixelWord32.
	val at: 4 put: alpha.
	^val
