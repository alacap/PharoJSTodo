accessing
initialize
	| jsonString |
	jsonString := localStorage getItem: 'todos'.
	(jsonString == nil or: [ jsonString = 'undefined' ])
		ifTrue: [ items := OrderedCollection new ]
		ifFalse: [ items := JSON parse: jsonString ].
	window
		addEventListener: #hashchange
		block: [ :event | 
			self setFilter: event newURL.
			self refreshItemList ].
	self initializeItemList.
	self initializeInputBox.
	self initializeFooter