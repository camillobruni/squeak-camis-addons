submorphs-accessing
allMorphs
	"Return a collection containing all morphs in this composite morph (including the receiver)."

	| all |
	all := OrderedCollection new: 100.
	self allMorphsDo: [:m | all add: m].
	^ all