Class {
	#name : #ENegationTest,
	#superclass : #TestCase,
	#category : #'Expressions-Test'
}

{ #category : #tests }
ENegationTest >> testNegatedStructureIsCorrect [
	
	| exp |
	exp := (EConstant new value: 6).
	self assert: exp negated class = ENegation. 
	self assert: exp negated negated equals: exp.

	
	

]

{ #category : #tests }
ENegationTest >> testPrinting [
	
	| exp |
	exp := (EConstant new value: 6) negated.
	self assert: exp printString = '- 6'. 
	self assert: exp negated printString = '6'. 

	
	

]
