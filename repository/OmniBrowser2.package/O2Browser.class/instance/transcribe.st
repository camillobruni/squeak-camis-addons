updating
transcribe
	self announcer 
		observe: O2Announcement
		do: 
			[ :ann | 
			Transcript
				cr;
				show: ann ]