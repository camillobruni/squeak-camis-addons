*Polymorph-Widgets
minHeight
	"Answer the minimum height."

	|noVPlease noHPlease minH|
	noVPlease := self valueOfProperty: #noVScrollBarPlease ifAbsent: [false]. 
	noHPlease := self valueOfProperty: #noHScrollBarPlease ifAbsent: [false]. 
	noVPlease
		ifTrue: [noHPlease
					ifTrue: [minH := 1]
					ifFalse:[minH := self scrollBarThickness]]
		ifFalse: [noHPlease
					ifTrue:[minH := self scrollBarThickness * 3]
					ifFalse: [minH := self scrollBarThickness * 4 + 2]].
	^minH max: super minHeight