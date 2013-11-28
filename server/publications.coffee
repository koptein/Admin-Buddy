Meteor.publish 'locations', ->
	if @userId
		Locations.find {}

Meteor.publish 'servers', ->
	if @userId
		Servers.find {}

Meteor.publish 'networks', ->
	if @userId
		Networks.find {}

