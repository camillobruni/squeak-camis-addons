navigation
metaclassProtocols
	^ self browserEnvironment allMetaClasses gather: [ :class | class asO2ClassSideNode categories ]