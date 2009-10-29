navigating
versions
	^ (O2MethodVersion 
		scan: self sourceFiles
		from: self sourcePointer) collect: [ :ea | O2MethodVersionNode on: ea ]