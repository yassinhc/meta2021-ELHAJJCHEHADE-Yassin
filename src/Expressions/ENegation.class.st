Class {
	#name : #ENegation,
	#superclass : #Object,
	#instVars : [
		'expression'
	],
	#category : #Expressions
}

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
