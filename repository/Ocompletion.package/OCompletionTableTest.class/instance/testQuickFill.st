testing
testQuickFill
	table quickFillWithClass: Morph.
	table quickFillWithClass: Object.
	self assert: table totalNumberOfEntries > 1000.
	table reset.
	table quickFillWithCategoryOf: Morph.
	table quickFillWithCategoryOf: Object.
	table quickFillWithCategoryOf: CompiledMethod.
	table quickFillWithCategoryOf: Float.
	table quickFillWithCategoryOf: Array.
	table quickFillWithCategoryOf: Browser.
	self assert: table totalNumberOfEntries > 2000