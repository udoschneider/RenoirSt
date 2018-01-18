private
setUpDependencies: spec

	spec
		baseline: 'Buoy' with: [ spec repository: 'github://ba-st/Buoy:v3.0.0/source' ];
		import: 'Buoy'.
	spec
		baseline: 'Seaside3'
			with: [ spec
				repository: 'github://SeasideSt/Seaside:v3.2.4/repository';
				loads: 'Javascript' ];
		import: 'Seaside3'
