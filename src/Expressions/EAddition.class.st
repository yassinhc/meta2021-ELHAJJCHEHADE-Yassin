Class {
	#name : #EAddition,
	#superclass : #EBinaryExpression,
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
EAddition class >> fivePlusThree [
	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	^ self left: ep1 right: ep2 
]

{ #category : #accessing }
EAddition >> evaluateWith: anObject [
	^ (left evaluateWith: anObject)
		+ (right evaluateWith: anObject)
]

{ #category : #accessing }
EAddition >> operatorString [ 
	^ ' + '
]
