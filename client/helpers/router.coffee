#
# Configuration
#
Router.configure
	layoutTemplate: 'layout'
	notFoundTemplate: '404'

#
# Basic routes
#
Router.map ->

	@route 'home',
		path: '/'
		template: 'serversList'

	@route 'serversList'
	@route 'serversAdd'
	@route 'serversDetails',
		path: '/server/:_id/details'
		template: 'serversDetails'
		data: ->
			Servers.findOne @params._id

	@route 'networksList'
	@route 'networksAdd'

	@route 'login'

#
# Routing filters
#
filters =

	isLoggedIn: ->
		if not Meteor.userId()
			@render 'login'
			@stop()

Router.before filters.isLoggedIn, except: ['login']

