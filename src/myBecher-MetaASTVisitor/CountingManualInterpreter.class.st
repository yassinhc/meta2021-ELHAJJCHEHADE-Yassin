Class {
	#name : #CountingManualInterpreter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #'myBecher-MetaASTVisitor'
}

{ #category : #visiting }
CountingManualInterpreter >> initialize [ 
	super initialize .
	count := 0
]

{ #category : #visiting }
CountingManualInterpreter >> numberOfMessages [
	^ count
]

{ #category : #visiting }
CountingManualInterpreter >> visitArrayNode: aRBArrayNode [
	^ self
]

{ #category : #visiting }
CountingManualInterpreter >> visitAssignmentNode: aRBAssignmentNode [ 
	aRBAssignmentNode value acceptVisitor: self
]

{ #category : #visiting }
CountingManualInterpreter >> visitLiteralValueNode: aRBMethodNode [
	^ self
]

{ #category : #visiting }
CountingManualInterpreter >> visitMessageNode: aRBMessageNode [ 
	count := count +1.
	aRBMessageNode receiver acceptVisitor: self.
	aRBMessageNode arguments do: [ :each | each acceptVisitor: self ]
]

{ #category : #visiting }
CountingManualInterpreter >> visitMethodNode: aRBMethodNode [ 
	count := count +1.
	aRBMethodNode statements do: [ :each | each acceptVisitor: self ]
]

{ #category : #visiting }
CountingManualInterpreter >> visitReturnNode: aRBReturnNode [ 
	^ self 
]

{ #category : #visiting }
CountingManualInterpreter >> visitSelfNode: aRBMethodNode [
	^ self
]

{ #category : #visiting }
CountingManualInterpreter >> visitVariableNode: aRBVariableNode [
	count := count +1.
	^ self
]
