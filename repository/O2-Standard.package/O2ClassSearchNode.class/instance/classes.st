navigation
classes
	^ ((Smalltalk classNames , Smalltalk traitNames select: [ :ea | self classSatisfiesQuery: ea ]) collect: [ :ea | O2ClassNode on: (Smalltalk classNamed: ea) ]) asArray