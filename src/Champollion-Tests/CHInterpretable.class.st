Class {
	#name : #CHInterpretable,
	#superclass : #Object,
	#category : #'Champollion-Tests'
}

{ #category : #'as yet unclassified' }
CHInterpretable >> returnBoolean [
	^ false
]

{ #category : #'as yet unclassified' }
CHInterpretable >> returnEmptyLiteralArray [
	^ #()
]

{ #category : #'as yet unclassified' }
CHInterpretable >> returnFloat [
	^ 3.14
]

{ #category : #'as yet unclassified' }
CHInterpretable >> returnInteger [
	^ 5
]

{ #category : #'as yet unclassified' }
CHInterpretable >> returnRecursiveLiteralArray [
	^ #(true 1 #('ahah'))
]
