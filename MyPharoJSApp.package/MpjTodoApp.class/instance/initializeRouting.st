initializing
initializeRouting
		window
		addEventListener: #hashchange
		block: [ :event | 
			root setFilter: event newURL.
			root refreshItemList ].