accessing
setFilter: aFilter
	filter := aFilter.
	filter = #all
		ifTrue: [ allFilter className: 'selected'.
			activeFilter className: ''.
			completedFilter className: '' ].
	filter = #active
		ifTrue: [ allFilter className: ''.
			activeFilter className: 'selected'.
			completedFilter className: '' ].
	filter = #completed
		ifTrue: [ allFilter className: ''.
			activeFilter className: ''.
			completedFilter className: 'selected' ]