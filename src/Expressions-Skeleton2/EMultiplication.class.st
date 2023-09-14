Class {
	#name : #EMultiplication,
	#superclass : #EBinaryExpression,
	#category : #'Expressions-Skeleton2'
}

{ #category : #examples }
EMultiplication class >> fiveTimesThree [
	<sampleInstance>
	| ep1 ep2 |
	ep1 := (EConstant new value: 5).
	ep2 := (EConstant new value: 3).
   ^ EMultiplication new left: ep1 ; right: ep2 
]

{ #category : #'instance creation' }
EMultiplication class >> left: anInteger right: anInteger2 [

	^ self new left: anInteger ; right: anInteger2
]

{ #category : #printing }
EMultiplication >> operatorString [
	^ ' * '
]
