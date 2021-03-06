private
becomeCompactSimplyAt: index
	"Make me compact, but don't update the instances.  For importing segments."
"Here are the restrictions on compact classes in order for export segments to work:  A compact class index may not be reused.  If a class was compact in a release of Squeak, no other class may use that index.  The class might not be compact later, and there should be nil in its place in the array."
	| cct |

	self isWeak ifTrue:[^ self halt: 'You must not make a weak class compact'].
	cct := self environment compactClassesArray.
	(self indexIfCompact > 0 or: [cct includes: self])
		ifTrue: [^ self halt: self name , 'is already compact'].
	(cct at: index) ifNotNil: [^ self halt: 'compact table slot already in use'].
	"Install this class in the compact class table"
	cct at: index put: self.
	"Update instspec so future instances will be compact"
	format := format + (index bitShift: 11).
	"Caller must convert the instances"
