just like textmorph
prepend: stringOrText
	"add to my text"
	| tm |

	(tm := self findA: TextMorph) ifNil: [^ nil].
	tm contents prepend: stringOrText.
	tm releaseParagraph; paragraph.


	