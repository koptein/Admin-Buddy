Template.serversItem.helpers
	serversLocation: (locationId) ->
		Locations.findOne(locationId).name


Template.serversItem.events

	'click button.change': (e, t) ->
		console.log "You'd like to change server \"#{@_id}\"!"

	'click button.delete': (e, t) ->
		console.log "You'd like to delete server \"#{@_id}\" from the database!"

