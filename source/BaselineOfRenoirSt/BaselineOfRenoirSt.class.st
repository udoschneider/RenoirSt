"
Metacello Baseline definition for RenoirSt
"
Class {
	#name : #BaselineOfRenoirSt,
	#superclass : #BaselineOf,
	#category : 'BaselineOfRenoirSt'
}

{ #category : #baselines }
BaselineOfRenoirSt >> baseline: spec [

	<baseline>
	spec
		for: #pharo
		do: [ self
				setUpDependencies: spec;
				baselineRenoirSt: spec;
				baselineSeasideExtensions: spec.

			spec
				group: 'CI' with: 'Tests';
				group: 'Tools' with: 'Buoy-Tools';
				group: 'Development' with: #('Tests' 'Tools')
			]
]

{ #category : #private }
BaselineOfRenoirSt >> baselineRenoirSt: spec [

	spec
		package: 'RenoirSt' with: [ spec requires: 'Buoy-Deployment' ];
		group: 'Deployment' with: 'RenoirSt';
		package: 'RenoirSt-HTML' with: [ spec requires: 'RenoirSt' ];
		group: 'Deployment' with: 'RenoirSt-HTML';
		package: 'RenoirSt-Tests' with: [ spec requires: #('RenoirSt' 'Buoy-SUnit') ];
		group: 'Tests' with: 'RenoirSt-Tests';
		package: 'RenoirSt-HTML-Tests' with: [ spec requires: #('RenoirSt-HTML' 'RenoirSt-Tests') ];
		group: 'Tests' with: 'RenoirSt-HTML-Tests'.

	spec
		for: #UnitsIsLoaded
		do: [ "Compatibility with the Units project"
			spec
				package: 'RenoirSt-UnitsCompatibility' with: [ spec requires: 'RenoirSt' ];
				group: 'Deployment' with: 'RenoirSt-UnitsCompatibility'
			]
]

{ #category : #private }
BaselineOfRenoirSt >> baselineSeasideExtensions: spec [

	spec
		package: 'RenoirSt-Seaside' with: [ spec requires: #('Deployment' 'Seaside3-Javascript') ];
		group: 'Deployment-Seaside-Extensions' with: 'RenoirSt-Seaside';
		package: 'RenoirSt-Seaside-Tests' with: [ spec requires: #('RenoirSt-Seaside' 'Tests') ];
		group: 'Development-Seaside-Extensions'
			with: #('Development' 'Deployment-Seaside-Extensions' 'RenoirSt-Seaside-Tests')
]

{ #category : #private }
BaselineOfRenoirSt >> customProjectAttributes [

	Smalltalk globals at: #UnitValue ifPresent: [ :class | ^ #(#UnitsIsLoaded) ].
	^ super customProjectAttributes
]

{ #category : #accessing }
BaselineOfRenoirSt >> projectClass [

	^ MetacelloCypressBaselineProject
]

{ #category : #private }
BaselineOfRenoirSt >> setUpDependencies: spec [

	spec
		baseline: 'Buoy' with: [ spec repository: 'github://ba-st/Buoy:v5/source' ];
		project: 'Buoy-Deployment' copyFrom: 'Buoy' with: [ spec loads: 'Deployment' ];
		project: 'Buoy-SUnit' copyFrom: 'Buoy' with: [ spec loads: 'Dependent-SUnit-Extensions' ];
		project: 'Buoy-Tools' copyFrom: 'Buoy' with: [ spec loads: 'Tools' ].

	spec
		baseline: 'Seaside3' with: [ spec repository: 'github://SeasideSt/Seaside:v3.3.3/repository' ];
		project: 'Seaside3-Javascript' copyFrom: 'Seaside3' with: [ spec loads: 'Javascript' ]
]
