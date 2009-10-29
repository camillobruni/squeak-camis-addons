execution
execute
	| tmpPackages packageNames packages lines typeLabel answer |
	typeLabel := 'type...'.
	tmpPackages := (PackageOrganizer default packages reject: [ :pkg | pkg = target theNonMetaClass package ]) asSortedCollection: [ :a :b | a packageName <= b packageName ].
	lines := #().
	target isClassNode 
		ifTrue: 
			[ lines := #(1 ).
			packages := OrderedCollection new.
			packageNames := OrderedCollection new.
			packages add: typeLabel.
			packageNames add: typeLabel.
			tmpPackages do: 
				[ :pkg | 
				packages add: pkg.
				packageNames add: pkg packageName.
				pkg systemCategories ifNotEmptyDo: 
					[ :cats | 
					cats allButFirst do: 
						[ :cat | 
						packages add: cat.
						packageNames add: '   ' , cat ] ] ] ]
		ifFalse: 
			[ packages := tmpPackages.
			packageNames := tmpPackages collect: [ :ea | ea packageName ] ].
	answer := O2ChoiceRequest 
		prompt: nil
		labels: packageNames
		values: packages
		lines: lines.
	answer ifNotNil: 
		[ target isClassNode 
			ifTrue: 
				[ answer = typeLabel ifTrue: 
					[ answer := self requestPackageToUser , (packageNames anySatisfy: [ :pkgName | pkgName withoutLeadingBlanks = answer ]) ifFalse: 
						[ self inform: 'This package or class category does not exist!'.
						^ self ] ].
				target theNonMetaClass category: (answer isString 
						ifFalse: [ answer packageName ]
						ifTrue: [ answer ]) ]
			ifFalse: [ answer addMethod: target reference ] ]