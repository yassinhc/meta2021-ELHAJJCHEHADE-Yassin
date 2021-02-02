Class {
	#name : #EExpression,
	#superclass : #Object,
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
EExpression >> evaluateWith: aDictionary [
	^ self evaluateWith: Dictionary new
]

{ #category : #'as yet unclassified' }
EExpression >> negated [
	^ ENegation new expression: self
]
