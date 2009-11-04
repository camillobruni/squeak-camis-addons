navigation
packageExtensionCategory
	^ Array with: (OR2PackageExtensionNode 
			on: '*Extensions'
			inEnvironment: self browserEnvironment)