metaclass
setClassOrganizer
	"Install whatever organization is appropriate"
	| theClass |
	classOrganizer := nil.
	metaClassOrganizer := nil.
	classListIndex = 0 ifTrue: [^ self].
	theClass := self selectedClass ifNil: [ ^self ].
	classOrganizer := theClass organization.
	metaClassOrganizer := theClass classSide organization.