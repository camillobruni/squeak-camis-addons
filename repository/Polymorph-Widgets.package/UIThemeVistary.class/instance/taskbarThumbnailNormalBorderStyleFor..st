border-styles
taskbarThumbnailNormalBorderStyleFor: aWindow
	"Return the normal thumbnail borderStyle for the given button."

	|pc oc mc ic|
	pc := self windowColorFor: aWindow.
	oc := (pc alphaMixed: 0.4 with: Color white) alpha: 0.4.
	mc := pc alphaMixed: 0.7 with: Color black.
	ic := Color white alpha: 0.3. 
	^(CompositeBorder new width: 2)
		borders: {RoundedBorder new
					cornerRadius: 2;
					width: 1;
					baseColor: oc.
				RoundedBorder new
					cornerRadius: 1;
					width: 1;
					baseColor: mc.
				BorderStyle simple
					width: 1;
					baseColor: ic}