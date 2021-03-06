flaps
deleteGlobalFlapArtifacts
	"Delete all flap-related detritus from the world"

	| localFlaps |
	localFlaps := self localFlapTabs collect: [:m | m referent].
	self submorphs do:
		[:m | 
			((m isFlapTab) and: [m isGlobalFlap]) ifTrue: [m delete].
			m isFlap ifTrue:[(localFlaps includes: m) ifFalse: [m delete]]]

"ActiveWorld deleteGlobalFlapArtifacts"

