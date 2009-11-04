*ob-refactory
containingPackage
	^ PackageOrganizer default 
		packageOfClass: self theClass
		ifNone: [ super containingPackage ]