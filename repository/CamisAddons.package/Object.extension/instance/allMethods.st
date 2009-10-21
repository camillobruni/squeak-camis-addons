*CamisAddons
allMethods
	| methods class |
	methods := OrderedCollection newFrom: self methods.
	class := self superclass.
	[class = Object] whileFalse: [
		methods addAll: class methodDict keys.
		class := class superclass.
	].
	^ methods.