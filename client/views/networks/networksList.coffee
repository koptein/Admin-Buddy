Template.networksList.helpers
	networks: ->
		Networks.find()
	networksCount: ->
		Networks.find().count()

