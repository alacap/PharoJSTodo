accessing
initializeInputBox
	inputBox := document createElement: 'input'.
	inputBox className: 'new-todo'.	
	inputBox placeholder: 'What needs to be done?'.	
	inputBox addEventListener: #change block: [ 
		| item |
		item := MpjToDoListItem new.
		item name: inputBox value.
		inputBox value: ''.
		items add: item.
		self refreshItemList].