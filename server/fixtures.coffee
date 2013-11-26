if Locations.find().count() is 0

	Locations.insert "name": "Home"

if Servers.find().count() is 0

	Servers.insert
		"fqdn": "www.example.com"
		"cpu":
			"cores": 8
			"speed": 2.4
			"type": "Intel Atom C2750"
		"ram": 32
		"hdd": [
			"2x 120GB SSD RAID1"]
		"location": Locations.findOne({"name": "Home"})['_id']

