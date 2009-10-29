html
htmlOn: aStream
	aStream nextPutAll: '<html><head><title>browser</title><script src="/library/link.js"></script><script src="/library/widgets.js"></script><script src="/library/text.js"></script><link rel="stylesheet" href="/library/browser.css" type="text/css" /></head><body onload="onLoad()">'.
		self htmlTagOn: aStream.
	aStream nextPutAll: '<script>function onLoad() {'.
	self jsInitializeOn: aStream.
	aStream
		nextPutAll: '}</script>';
		nextPutAll: '</body></html>'
