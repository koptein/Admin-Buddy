Meteor.publish 'locations', ->
	Locations.find {}

Meteor.publish 'servers', ->
	Servers.find {}

