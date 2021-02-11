Class {
	#name : #CHInterpreterTest,
	#superclass : #TestCase,
	#category : #'Champollion-Tests'
}

{ #category : #interprete }
CHInterpreterTest >> interpreter [
	^ CHInterpreter new
]

{ #category : #tests }
CHInterpreterTest >> testReturnInteger [
	| ast result |
	ast := (CHInterpretable >> #returnInteger) parseTree .
	result := self interpreter execute: ast.
	self assert: result equals: 5
]
