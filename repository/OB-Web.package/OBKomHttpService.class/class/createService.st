as yet unclassified
createService
	"Cribbed from Seaside" 

	Smalltalk 
		at: #HttpService 
		ifPresent: [:hs | ^ (hs on: port named: 'OmniBrowser') plug: self new].
		
	Smalltalk 
		at: #ComancheNetService 
		ifPresent: [:cns | ^ (cns named: 'OmniBrowser' onPort: port) module: self new].
		
	self error: 'Comanche is not installed.'