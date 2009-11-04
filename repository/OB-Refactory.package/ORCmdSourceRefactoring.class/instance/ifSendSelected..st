testing-private
ifSendSelected: aBlock
	^ self ifNodeSelected: [ :node | node isMessage and: [ aBlock value: node ] ]