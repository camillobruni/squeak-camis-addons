selecting
autoSelection
	^fan children detect: [:ea | ea metaNode == metaNode] ifNone: [nil]