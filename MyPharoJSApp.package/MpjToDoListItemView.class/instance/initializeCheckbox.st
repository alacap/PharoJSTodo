rendering
initializeCheckbox
	checkbox := document createElement: 'input'.
	checkbox type: 'checkbox'.
	checkbox className: 'toggle'.
	checkbox checked: item complete.
	checkbox addEventListener: #click block: [ 
		item complete 
			ifTrue:[
				item complete: false.] 
			ifFalse:[
				item complete: true.].
		parent refreshItemList].
	