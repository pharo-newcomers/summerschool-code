Class {
	#name : #EConstantTest,
	#superclass : #TestCase,
	#category : #'Expressions-Test'
}

{ #category : #tests }
EConstantTest >> testPrinting [
	
	self assert:(EConstant new value: 5) printString equals: '5'.
	
]

{ #category : #tests }
EConstantTest >> testValue [ 
	
	self assert:(EConstant new value: 5) value equals:5.
	self assert:(EConstant constant5) value equals:5
	

]

{ #category : #tests }
EConstantTest >> testValueFromClass [
	
	self assert:(EConstant value: 5) value equals: 5.

	

]
