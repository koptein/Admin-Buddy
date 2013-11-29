Template.networksAdd.events

	'click button.save': (e, t) ->

		# Get the address data from the modal and try to create a new Address.
		insert =
			name: t.find('#inputName').value
			gateway: t.find('#inputGateway').value
			net_id: t.find('#inputNetId').value

		Networks.insert insert

		Router.go 'networksList'

	'click button.cancel': (e, t) ->

		Router.go 'networksList'

