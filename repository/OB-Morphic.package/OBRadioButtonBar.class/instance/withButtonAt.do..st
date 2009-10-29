updating
withButtonAt: index do: aBlock
	^ aBlock value: (buttons at: index ifAbsent: [^ self]) 