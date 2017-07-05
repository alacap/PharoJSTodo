initializing
initialize
	super initialize.
	root := MpjToDoListView new.
	self initializeRouting.
	self initializeFromStorage.