Class {
	#name : #EAddition,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #Expressions
}

{ #category : #accessing }
EAddition >> evaluate [ 
	^ left evaluate  + right evaluate 
]

{ #category : #accessing }
EAddition >> left:  anInteger [
	left := anInteger 
]

{ #category : #accessing }
EAddition >> right: anInteger [
	right := anInteger 
]
