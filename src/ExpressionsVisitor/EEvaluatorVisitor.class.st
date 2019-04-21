Class {
	#name : #EEvaluatorVisitor,
	#superclass : #Object,
	#instVars : [
		'bindings'
	],
	#category : #ExpressionsVisitor
}

{ #category : #visiting }
EEvaluatorVisitor >> at: anId put: aValue [

	bindings at: anId put: aValue
]

{ #category : #visiting }
EEvaluatorVisitor >> bindings: aDictionary [

	bindings := aDictionary
]

{ #category : #visiting }
EEvaluatorVisitor >> initialize [

	super initialize.
	bindings := Dictionary new
]

{ #category : #visiting }
EEvaluatorVisitor >> visitAddition: anEAddition [
	
	| evaluationOfLeft evaluationOfRight |
	evaluationOfLeft := anEAddition left accept: self.
	evaluationOfRight := anEAddition right accept: self.
	^ evaluationOfLeft + evaluationOfRight
]

{ #category : #visiting }
EEvaluatorVisitor >> visitConstant: aConstant [

	^ aConstant value
]

{ #category : #visiting }
EEvaluatorVisitor >> visitDivision: aDivision [ 

	| denom numerator |
	denom := aDivision denominator accept: self.
	denom isZero
		ifTrue: [ EZeroDenominator signal ].
	numerator := aDivision numerator accept: self. 
	^ numerator / denom
]

{ #category : #visiting }
EEvaluatorVisitor >> visitMultiplication: anEMultiplication [ 

	| evaluationOfLeft evaluationOfRight |
	evaluationOfLeft := anEMultiplication left accept: self.
	evaluationOfRight := anEMultiplication right accept: self.
	^ evaluationOfLeft * evaluationOfRight
]

{ #category : #visiting }
EEvaluatorVisitor >> visitNegation: anENegation [ 

	| aNumber |
	aNumber := anENegation expression accept: self.
	^ aNumber negated
]

{ #category : #visiting }
EEvaluatorVisitor >> visitVariable: aVariable [

	^ bindings at: aVariable id
]
