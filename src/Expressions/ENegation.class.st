Class {
	#name : #ENegation,
	#superclass : #EExpression,
	#instVars : [
		'expression'
	],
	#category : #Expressions
}

{ #category : #accessing }
ENegation class >> expression: anExpression [
	^ self new expression: anExpression 
]

{ #category : #'public access' }
ENegation >> evaluateWith: anObject [
	| d |
	d := (expression evaluateWith: anObject) negated.
	^ d
]

{ #category : #accessing }
ENegation >> expression: anExpression [
	expression := anExpression 
]

{ #category : #'as yet unclassified' }
ENegation >> negated [
	^ expression 
]

{ #category : #'as yet unclassified' }
ENegation >> printOn: aStream [ 
	aStream nextPutAll: '- '.
	expression printOn: aStream 
]
