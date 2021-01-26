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
EAddition >> evaluate [ 
	^ left evaluate  + right evaluate 
]

{ #category : #accessing }
EAddition >> printOn: aStream [ 
	aStream nextPutAll: '( ',left printString ,' + ',right printString ,' )'.
]
