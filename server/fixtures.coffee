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
			"HWR"
			"mail"
			"http"
			"mysql"]


if Networks.find().count() is 0

	Networks.insert
		"name": "local"
		"gateway": "192.168.0.1"
		"net_id" : "192.168.0.1"
		"subnetmask": "255.255.255.0"
		"interfaces": [
			"eth0": "aa:bb:bb:bb:bb"
			"eth1": "bb:bb:bb:bb:bb"
		]
