Class {
	#name : #EExpression,
	#superclass : #Object,
	#category : #'Expressions-Model'
}

{ #category : #evaluation }
EExpression >> negated [

	^ ENegation new expression: self
]
