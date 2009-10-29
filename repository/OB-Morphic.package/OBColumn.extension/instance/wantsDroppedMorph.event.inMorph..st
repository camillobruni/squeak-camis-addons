*ob-morphic
wantsDroppedMorph: transferMorph event: evt inMorph: listMorph 
	| node passenger |
	(transferMorph isKindOf: TransferMorph) ifFalse: [^false].
	node := self nodeForDropEvent: evt inMorph: listMorph.
	transferMorph dragTransferType == self dragTransferType ifFalse: [^false].
	passenger := transferMorph passenger. 
	^self canDrop: passenger on: node