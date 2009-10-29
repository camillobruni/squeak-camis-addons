testing
fillAList
	| date |
	date := DateAndTime now.
	#(asdf asas asds asaf ascv 
	asaa asaaasdf asaf aser asqw 
	asty asui asop asas asdfghjkl 
	aszxcv asbnm asasdf asdf asqwerty 
	aspoi asuyt astre aswql ashjkl)
		doWithIndex: [:e :i |
			table addEntry: e date: date + i seconds.
			]