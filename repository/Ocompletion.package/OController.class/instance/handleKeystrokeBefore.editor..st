as yet unclassified
handleKeystrokeBefore: kbEvent editor: edit 
	"I return a boolean. true when I have handled the event and no futher processing is needed by the caller."
	| keyValue ctrl cmd down tab colon alphanum del esc enter |
	editor := edit.
	self setModel: editor model.
	keyValue := kbEvent keyValue.
	ctrl := kbEvent controlKeyPressed.
	cmd := kbEvent commandKeyPressed.
	down := keyValue = 31.
	tab := kbEvent keyCharacter = Character tab.
	enter := kbEvent keyCharacter = Character cr.
	colon := kbEvent keyCharacter = $:.
	alphanum := kbEvent keyCharacter isAlphaNumeric.
	del := keyValue = 8.
	esc := keyValue = 27.
	
	
	self expanded ifTrue: [ ^ super handleKeystrokeBefore: kbEvent editor: edit ].
	
	esc ifTrue: [self isMenuOpen ifTrue: [self retract; closeMenu. ^ true]].
	
	((tab | enter) and: [editor wordAtCaret notEmpty]) ifTrue: [
		(context notNil and: [context model notEmpty] and: [menuMorph selected > 0]) 
				ifTrue: [menuMorph insertSelected ifTrue: [ ^ true ] ]
				ifFalse: [enter ifFalse: [self openXMenuFor: edit. ^true]]].		
	
	self isMenuOpen & (colon | alphanum| down | tab | del) not ifTrue: [self retract; closeMenu.].
	
	
	del	ifTrue: [editor isCaretBehindChar not
				ifTrue: [self closeMenu].
			^ false].
		
	
		
	(ctrl not & cmd not & alphanum) 
		ifTrue: [ 
			edit selection ifNotEmpty: [edit replaceSelectionWith: ''].
			self isMenuOpen ifFalse: [ self openMenuFor: editor ].
			edit text ifNotNil: [ menuMorph changed ]. ^false]
		ifFalse: [
			(self smartCharInput: keyValue) ifNotNil: [^ true]].
		
	down & self isMenuOpen ifTrue: [
			self openXMenuFor: edit.
			menuMorph moveDown.
			^ true ].
	
	^ super handleKeystrokeBefore: kbEvent editor: edit 
	"^ false"