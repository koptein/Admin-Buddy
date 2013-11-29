Template.networksDetails.events

	'click button.save': (e, t) ->

		# Get the address data from the modal and try to create a new Address.
		update =
			name: t.find('#inputName').value
			net_id: t.find('#inputNetId').value
			gateway: t.find('#inputGateway').value

		Networks.update @_id, $set: update

		Router.go 'networksList'

	'click button.cancel': (e, t) ->

		Router.go 'networksList'

