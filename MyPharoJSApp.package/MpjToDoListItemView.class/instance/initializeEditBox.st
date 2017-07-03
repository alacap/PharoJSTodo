rendering
initializeEditBox
	editBox := document createElement: 'input'.
	editBox style display: 'none'.	
	editBox className: 'edit'.
	editBox value: item name.
	editBox addEventListener: #blur block: [ self nameUpdated ].
	editBox
		addEventListener: #keyup
		block: [ :event | 
			event which = 13
				ifTrue: [ self nameUpdated ] ]