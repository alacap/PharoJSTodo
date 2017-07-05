testing
testAddItems
	#('Go to work' 'Do some work' 'Go home')
		do: [ :todo | 
			self changeElement: todoInput value: todo.
			self dispatchEvent: #blur to: todoInput ].

	self assert: items size == 3
