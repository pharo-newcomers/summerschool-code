Extension { #name : #ENegation }

{ #category : #'*ExpressionsVisitor' }
ENegation >> accept: aVisitor [
	
	^ aVisitor visitNegation: self
]
