Class {
	#name : #CHInterpreter,
	#superclass : #Object,
	#category : #'Champollion-Tests'
}

{ #category : #execute }
CHInterpreter >> execute: anAST [ 
	^ self visitNode: anAST 
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
CHInterpreter >> visitSequenceNode: aSequenceNode [ 
	aSequenceNode statements allButLast 
	do: [ :each | self visitNode: each ].
	^ self visitNode: aSequenceNode statements last
]
