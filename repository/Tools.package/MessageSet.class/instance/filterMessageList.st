filtering
filterMessageList
	"Allow the user to refine the list of messages."

	| aMenu evt |
	messageList size <= 1 ifTrue: [^ self inform: 'this is not a propitious filtering situation'].

	"would like to get the evt coming in but thwarted by the setInvokingView: circumlocution"
	evt := self currentWorld activeHand lastEvent.
	aMenu := MenuMorph new defaultTarget: self.
	aMenu addTitle: 'Filter by only showing...'.
	aMenu addStayUpItem.

	aMenu addList: #(
		('unsent messages'						filterToUnsentMessages		'filter to show only messages that have no senders')
		-
		('messages that send...'					filterToSendersOf			'filter to show only messages that send a selector I specify')
		('messages that do not send...'			filterToNotSendersOf		'filter to show only messages that do not send a selector I specify')
		-
		('messages whose selector is...'			filterToImplementorsOf		'filter to show only messages with a given selector I specify')
		('messages whose selector is NOT...'		filterToNotImplementorsOf	'filter to show only messages whose selector is NOT a seletor I specify')
		-
		('messages in current change set'		filterToCurrentChangeSet	'filter to show only messages that are in the current change set')
		('messages not in current change set'	filterToNotCurrentChangeSet	'filter to show only messages that are not in the current change set')
		-
		('messages in any change set'			filterToAnyChangeSet		'filter to show only messages that occur in at least one change set')
		('messages not in any change set'		filterToNotAnyChangeSet		'filter to show only messages that do not occur in any change set in the system')
		-
		('messages authored by me'				filterToCurrentAuthor		'filter to show only messages whose authoring stamp has my initials')
		('messages not authored by me'			filterToNotCurrentAuthor	'filter to show only messages whose authoring stamp does not have my initials')
		-
		('messages logged in .changes file'		filterToMessagesInChangesFile	'filter to show only messages whose latest source code is logged in the .changes file')
		('messages only in .sources file'			filterToMessagesInSourcesFile	'filter to show only messages whose latest source code is logged in the .sources file')
		-
		('messages with prior versions'			filterToMessagesWithPriorVersions	'filter to show only messages that have at least one prior version')
		('messages without prior versions'		filterToMessagesWithoutPriorVersions	'filter to show only messages that have no prior versions')
		-
		('uncommented messages' filterToUncommentedMethods 'filter to show only messages that do not have comments at the beginning')
		('commented messages' filterToCommentedMethods 'fileter to show only messages that have comments at the beginning')
		-
		('messages that...'						filterToMessagesThat			'let me type in a block taking a class and a selector, which will specify yea or nay concerning which elements should remain in the list')
			).

	aMenu popUpEvent: evt hand lastEvent in: evt hand world.