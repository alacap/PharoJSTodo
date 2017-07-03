rendering
nameUpdated
	item name: editBox value.
	label innerHTML: item name.
	label style display: 'block'.
	editBox style display: 'none'.
	checkbox style display: 'block'.
	
	item complete
		ifTrue: [ liElement className: 'completed' ]
		ifFalse: [ liElement className: '']