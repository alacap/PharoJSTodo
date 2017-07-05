initializing
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