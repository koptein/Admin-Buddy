Template.networksItem.events
	'click button.show-free-ips': (e, t) ->
		alert "Show free IPs for network \"#{@name}\""

	'click button.change': (e, t) ->
		Router.go 'networksDetails', _id: @_id

