flaps registry
defaultsQuadsDefiningToolsFlap
	"Answer a structure defining the default Tools flap.
	previously in quadsDefiningToolsFlap"

	^ OrderedCollection new
	addAll: #(
	(Browser 				prototypicalToolWindow		'Browser'			'A Browser is a tool that allows you to view all the code of all the classes in the system')
	(TranscriptStream		openMorphicTranscript				'Transcript'			'A Transcript is a window usable for logging and debugging; browse references to #Transcript for examples of how to write to it.')
	(Workspace			prototypicalToolWindow		'Workspace'			'A Workspace is a simple window for editing text.  You can later save the contents to a file if you desire.'));
		add: {   FileList .
				#prototypicalToolWindow.
				'File List'.
				'A File List is a tool for browsing folders and files on disks and FTP servers.' };
	addAll: #(
	(DualChangeSorter		prototypicalToolWindow		'Change Sorter'		'Shows two change sets side by side')
	(MessageNames		prototypicalToolWindow		'Message Names'		'A tool for finding, viewing, and editing all methods whose names contain a given character sequence.')
	(Utilities				recentSubmissionsWindow	'Recent'				'A message browser that tracks the most recently-submitted methods')
	(ProcessBrowser		prototypicalToolWindow		'Processes'			'A Process Browser shows you all the running processes')
	(Preferences			annotationEditingWindow	'Annotations'		'Allows you to specify the annotations to be shown in the annotation panes of browsers, etc.')
	(Scamper				newOpenableMorph			'Scamper'			'A web browser')
	(Celeste				newOpenableMorph			'Celeste'				'Celeste -- an EMail reader')
	(ChangeSorter			prototypicalToolWindow		'Change Set'			'A tool that allows you to view and manipulate all the code changes in a single change set'));
		yourself