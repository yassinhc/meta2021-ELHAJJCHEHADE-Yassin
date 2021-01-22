Class {
	#name : #EAddition,
	#superclass : #Object,
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

{ #category : #'as yet unclassified' }
EAddition >> negated [
	^ ENegation new expression: self
]

{ #category : #accessing }
EAddition >> right: anInteger [
	right := anInteger 
]
