Class {
	#name : #EMultiplication,
	#superclass : #Object,
	#instVars : [
		'left',
		'right'
	],
	#category : #Expressions
}

{ #category : #accessing }
EMultiplication >> evaluate [ 
	^ left evaluate  * right evaluate 
]

{ #category : #accessing }
EMultiplication >> left: anExpression [ 
	left:= anExpression 
]

{ #category : #'as yet unclassified' }
EMultiplication >> negated [
	^ ENegation new expression: self 
]

{ #category : #accessing }
EMultiplication >> right: anExpression [ 
	right:= anExpression 
]
