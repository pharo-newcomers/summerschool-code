Extension { #name : #EConstant }

{ #category : #'*ExpressionsVisitor' }
EConstant >> accept: aVisitor [

	^ aVisitor visitConstant: self
]
