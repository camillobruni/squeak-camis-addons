initialize-release
initializeQueue
	queue _ SortedCollection sortBlock: [:a :b | b priority <= a priority]