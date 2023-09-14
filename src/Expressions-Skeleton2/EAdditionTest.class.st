Class {
	#name : #EAdditionTest,
	#superclass : #TestCase,
	#category : #'Expressions-Skeleton2'
}

{ #category : #'as yet unclassified' }
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

{ #category : #'as yet unclassified' }
EAdditionTest >> testEvaluateWithClassCreationMessage [
	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	self assert: ((EAddition left: ep1 right: ep2) evaluateWith: Dictionary new) equals: 8
]

{ #category : #'as yet unclassified' }
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

{ #category : #'as yet unclassified' }
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

{ #category : #tests }
EAdditionTest >> testPrinting [
	self assert: (EAddition fivePlusThree) printString equals:  '( 5 + 3 )'.
	self assert: (EAddition fivePlusThree) negated printString equals:  '- ( 5 + 3 )'
]
