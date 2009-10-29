as yet unclassified
initializeWithPackages
	| pkgs |
	pkgs := FillInTheBlank request: '		Thanks for installing OCompletion!
	
  OCompletion will be available in new browsers and workspaces you open.
	
  In order to be more accurate, OCompletion needs to know what you are working on. 
  If the packages you use or work on are already installed in the image, you can 
  specify them below, as a space-separated list of packages.
'
					initialAnswer: 'Kernel* Collection*'.
	pkgs ifNotNil: [
	(pkgs findTokens: ' ' ) do: [:e | self default quickFillWithCategoriesMatching: e ]]