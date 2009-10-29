as yet unclassified
contents
	^ '<html>
<head>
	<title>launcher</title>
	<script src="/library/link.js"></script>
	<script src="/library/launcher.js"></script>
</head>
<body onload="initialize()">
	<div id="id1">
		<a href="javascript:launcher.openBrowser()">open browser</a>
	</div>
	<script>
		function initialize()
		{
			link = new Link(window.location);
			launcher = new Launcher("id1");
		}
	</script>
</body>
</html>
'