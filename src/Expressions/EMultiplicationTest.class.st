Class {
	#name : #EMultiplicationTest,
	#superclass : #TestCase,
	#category : #'Expressions-Test'
}

{ #category : #tests }
EMultiplicationTest >> testPrinting [

	self assert: (EMultiplication fiveTimesThree) negated printString equals:  '- ( 5 * 3 )'
]
