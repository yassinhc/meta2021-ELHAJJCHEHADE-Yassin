Class {
	#name : #CHInterpreter,
	#superclass : #Object,
	#instVars : [
		'receiver'
	],
	#category : #'Champollion-Tests'
}

{ #category : #execute }
CHInterpreter >> currentScope [ 
	^ CHInstanceScope new 
		receiver: self receiver;
		yourself
]

{ #category : #execute }
CHInterpreter >> execute: anAST withReceiver: anObject [ 
	receiver := anObject .
	^ self visitNode: anAST 
]

{ #category : #execute }
CHInterpreter >> receiver [ 	
	^ receiver 
]

{ #category : #visiting }
CHInterpreter >> scopeDefining: aName [
	^ self currentScope scopeDefining: aName 
]

{ #category : #visiting }
CHInterpreter >> visitAssignmentNode: anAssignmnentNode [
	| value |
	value := self visitNode: anAssignmnentNode value.
	(self scopeDefining: anAssignmnentNode variable name)
	write: anAssignmnentNode variable name 
	withValue: value.
	^ value
]

{ #category : #visiting }
CHInterpreter >> visitLiteralArrayNode: aLiteralArrayNode [ 
	^ aLiteralArrayNode contents 
		collect: [ :literalNode | self visitNode: literalNode  ] as:Array
]

{ #category : #'as yet unclassified' }
CHInterpreter >> visitLiteralValueNode: aLiteralValueNode [ 
	^ aLiteralValueNode value
]

{ #category : #visiting }
CHInterpreter >> visitMethodNode: aMethodNode [ 
	^ self visitNode: aMethodNode body
]

{ #category : #visiting }
CHInterpreter >> visitNode: aNode [ 
	^ aNode acceptVisitor: self
]

{ #category : #visiting }
CHInterpreter >> visitReturnNode: aReturnNode [ 
	^ self visitNode: aReturnNode value
]

{ #category : #visiting }
CHInterpreter >> visitSelfNode: aRBSelfNode [ 
	^ self receiver
]

{ #category : #visiting }
CHInterpreter >> visitSequenceNode: aSequenceNode [ 
	aSequenceNode statements allButLast 
	do: [ :each | self visitNode: each ].
	^ self visitNode: aSequenceNode statements last
]

{ #category : #visiting }
CHInterpreter >> visitSuperNode: aRBSuperNode [ 
	^ self receiver 
]

{ #category : #visiting }
CHInterpreter >> visitVariableNode: aVariableNode [
	^ (self scopeDefining: aVariableNode name) read: aVariableNode name
]
