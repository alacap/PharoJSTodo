initializing
initializeFromStorage
	| jsonString |
	jsonString := localStorage getItem: 'todos'.
	((jsonString isNil or: [ jsonString = 'undefined' ])
		or: [ jsonString = 'null' ])
		ifTrue: [ root items: OrderedCollection new ]
		ifFalse: [ root items: (JSON parse: jsonString) ]