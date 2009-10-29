*o2-morphic
shoutAboutToStyle: aPluggableShoutMorph
	^browser currentNode ifNotNilDo: [:node | node shouldBeStyledBy: aPluggableShoutMorph] ifNil: [false]
