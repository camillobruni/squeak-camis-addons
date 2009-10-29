compiling
convertToChoice: exception 
	exception openMenuIn: 
		[ :labels :lines :caption | 
		O2ChoiceRequest 
			prompt: caption
			labels: labels
			values: (1 to: labels size)
			lines: lines ]