Extension { #name : #ENegationTest }

{ #category : #'*Expressions-Skeleton' }
ENegationTest >> testEvaluate [
	self assert: ((ENegation new expression: (EConstant new value: 5)) evaluateWith: Dictionary new) equals: -5
]

{ #category : #'*Expressions-Skeleton' }
ENegationTest >> testEvaluateWithClassCreationMessage [
	self assert: ((ENegation expression: (EConstant value: 5)) evaluateWith: Dictionary new) equals: -5
]

{ #category : #'*Expressions-Skeleton' }
ENegationTest >> testNegated [
	self assert: ((EConstant new value: 6) negated evaluateWith: Dictionary new) equals: -6.
	self assert: (EAddition fivePlusThree negated evaluateWith: Dictionary new) equals: -8
]

{ #category : #'*Expressions-Skeleton' }
ENegationTest >> testNegationNegated [
	self assert: ((EConstant new value: 6) negated negated evaluateWith: Dictionary new) equals: 6
]
