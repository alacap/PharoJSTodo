rendering
initializeLiElement

	liElement := document createElement: 'li'.
	item complete ifTrue: [ 
		liElement className: 'completed'
	 ].
	liElement appendChild: checkbox.
	liElement appendChild: label.
	liElement appendChild: editBox.
	liElement appendChild: destroyBtn.
	