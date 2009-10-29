private-type-guessing
guessTypeOf: aNumber 
	| range |
	self configureSelectorsOnly.
	recurseCount > 10 ifTrue: [ ^ nil ].
	recurseCount := recurseCount + 1.
	range := ranges at: aNumber.
	^ range isSelf 
		ifTrue: [ theClass ]
		ifFalse: 
			[ range isSuper 
				ifTrue: [ theClass superclass ]
				ifFalse: 
					[ range isConstant 
						ifTrue: [ range asType ]
						ifFalse: 
							[ range isArgument 
								ifTrue: [ self guessArgument: range ]
								ifFalse: 
									[ range isTemporaryVariable 
										ifTrue: [ self guessTempVarClass: range ]
										ifFalse: 
											[ range isInstanceVariable 
												ifTrue: [ self guessInstVarClass: range ]
												ifFalse: 
													[ range isClassVariable 
														ifTrue: [ self guessClassVarClass: range ]
														ifFalse: [ range isGlobal ifTrue: [ self guessGlobal: aNumber ] ] ] ] ] ] ] ]