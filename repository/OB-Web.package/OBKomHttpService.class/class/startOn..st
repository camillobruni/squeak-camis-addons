as yet unclassified
startOn: aPort
	self stop.
	port _ aPort.
	service _ self createService.
	service start.
	^ service