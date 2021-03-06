*Polymorph-Widgets
taskbarButtonEntered: aButton event: evt in: aMorph
	"The mouse has entered out taskbar button.
	Show a thumbnail."

	|thumb|
	Preferences worldTaskbarWindowPreview ifFalse: [^self].
	thumb := self valueOfProperty: #taskbarThumbnail.
	thumb
		ifNil: [thumb := self theme newTaskbarThumbnailIn: self for: self]
		ifNotNil: [^self].
	self setProperty: #taskbarThumbnail toValue: thumb.
	thumb bottomLeft: ((aButton left min: aButton owner right - thumb width)@ (aButton owner top - 4)).
	thumb openInWorld