Class {
	#name : #CHInterpreterTest,
	#superclass : #TestCase,
	#category : #'Champollion-Tests'
}

{ #category : #tests }
CHInterpreterTest >> executeSelector: aSymbol [ 
	^ self executeSelector: aSymbol withReceiver: nil.
	
]

{ #category : #tests }
CHInterpreterTest >> executeSelector: aSymbol withReceiver: aReceiver [ 
	| ast |
	ast := (CHInterpretable >> aSymbol) parseTree .
	^ self interpreter execute: ast withReceiver: aReceiver 
	
]

{ #category : #interprete }
CHInterpreterTest >> interpreter [
	^ CHInterpreter new
]

{ #category : #tests }
CHInterpreterTest >> testReturnBoolean [
	
	self assert: (self executeSelector: #returnBoolean) equals: false
]

{ #category : #tests }
CHInterpreterTest >> testReturnEmptyLiteralArray [
	
	self assert: (self executeSelector: #returnEmptyLiteralArray ) equals: #()
]

{ #category : #tests }
CHInterpreterTest >> testReturnFloat [
	
	self assert: (self executeSelector: #returnFloat) equals: 3.14
]

{ #category : #tests }
CHInterpreterTest >> testReturnInteger [
	
	self assert: (self executeSelector: #returnInteger) equals: 5
]

{ #category : #tests }
CHInterpreterTest >> testReturnRecursiveLiteralArray [
	
	self assert: (self executeSelector: #returnRecursiveLiteralArray ) equals: #(true 1 #('ahah'))
]

{ #category : #tests }
CHInterpreterTest >> testReturnSelf [
	| receiver |
	receiver := Object new.
	self assert: (self executeSelector: #returnSelf withReceiver: receiver ) == receiver 
]

{ #category : #tests }
CHInterpreterTest >> testReturnSuper [
	| receiver |
	receiver := Object new.
	self assert: (self executeSelector: #returnSuper withReceiver: receiver ) == receiver 
]
