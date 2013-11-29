Template.serversItem.helpers
	serversLocation: (locationId) ->
		Locations.findOne(locationId).name


Template.serversItem.events

	'click button.change': (e, t) ->
		Router.go 'serversDetails', _id: @_id

	'click button.delete': (e, t) ->
		if confirm "You'd reallylike to delete server \"#{@_id}\"?"
			Servers.remove @_id
		else
			console.log "Deletion of \"#{@_id}\" canceled."

