accessing
initializeFooter
	footer := document getElementById: #footer.
	todoCount := document getElementById: #todoCount.
	clearCompleteButton := document getElementById: #clearCompleted.
	clearCompleteButton
		addEventListener: #click
		block: [ | incompleteItems |
			incompleteItems := OrderedCollection new.
			items
				do: [ :item | 
					item complete
						ifFalse: [ incompleteItems add: item ] ].
			items := incompleteItems.
			self refreshItemList ].
	allFilter := document getElementById: #allFilter.
	activeFilter := document getElementById: #activeFilter.
	completedFilter := document getElementById: #completedFilter
	"allFilter addEventListener: #click block: [ 
		filter := #all.
		allFilter className: 'selected'.
		activeFilter className: ''.
		completedFilter className: ''. 
		self refreshItemList ].
	activeFilter addEventListener: #click block: [ 
		filter := #active.
		allFilter className: ''.
		activeFilter className: 'selected'.
		completedFilter className: ''. 
		self refreshItemList ].
	completedFilter addEventListener: #click block: [ 
		filter := #completed.
		allFilter className: ''.
		activeFilter className: ''.
		completedFilter className: 'selected'. 
		self refreshItemList ]."