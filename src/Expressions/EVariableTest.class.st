Class {
	#name : #EVariableTest,
	#superclass : #TestCase,
	#category : #'Expressions-Test'
}

{ #category : #tests }
EVariableTest >> testValueOfx [

	self assert: ((EVariable new id: #x) evaluateWith: {#x -> 10} asDictionary) equals: 10. 
]

{ #category : #tests }
EVariableTest >> testValueOfxInNegation [

	self assert: ((EVariable new id: #x) negated evaluateWith: {#x -> 10} asDictionary) equals: -10. 
]
