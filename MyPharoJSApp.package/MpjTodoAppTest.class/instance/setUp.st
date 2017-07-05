testing
setUp
	super setUp.
	app := self currentApp.
	todoInput := app root inputBox.
	items := app root items.
	toggleAllBtn := app root toggleAll.
	clearCompletedBtn := app root clearCompleteButton.
	toggleAllBtn click.
	clearCompletedBtn click.