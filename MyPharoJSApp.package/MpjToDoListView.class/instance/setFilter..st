accessing
setFilter: myLoc
	| myHash index |
	index := myLoc indexOf: $#.
	(index > 0 and: [ index + 3 < myLoc size ])
		ifTrue: [ myHash := myLoc copyFrom: index + 2 to: myLoc size ]
		ifFalse: [ myHash := 'all' ].
	filter := myHash asSymbol.
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