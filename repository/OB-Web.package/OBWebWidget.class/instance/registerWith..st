initialize-release
registerWith: aHttpService
	aHttpService addResponder: self.
	children do: [:ea | ea registerWith: aHttpService]