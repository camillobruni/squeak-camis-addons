*Polymorph-Widgets-override
drawOn: aCanvas
	"Indicate unaccepted edits, conflicts etc."

	super drawOn: aCanvas. 
	self wantsFrameAdornments ifTrue: [
		self theme drawTextAdornmentsFor: self on: aCanvas]