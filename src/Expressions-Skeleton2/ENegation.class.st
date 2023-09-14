Class {
	#name : #ENegation,
	#superclass : #EExpression,
	#instVars : [
		'expression'
	],
	#category : #'Expressions-Skeleton2'
}

{ #category : #'instance creation' }
ENegation class >> expression: anInteger [
	^ self new expression: anInteger
]

{ #category : #accessing }
ENegation >> expression [
	
	^ expression
]

{ #category : #accessing }
ENegation >> expression: anEConstant [ 
	expression := anEConstant
]

{ #category : #evaluation }
ENegation >> negated [

	^ expression
]

{ #category : #printing }
ENegation >> printOn: aStream [

	aStream nextPut: $-.
	aStream nextPut: Character space. 
	expression printOn: aStream
]
