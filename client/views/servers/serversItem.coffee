Template.serversItem.helpers
	serversLocation: (locationId) ->
		Locations.findOne(locationId).name

