initializing
initialize
	super initialize.
	routes := OrderedCollection new.
	window
		addEventListener: #hashchange
		block: [ :event | self routeTo: event newURL ]