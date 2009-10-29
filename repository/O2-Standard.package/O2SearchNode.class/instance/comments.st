navigation
comments
	^ self classes collect: [ :ea | ea theClass asO2CommentNode ]