as yet unclassified
enabledString
	"Answer the string to be shown in a menu to represent the 
	'enabled' status"
	
	^ (self enabled
		ifTrue: ['<on>']
		ifFalse: ['<off>']), 'enabled' translated