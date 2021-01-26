Class {
	#name : #EBinaryExpression,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #Expressions
}

{ #category : #'instance creation' }
EBinaryExpression class >> left: anInteger1  right: anInteger2 [ 
	^ self new left: anInteger1 ; right: anInteger2  
]

{ #category : #accessing }
EBinaryExpression >> evaluate [ 
	^ self subclassResponsibility 
]

{ #category : #accessing }
EBinaryExpression >> left: anExpression [ 
	left:= anExpression 
]

{ #category : #accessing }
EBinaryExpression >> operatorString [
	^ self subclassResponsibility 
]

{ #category : #accessing }
EBinaryExpression >> printOn: aStream [ 
	aStream nextPutAll: '( '.
	left printOn: aStream.
	aStream nextPutAll: self operatorString.
	right printOn: aStream.
	aStream nextPutAll: ' )'.
]

{ #category : #accessing }
EBinaryExpression >> right: anExpression [ 
	right:= anExpression 
]
