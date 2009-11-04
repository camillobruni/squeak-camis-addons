configuration
defaultMetaNode
	| root extensionCategory packageCategory |
	root := OBMetaNode named: 'Environment'.
	extensionCategory := OBMetaNode named: 'ExtensionCategory'.
	packageCategory := OBMetaNode named: 'PackageCategory'.
	root childAt: #packageExtensionCategory put: extensionCategory.
	root childAt: #packageCategories put: packageCategory.
	self buildMetagraphOn: extensionCategory.
	extensionCategory ancestrySelector: #isDescendantOfClassCat:.
	self buildMetagraphOn: packageCategory.
	packageCategory ancestrySelector: #isDescendantOfClassCat:.
	^ root