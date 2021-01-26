Class {
	#name : #EAddition,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #Expressions
}

{ #category : #'instance creation' }
EAddition class >> left: anInteger1  right: anInteger2 [ 
	^ self new left: anInteger1 ; right: anInteger2  
]

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
