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
		for: #common
		do: [ self setUpDependencies: spec.
			self setUpGroups: spec.
			self setUpSeasideGroups: spec.
			spec group: 'default' with: #('Deployment') ]
]

{ #category : #private }
BaselineOfRenoirSt >> customProjectAttributes [

	^ Array with: (Smalltalk globals at: #UnitValue ifPresent: [ :class | #UnitsIsLoaded ] ifAbsent: [ #UnitsIsAbsent ])
]

{ #category : #private }
BaselineOfRenoirSt >> setUpDependencies: spec [

	spec
		baseline: 'Buoy' with: [ spec repository: 'github://ba-st/Buoy:v3.1.0/source' ];
		import: 'Buoy'.
	spec
		baseline: 'Seaside3'
			with: [ spec
				repository: 'github://SeasideSt/Seaside:v3.2.4/repository';
				loads: 'Javascript' ];
		import: 'Seaside3'

]

{ #category : #private }
BaselineOfRenoirSt >> setUpGroups: spec [

	spec
		package: 'RenoirSt' with: [ spec requires: 'Buoy' ];
		package: 'RenoirSt-HTML' with: [ spec requires: 'RenoirSt' ];
		package: 'RenoirSt-Tests' with: [ spec requires: 'RenoirSt' ];
		package: 'RenoirSt-HTML-Tests' with: [ spec requires: #('RenoirSt-HTML' 'RenoirSt-Tests') ];
		package: 'RenoirSt-UnitsCompatibility' with: [ spec requires: 'RenoirSt' ].
		
	spec for: #UnitsIsLoaded do: [ spec group: 'Deployment' with: #('RenoirSt' 'RenoirSt-HTML' 'RenoirSt-UnitsCompatibility') ].
	spec for: #UnitsIsAbsent do: [ spec group: 'Deployment' with: #('RenoirSt' 'RenoirSt-HTML') ].
	spec group: 'Development' with: #('Deployment' 'RenoirSt-Tests' 'RenoirSt-HTML-Tests')
]

{ #category : #private }
BaselineOfRenoirSt >> setUpSeasideGroups: spec [

	spec
		package: 'RenoirSt-Seaside'
			with: [ spec
				requires: 'Deployment';
				requires: 'Seaside3' ];
		package: 'RenoirSt-Seaside-Tests' with: [ spec requires: 'RenoirSt-Seaside' ].
	spec
		group: 'Deployment-Seaside-Extensions' with: #('Deployment' 'RenoirSt-Seaside');
		group: 'Development-Seaside-Extensions' with: #('Development' 'Deployment-Seaside-Extensions' 'RenoirSt-Seaside-Tests')
]
