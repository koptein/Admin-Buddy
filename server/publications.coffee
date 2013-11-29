Meteor.publish 'locations', ->
	if @userId
		Locations.find {}

Meteor.publish 'servers', ->
	if @userId
		Servers.find {}

Servers.allow
	insert: (userId) ->
		userId
	update: (userId) ->
		userId
	remove: (userId) ->
		userId

Meteor.publish 'networks', ->
	if @userId
		Networks.find {}

Networks.allow
	insert: (userId) ->
		userId
	update: (userId) ->
		userId
	remove: (userId) ->
		userId

