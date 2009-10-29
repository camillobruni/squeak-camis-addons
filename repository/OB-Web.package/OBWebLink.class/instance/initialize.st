initialize-release
initialize
	mutex _ Semaphore forMutualExclusion.
	self initializeQueue