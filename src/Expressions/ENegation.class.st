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
ENegation >> evaluate [ 
	| d |
	d  := expression evaluate  negated.
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
