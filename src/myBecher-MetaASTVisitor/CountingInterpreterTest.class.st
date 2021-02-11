Class {
	#name : #CountingInterpreterTest,
	#superclass : #TestCase,
	#category : #'myBecher-MetaASTVisitor'
}

{ #category : #tests }
CountingInterpreterTest >> testMessageCount [
	
	| ast counting |
	ast := RBParser parseMethod: (Point >> #sideOf: ) sourceCode.
	counting := CountingInterpreter new.
	ast acceptVisitor: counting.
	self assert: counting numberOfMessages equals: 4.
]

{ #category : #tests }
CountingInterpreterTest >> testMessageCount2 [
	
	| ast counting |
	ast := RBParser parseMethod: (Point >> #sideOf: ) sourceCode.
	counting := CountingManualInterpreter new.
	ast acceptVisitor: counting.
	self assert: counting numberOfMessages equals: 4.
]

{ #category : #tests }
CountingInterpreterTest >> testMethodAttribuatValue [
	
	| ast counting |
	ast := RBParser parseMethod: (Point >> #sideOf: ) sourceCode.
	counting := CountingManualInterpreterOfAttribuate new.
	ast acceptVisitor: counting.
	self assert: counting IsAttribuate equals: 1.
]

{ #category : #tests }
CountingInterpreterTest >> testMethodUsingSelf [
	
	| ast counting |
	ast := RBParser parseMethod: (Point >> #sideOf: ) sourceCode.
	counting := CountingManualInterpreterOfSelf new.
	ast acceptVisitor: counting.
	self assert: counting numberOfSelf equals: 1.
]
