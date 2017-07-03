rendering
initializeLabel
	label := document createElement: 'label'.
	label innerHTML: item name.
	label
		addEventListener: #dblclick
		block: [ label style display: 'none'.
			checkbox style display: 'none'.
			editBox style display: 'block'.
			editBox focus.
			liElement className: 'editing' ]