instance creation
readFromObsolete: aStream
	"Read one of those old and now obsolete events from the stream"
	| type x y buttons keyValue typeString c |
	typeString := String streamContents:
		[:s |   [(c := aStream next) isLetter] whileTrue: [s nextPut: c]].
	typeString = 'mouseMove'
		ifTrue: [type := #mouseMove  "fast treatment of common case"]
		ifFalse: [type := typeString asSymbol].

	x := Integer readFrom: aStream.
	aStream skip: 1.
	y := Integer readFrom: aStream.
	aStream skip: 1.

	buttons := Integer readFrom: aStream.
	aStream skip: 1.

	keyValue := Integer readFrom: aStream.

	typeString = 'mouseMove' ifTrue:[
		^MouseMoveEvent basicNew
			setType: #mouseMove 
			startPoint: x@y 
			endPoint: x@y 
			trail: #() 
			buttons: buttons 
			hand: nil 
			stamp: nil].
	(typeString = 'mouseDown') | (typeString = 'mouseUp') ifTrue:[
			^MouseButtonEvent basicNew
				setType: type
				position: x@y
				which: 0
				buttons: buttons
				hand: nil
				stamp: nil].
	(typeString = 'keystroke') | (typeString = 'keyDown') | (typeString = 'keyUp') ifTrue:[
		^KeyboardEvent basicNew
			setType: type
			buttons: buttons
			position: x@y
			keyValue: keyValue
			hand: nil
			stamp: nil].

	^nil