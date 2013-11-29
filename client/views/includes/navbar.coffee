Template.navbar.helpers
	activeRouteClass: ->

		args = Array.prototype.slice.call arguments, 0
		args.pop()

		active = _.any args, (name) ->
			name is Router.current().route.name

		active and 'active'

