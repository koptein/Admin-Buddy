Template.serversList.helpers
	servers: ->
		Servers.find()
	serversCount: ->
		Servers.find().count()

