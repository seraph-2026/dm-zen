
zen_mock_data
	var/normalVariable
	var/tmp/tempVariable

mock/zen_mock_data
	get()
		var/zen_mock_data/md = new/person()
		return md