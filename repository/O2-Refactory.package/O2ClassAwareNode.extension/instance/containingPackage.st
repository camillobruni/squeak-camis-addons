*o2-refactory
containingPackage
	^ PackageOrganizer default 
		packageOfClass: self theClass
		ifNone: [ super containingPackage ]