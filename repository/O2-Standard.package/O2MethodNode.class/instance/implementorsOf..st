private
implementorsOf: aSelector 
	^ (SystemNavigation default allImplementorsOf: aSelector) asSortedArray collect: [ :ref | O2MethodNode on: ref ]