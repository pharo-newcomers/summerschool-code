Extension { #name : #EDivision }

{ #category : #'*ExpressionsVisitor' }
EDivision >> accept: aVisitor [

	^ aVisitor visitDivision: self
]
