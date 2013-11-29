Template.serversDetails.helpers
	'serversLocation': (locationId) ->
		Locations.findOne(locationId).name

Template.serversDetails.events

	'click button.save': (e, t) ->

		# Get the address data from the modal and try to create a new Address.
		update =
			fqdn: t.find('#inputFqdn').value
			location: Locations.findOne('name': t.find('#inputLocation').value)
			ram: t.find('#inputRam').value
			cpu:
				cores: t.find('#inputCpuCores').value
				speed: t.find('#inputCpuSpeed').value
				type: t.find('#inputCpuType').value
			tags:
				t.find('.tag').value
		Servers.update @_id, $set: update

		Router.go 'serversList'

	'click button.cancel': (e, t) ->
		Router.go 'serversList'

	'click i.icon-remove': (e,t) ->
		t.data.tags = _.without(t.data.tags, _.findWhere(t.data.tags, @))
		Servers.update t.data._id, $set: 'tags': t.data.tags
	'keypress input.addTag': (e,t) ->
		if e.charCode == 13
			if (typeof t.data.tags) == 'undefined'
				t.data.tags = []
			t.data.tags.push(t.find('#addTag').value)
			Servers.update t.data._id, $set: 'tags': t.data.tags

