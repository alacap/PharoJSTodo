accessing
initializeToggleAll
	toggleAll := document createElement: 'input'.
	toggleAll type: 'checkbox'.
	toggleAll className: 'toggle-all'.
	toggleAll
		addEventListener: #click
		block: [ toggleAll checked
				ifTrue: [ items do: [ :each | each complete: true ] ]
				ifFalse: [ items do: [ :each | each complete: false ] ].
			self refreshItemList ]