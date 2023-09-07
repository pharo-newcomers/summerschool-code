Class {
	#name : #BaselineOfExpressions,
	#superclass : #BaselineOf,
	#category : #BaselineOfExpressions
}

{ #category : #baselines }
BaselineOfExpressions >> baseline: spec [
	<baseline>

		spec 
			package: #'Expressions';
			package: #'Expressions-Skeleton' with: [
				spec requires: #('BExpressions' ) ].
		spec 
			group: 'default' 
			with: #('Expressions' 'Expressions-Skeleton')
]
