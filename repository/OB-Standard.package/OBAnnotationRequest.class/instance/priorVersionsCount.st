requests
priorVersionsCount
	| versionsCount |

	versionsCount := VersionsBrowser versionCountForSelector: selector class: class.
	^ versionsCount > 1
			ifTrue:
				[versionsCount == 2
					ifTrue: ['1 prior version']
					ifFalse: [versionsCount printString, ' prior versions']]
			ifFalse:
				['no prior versions']