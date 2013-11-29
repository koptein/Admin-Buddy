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
		"tags": [
			"Firewall"
			"pfSense"
			"OpenVPN"
		]


if Networks.find().count() is 0

	Networks.insert
		"name": "Office Berlin"
		"gateway": "192.168.0.1"
		"net_id" : "192.168.0.0/24"

	Networks.insert
		"name": "Backnet Frankfurt"
		"gateway": "172.16.0.1"
		"net_id" : "172.16.0.0/24"

