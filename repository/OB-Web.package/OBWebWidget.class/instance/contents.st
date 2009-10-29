html
contents
	^ String streamContents: [:s | self htmlOn: s]