*o2-refactory
containingPackage
	^ PackageOrganizer default packages
		detect: [ :each | each includesSystemCategory: self name ]
		ifNone: [ super containingPackage ]