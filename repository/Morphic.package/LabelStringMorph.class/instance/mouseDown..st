event handling
mouseDown: evt
	
	(evt shiftPressed) ifTrue: 
	 	[mySystemWindow relabel]