Class {
	#name : #BaseASTVisitor,
	#superclass : #Object,
	#category : #VisitorExample
}

{ #category : #visiting }
BaseASTVisitor >> visitLiteralValueNode: aRBLiteralValueNode [ 
	^ self visitNode: aRBLiteralValueNode
]

{ #category : #visiting }
BaseASTVisitor >> visitMessageNode: aRBMessageNode [ 
	^ self visitNode: aRBMessageNode
]

{ #category : #visiting }
BaseASTVisitor >> visitMethodNode: aRBMethodNode [ 
	^ self visitNode: aRBMethodNode
]

{ #category : #visiting }
BaseASTVisitor >> visitNode: aNode [ 
	"Do nothing by default. I'm meant to be overriden by subclasses"
]

{ #category : #visiting }
BaseASTVisitor >> visitSelfNode: aSelfNode [ 
	^ self visitVariableNode: aSelfNode
]

{ #category : #visiting }
BaseASTVisitor >> visitSequenceNode: aRBBSequenceNode [ 
	^ self visitNode: aRBBSequenceNode 
]

{ #category : #visiting }
BaseASTVisitor >> visitVariableNode: aVariableNode [ 
	^ self visitNode: aVariableNode 
]
