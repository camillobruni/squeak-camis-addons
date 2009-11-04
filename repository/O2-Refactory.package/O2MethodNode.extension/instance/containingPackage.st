*o2-refactory
containingPackage
	^ PackageOrganizer default
		packageOfMethod: self reference
		ifNone: [ super containingPackage ]