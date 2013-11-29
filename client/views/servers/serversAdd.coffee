#Template.serversAdd.helpers

Template.serversAdd.events

	'click button.save': (e, t) ->

		# Get the address data from the modal and try to create a new Address.
		insert =
			location: Locations.findOne('name': "Home")._id
			ram: t.find('#inputRam').value
			fqdn: t.find('#inputFqdn').value
			cpu:
				cores: t.find('#inputCpuCores').value
				speed: t.find('#inputCpuSpeed').value
				type: t.find('#inputCpuType').value
			hdd: [
				t.find('#inputHdd').value
			]

		Servers.insert insert

		Router.go 'serversList'

	'click button.cancel': (e, t) ->

		Router.go 'serversList'

