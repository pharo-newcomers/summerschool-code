Extension { #name : #EConstantTest }

{ #category : #'*Expressions-Skeleton' }
EConstantTest >> testEvaluate [
	self assert: ((EConstant new value: 5) evaluateWith: Dictionary new) equals: 5
]

{ #category : #'*Expressions-Skeleton' }
EConstantTest >> testNegated [
	self assert: ((EConstant new value: 6) negated evaluateWith: Dictionary new) equals: -6
]
