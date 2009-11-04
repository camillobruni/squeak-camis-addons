configuration
defaultMetaNode
	| root extensionCategory packageCategory |
	root := O2MetaNode named: 'Environment'.
	extensionCategory := O2MetaNode named: 'ExtensionCategory'.
	packageCategory := O2MetaNode named: 'PackageCategory'.
	root childAt: #packageExtensionCategory put: extensionCategory.
	root childAt: #packageCategories put: packageCategory.
	self buildMetagraphOn: extensionCategory.
	extensionCategory ancestrySelector: #isDescendantOfClassCat:.
	self buildMetagraphOn: packageCategory.
	packageCategory ancestrySelector: #isDescendantOfClassCat:.
	^ root