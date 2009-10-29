instance creation
from: aString 
	| rawQuery |
	rawQuery := aString asString withBlanksTrimmed.
	rawQuery first = $' ifTrue: [ ^ O2MStringQuery new setRawQuery: rawQuery ].
	^ (self selectClassForQuery: rawQuery) new setRawQuery: rawQuery