accessing
renderOnDocument
	| canvas header |
	self initializeItemList.
	self initializeToggleAll.
	self initializeInputBox.
	self setFilter: #all.
	header := document getElementById: #header.
	canvas := document getElementById: #mainSection.
	header appendChild: inputBox.
	canvas appendChild: toggleAll.
	canvas appendChild: itemList.
	self refreshItemList