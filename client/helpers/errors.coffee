# Local collection (client-only)
@Errors = new Meteor.Collection null

@throwError = (message) ->
	Errors.insert "message": message

@cleanErrors = ->
	Errors.remove "seen": true
