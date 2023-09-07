Extension { #name : #EMultiplicationTest }

{ #category : #'*Expressions-Skeleton' }
EMultiplicationTest >> testEvaluate [
	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	self
		assert:
			((EMultiplication new
				right: ep1;
				left: ep2) evaluateWith: Dictionary new)
		equals: 15
]

{ #category : #'*Expressions-Skeleton' }
EMultiplicationTest >> testEvaluateNegated [
	self assert: (EMultiplication fiveTimesThree negated evaluateWith: Dictionary new) equals: -15
]

{ #category : #'*Expressions-Skeleton' }
EMultiplicationTest >> testEvaluateNegatedSimple [
	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	self
		assert:
			((EMultiplication new
				right: ep1;
				left: ep2) negated evaluateWith: Dictionary new)
		equals: -15
]

{ #category : #'*Expressions-Skeleton' }
EMultiplicationTest >> testEvaluateWithClassCreationMessage [
	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	self assert: ((EMultiplication left: ep1 right: ep2) evaluateWith: Dictionary new) equals: 15
]
