building
window: aBrowser with: aBlock 
	^self current: (OBWebWindow model: aBrowser) do: aBlock