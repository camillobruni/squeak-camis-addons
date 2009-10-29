callbacks
accept: aText notifying: aController 
	^ self 
		withDefinitionDo: 
			[ :def | 
			
			[ def 
				accept: aText
				notifying: aController ] 
				on: O2AnnouncerRequest
				do: [ :notification | notification resume: self announcer ] ]
		ifNil: [ true ]