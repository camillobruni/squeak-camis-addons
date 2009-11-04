private
handleError: aBlock 
	^ aBlock
		on: Refactoring preconditionSignal
		do: [ :ex | 
			ex isResumable 
				ifTrue: [
					(self confirm: (ex messageText last = $?
						ifTrue: [ ex messageText ]
						ifFalse: [ ex messageText , '\Do you want to proceed?' withCRs ])) 
							ifTrue: [ ex resume ] ]
				ifFalse: [
					ex parameter notNil 
						ifTrue: [ (self confirm: ex messageText) 
							ifTrue: [ ex parameter value ] ]
						ifFalse: [ self inform: ex messageText ] ].
			ex return: nil ]