initializing
initializeRouting
	router
		addRoute: '/'
		block: [ root setFilter: #all.
			root refreshItemList ].
	router
		addRoute: '!/'
		block: [ root setFilter: #all.
			root refreshItemList ].
	router
		addRoute: '/completed'
		block: [ root setFilter: #completed.
			root refreshItemList ].
	router
		addRoute: '/active'
		block: [ root setFilter: #active.
			root refreshItemList ]