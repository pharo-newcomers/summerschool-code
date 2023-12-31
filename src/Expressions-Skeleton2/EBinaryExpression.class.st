Class {
	#name : #EBinaryExpression,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #'Expressions-Skeleton2'
}

{ #category : #accessing }
EBinaryExpression >> left [
	^ left
]

{ #category : #evaluation }
EBinaryExpression >> left: anEConstant [
	left := anEConstant
	
	
]

{ #category : #printing }
EBinaryExpression >> operatorString [
	^ ' + '
]

{ #category : #printing }
EBinaryExpression >> printOn: aStream [
	aStream nextPutAll: '( '.
	left printOn: aStream.
	aStream nextPutAll: self operatorString.
	right printOn: aStream.
	aStream nextPutAll: ' )'
]

{ #category : #accessing }
EBinaryExpression >> right [
	^ right
]

{ #category : #evaluation }
EBinaryExpression >> right: anEConstant [
	right := anEConstant
	
]
