Template.serversList.helpers
	servers: ->
		Servers.find()
	serversCount: ->
		Servers.find().count()

Template.serversList.events
	'click button.add': ->
		Router.go 'serversAdd'

