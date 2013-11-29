#Template.serversDetails.helpers

Template.serversDetails.events

	'click button.save': (e, t) ->

		# Get the address data from the modal and try to create a new Address.
		update = 
			location: t.find('#inputLocation').value
			ram: t.find('#inputRam').value
			cpu:
				cores: t.find('#inputCpuCores').value
				speed: t.find('#inputCpuSpeed').value
				type: t.find('#inputCpuType').value

		Servers.update @_id, $set: update

		Router.go 'serversList'

	'click button.cancel': (e, t) ->

		Router.go 'serversList'

