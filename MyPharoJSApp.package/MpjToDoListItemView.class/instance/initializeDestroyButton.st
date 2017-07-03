rendering
initializeDestroyButton
	destroyBtn := document createElement: 'button'.
	destroyBtn className: 'destroy'.
	destroyBtn addEventListener: #click block:[
		parent items remove: item.
		parent refreshItemList.
	].
	