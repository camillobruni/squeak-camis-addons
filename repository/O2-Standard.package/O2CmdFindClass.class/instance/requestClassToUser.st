private
requestClassToUser
	| pattern |
	pattern := O2TextRequest 
		prompt: 'Please type the name or fragment to look for'
		template: ''.
	pattern ifNil: [ ^ nil ].
	^ self 
		findClassIn: target environment
		pattern: pattern