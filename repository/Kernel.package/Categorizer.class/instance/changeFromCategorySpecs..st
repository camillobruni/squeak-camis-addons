accessing
changeFromCategorySpecs: categorySpecs 
	"Tokens is an array of categorySpecs as scanned from a browser 'reorganize' pane, or built up by some other process, such as a scan of an environment."

	| oldElements newElements newCategories newStops currentStop temp ii cc catSpec |
	oldElements := elementArray asSet.
	newCategories := Array new: categorySpecs size.
	newStops := Array new: categorySpecs size.
	currentStop := 0.
	newElements := (Array new: 16) writeStream.
	1 to: categorySpecs size do: 
		[:i | | selectors |
		catSpec := categorySpecs at: i.
		newCategories at: i put: catSpec first asSymbol.
		selectors := catSpec allButFirst collect: [:each | each isSymbol
							ifTrue: [each]
							ifFalse: [each printString asSymbol]].
		selectors asSortedCollection do:
			[:elem |
			(oldElements remove: elem ifAbsent: [nil]) notNil ifTrue:
				[newElements nextPut: elem.
				currentStop := currentStop+1]].
		newStops at: i put: currentStop].

	"Ignore extra elements but don't lose any existing elements!"
	oldElements := oldElements collect:
		[:elem | Array with: (self categoryOfElement: elem) with: elem].
	newElements := newElements contents.
	categoryArray := newCategories.
	(cc := categoryArray asSet) size = categoryArray size ifFalse: ["has duplicate element"
		temp := categoryArray asOrderedCollection.
		temp removeAll: categoryArray asSet asOrderedCollection.
		temp do: [:dup | 
			| tmp |
			tmp := dup.
			ii := categoryArray indexOf: tmp.
			[tmp := (tmp,' #2') asSymbol.  cc includes: tmp] whileTrue.
			cc add: tmp.
			categoryArray at: ii put: tmp]].
	categoryStops := newStops.
	elementArray := newElements.
	oldElements do: [:pair | self classify: pair last under: pair first].