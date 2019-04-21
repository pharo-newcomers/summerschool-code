Extension { #name : #EVariable }

{ #category : #'*ExpressionsVisitor' }
EVariable >> accept: aVisitor [

	^ aVisitor visitVariable: self
]
