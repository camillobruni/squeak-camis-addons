navigating
metaclasses
	^ self classNames collect: [ :ea | (environment at: ea) asO2ClassSideNode ]