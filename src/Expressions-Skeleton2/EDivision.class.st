"
[  (EDivision new numerator: (EConstant value: 4) ; denominator: (EConstant value: 0)) evaluate ]
		on: EZeroDenominator
		do: [ :exception |  self halt. ""we do not know what to do...."" ] 
"
Class {
	#name : #EDivision,
	#superclass : #EExpression,
	#instVars : [
		'numerator',
		'denominator'
	],
	#category : #'Expressions-Skeleton2'
}

{ #category : #'instance creation' }
EDivision class >> numerator: aNumeratorExpression denominator: aDenominatorExpression [

	^ self new
		numerator: aNumeratorExpression;
		denominator: aDenominatorExpression;
		yourself
]

{ #category : #accessing }
EDivision >> denominator [
	^ denominator
]

{ #category : #accessing }
EDivision >> denominator: anInteger [ 
	denominator := anInteger
]

{ #category : #accessing }
EDivision >> numerator [
	^ numerator
]

{ #category : #accessing }
EDivision >> numerator: anInteger [ 
	numerator := anInteger
]

{ #category : #evaluation }
EDivision >> printOn: aStream [
	
	aStream 
		nextPutAll: '( ';
		nextPutAll: numerator printString; 
		nextPutAll: ' / ';
		nextPutAll: denominator printString;
		nextPutAll: ' )'
]
