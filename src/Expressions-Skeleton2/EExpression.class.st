Class {
	#name : #EExpression,
	#superclass : #Object,
	#category : #'Expressions-Skeleton2'
}

{ #category : #evaluation }
EExpression >> evaluateWith: anObject [

	self shouldBeImplemented 
]

{ #category : #evaluation }
EExpression >> negated [

	^ ENegation new expression: self
]
