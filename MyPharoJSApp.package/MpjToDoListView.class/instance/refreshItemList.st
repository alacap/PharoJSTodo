accessing
refreshItemList
	itemList innerHTML: ''.
	items
		do: [ :item | 
			filter = #all
				ifTrue: [ itemList appendChild: (MpjToDoListItemView on: item in: self) renderOnDocument ]
				ifFalse: [ 
					(filter = #active and: [ item complete not ])
						ifTrue: [ itemList appendChild: (MpjToDoListItemView on: item in: self) renderOnDocument ].
					(filter = #completed and: [ item complete ])
						ifTrue: [ itemList appendChild: (MpjToDoListItemView on: item in: self) renderOnDocument ] ] ].
	localStorage setItem: 'todos' to: (JSON stringify: items).
	self resetToDoCount