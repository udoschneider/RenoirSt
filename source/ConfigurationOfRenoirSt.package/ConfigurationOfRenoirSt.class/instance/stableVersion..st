symbolic versions
stableVersion: spec

	"This is just a hack trying to define an #stable version using just the baseline"
	<version: '1'>
	spec
		for: #common
		do:
			[ spec
				baseline: 'RenoirSt'
					with: [ spec repository: 'github://gcotelli/RenoirSt:v1.?/source' ];
				import: 'RenoirSt' ]