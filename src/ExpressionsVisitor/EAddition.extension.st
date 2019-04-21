Extension { #name : #EAddition }

{ #category : #'*ExpressionsVisitor' }
EAddition >> accept: aVisitor [

	^ aVisitor visitAddition: self
]
