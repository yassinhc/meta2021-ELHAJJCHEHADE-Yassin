Class {
	#name : #EConstant,
	#superclass : #EExpression,
	#instVars : [
		'value'
	],
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
EConstant class >> constant3 [
	<sampleInstance>
	^ self new value: 3
]

{ #category : #'as yet unclassified' }
EConstant class >> constant5 [
	<sampleInstance >
	^ self new value: 5
]

{ #category : #accessing }
EConstant class >> value: anInteger [ 		
	^ self new value: anInteger 
]

{ #category : #accessing }
EConstant >> evaluate [
	^ value 
]

{ #category : #accessing }
EConstant >> value: anInteger [
	value := anInteger 
]
