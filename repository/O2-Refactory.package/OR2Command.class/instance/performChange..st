private
performChange: aChange
	self waitWhile: [
		RefactoryChangeManager instance
			performChange: aChange ]