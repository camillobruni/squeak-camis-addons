navigating
comments
	^ self classNames collect: [ :ea | (environment at: ea) asO2CommentNode ]