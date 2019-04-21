Class {
	#name : #EExpression,
	#superclass : #Object,
	#category : #'Expressions-Model'
}

{ #category : #evaluate }
EExpression >> evaluateWith: anObject [

	| visitor |
	visitor := EEvaluatorVisitor new.
	visitor bindings: anObject.
	^ self accept: visitor.
]

{ #category : #evaluation }
EExpression >> negated [

	^ ENegation new expression: self
]
