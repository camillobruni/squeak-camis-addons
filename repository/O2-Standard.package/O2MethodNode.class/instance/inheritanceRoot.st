private
inheritanceRoot
	| rootClass |
	rootClass := (self theClass withAllSuperclasses asArray select: [ :ea | ea includesSelector: self selector ]) last.
	^ O2CollectionNode on: {  (O2MethodNode  on: self selector inClass: rootClass)  }