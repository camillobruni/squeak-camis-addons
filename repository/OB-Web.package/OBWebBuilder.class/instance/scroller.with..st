building
scroller: aColumnPanel with: aBlock 
	^self current: (OBWebScroller model: aColumnPanel) do: aBlock