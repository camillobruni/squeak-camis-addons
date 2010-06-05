private events
processMenuEvent: evt
	| handler localCopyOfEvt |

	Smalltalk at: #HostSystemMenus ifPresent: [ :class |
		localCopyOfEvt := evt clone.
		handler := (class
			defaultMenuBarForWindowIndex: (localCopyOfEvt at: 8))
			getHandlerForMenu: (localCopyOfEvt at: 3) item: (localCopyOfEvt at: 4).
		[[handler handler value: localCopyOfEvt] ifError: [:err :rcvr | ]]
			forkAt: Processor activePriority ]