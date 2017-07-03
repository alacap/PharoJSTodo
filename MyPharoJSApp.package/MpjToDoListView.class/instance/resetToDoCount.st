accessing
resetToDoCount
	| count |
	"count := items inject: 0 into: [ :sum :item | item complete ifTrue: [sum] ifFalse: [ sum + 1 ] ]."
	count := 0.
	items
		do: [ :item | 
			item complete
				ifFalse: [ count := count + 1 ] ].
	items size == 0
		ifTrue: [ footer style display: 'none' ]
		ifFalse: [ footer style display: 'block' ].
	count == 1
		ifTrue: [ todoCount innerHTML: count printString , ' item left' ]
		ifFalse: [ todoCount innerHTML: count printString , ' items left' ].
	count < items size
		ifTrue: [ clearCompleteButton style display: 'block' ]
		ifFalse: [ clearCompleteButton style display: 'none' ]