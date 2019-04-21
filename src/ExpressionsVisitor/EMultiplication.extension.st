Extension { #name : #EMultiplication }

{ #category : #'*ExpressionsVisitor' }
EMultiplication >> accept: aVisitor [
	
	^ aVisitor visitMultiplication: self
]
