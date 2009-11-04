navigation
metaclassProtocols
	^ self browserEnvironment allMetaClasses gather: [ :class | class asClassSideNode categories ]