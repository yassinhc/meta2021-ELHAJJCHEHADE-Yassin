Class {
	#name : #EMultiplication,
	#superclass : #EExpression,
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

{ #category : #accessing }
EMultiplication >> right: anExpression [ 
	right:= anExpression 
]
