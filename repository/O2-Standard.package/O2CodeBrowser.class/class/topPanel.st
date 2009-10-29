configuration
topPanel
	^ O2TopNavigationPanel withPanels: ({  (self mercuryPanel). (self optionalButtonPanel)  } reject: [ :ea | ea isNil ])