Extension { #name : #EAdditionTest }

{ #category : #'*Expressions-Skeleton' }
EAdditionTest >> testEvaluate [
	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	self
		assert:
			((EAddition new
				right: ep1;
				left: ep2) evaluateWith: Dictionary new)
		equals: 8
]

{ #category : #'*Expressions-Skeleton' }
EAdditionTest >> testEvaluateWithClassCreationMessage [
	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	self assert: ((EAddition left: ep1 right: ep2) evaluateWith: Dictionary new) equals: 8
]

{ #category : #'*Expressions-Skeleton' }
EAdditionTest >> testEvaluateWithNegation [
	| ep1 ep2 |
	ep1 := ENegation new expression: (EConstant new value: 5).
	ep2 := EConstant new value: 3.
	self
		assert:
			((EAddition new
				right: ep1;
				left: ep2) evaluateWith: Dictionary new)
		equals: -2
]

{ #category : #'*Expressions-Skeleton' }
EAdditionTest >> testNegated [
	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	self
		assert:
			((EAddition new
				right: ep1;
				left: ep2) negated evaluateWith: Dictionary new)
		equals: -8
]
