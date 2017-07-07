initializing
initialize
	super initialize.
	router := MpjRouter new.
	root := MpjToDoListView new.
	self initializeRouting.
	self initializeFromStorage