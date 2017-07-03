rendering
widgetOn: aDocument

	| liElement label editBox nameUpdatedBlock destroyBtn|
	liElement := aDocument createElement: 'li'.
	label := aDocument createElement: 'label'.
	label innerHTML: item name.
	destroyBtn := aDocument createElement: 'button'.
	destroyBtn className: 'destroy'.
	editBox := aDocument createElement: 'input'.
	editBox style display: 'none'.
	editBox value: item name.
	label addEventListener: #dblclick block: [ 
		label style display: 'none'.
		editBox style display: 'block'].
	nameUpdatedBlock := [ 
		item name: editBox value.
		label innerHTML: 'TODO: ', item name.
		label style display: 'block'.
		editBox style display: 'none' ].
	editBox addEventListener: #blur block: nameUpdatedBlock.
	editBox addEventListener: #keyup block: [ :event |
		event which = 13 ifTrue: nameUpdatedBlock ].
	liElement appendChild: label.
	liElement appendChild: editBox.
	liElement appendChild: destroyBtn.
	^liElement 
	