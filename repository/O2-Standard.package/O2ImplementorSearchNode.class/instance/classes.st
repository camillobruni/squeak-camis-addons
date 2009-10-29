as yet unclassified
classes
	^ (SystemNavigation default allClassesImplementing: query) collect: [ :ea | O2ClassNode on: ea ]