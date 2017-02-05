private
setUpDependencies: spec
	spec
		baseline: 'Buoy' with: [ spec repository: 'github://ba-st/Buoy:master/source' ];
		import: 'Buoy'.
	spec
		configuration: 'Seaside3'
			with: [ spec
				repository: 'http://www.smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
				version: #'release3.2' ];
		import: 'Seaside3'