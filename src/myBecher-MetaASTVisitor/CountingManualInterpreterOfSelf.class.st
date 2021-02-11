Class {
	#name : #CountingManualInterpreterOfSelf,
	#superclass : #Object,
	#instVars : [
		'bool'
	],
	#category : #'myBecher-MetaASTVisitor'
}

{ #category : #visiting }
CountingManualInterpreterOfSelf >> initialize [ 
	super initialize.
	bool := 0.
]

{ #category : #visiting }
CountingManualInterpreterOfSelf >> numberOfSelf [
	^ bool
]

{ #category : #visiting }
CountingManualInterpreterOfSelf >> visitAssignmentNode: aRBAssignmentNode [ 
	aRBAssignmentNode value acceptVisitor: self.
]

{ #category : #visiting }
CountingManualInterpreterOfSelf >> visitMessageNode: aRBMessageNode [ 
	aRBMessageNode receiver acceptVisitor: self.
	aRBMessageNode arguments do: [ :each | each acceptVisitor: self ]
]

{ #category : #visiting }
CountingManualInterpreterOfSelf >> visitMethodNode: aRBMethodNode [ 
	aRBMethodNode statements do: [ :each | each acceptVisitor: self ]
]

{ #category : #visiting }
CountingManualInterpreterOfSelf >> visitReturnNode: aRBReturnNode [ 
	^ self
]

{ #category : #visting }
CountingManualInterpreterOfSelf >> visitSelfNode: aRBSelfNode [ 
	bool := bool +1.
	^ self
]

{ #category : #visiting }
CountingManualInterpreterOfSelf >> visitVariableNode: aRBVariableNode [ 
	^ self
]
