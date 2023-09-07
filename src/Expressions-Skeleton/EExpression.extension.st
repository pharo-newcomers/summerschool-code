Extension { #name : #EExpression }

{ #category : #'*Expressions-Skeleton' }
EExpression >> evaluateWith: anObject [

	| visitor |
	visitor := EEvaluatorVisitor new.
	visitor bindings: anObject.
	^ self accept: visitor.
]
