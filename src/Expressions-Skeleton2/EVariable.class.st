Class {
	#name : #EVariable,
	#superclass : #EExpression,
	#instVars : [
		'id'
	],
	#category : #'Expressions-Skeleton2'
}

{ #category : #accessing }
EVariable class >> id: anId [

	^ self new
		id: anId;
		yourself
]

{ #category : #accessing }
EVariable >> id [
	^ id
]

{ #category : #accessing }
EVariable >> id: aSymbol [

	id := aSymbol
]

{ #category : #printing }
EVariable >> printOn: aStream [ 
	aStream nexPutAll: id asString
]
