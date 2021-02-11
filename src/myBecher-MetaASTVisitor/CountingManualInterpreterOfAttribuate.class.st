Class {
	#name : #CountingManualInterpreterOfAttribuate,
	#superclass : #Object,
	#instVars : [
		'at'
	],
	#category : #'myBecher-MetaASTVisitor'
}

{ #category : #visiting }
CountingManualInterpreterOfAttribuate >> IsAttribuate [
	^ at
]

{ #category : #visiting }
CountingManualInterpreterOfAttribuate >> visitAssignmentNode: aRBAssignmentNode [ 
	at:= 1.
	^ self
]

{ #category : #visiting }
CountingManualInterpreterOfAttribuate >> visitMethodNode: aRBMethodNode [ 
	aRBMethodNode statements do: [ :each | each acceptVisitor: self ]
]

{ #category : #visiting }
CountingManualInterpreterOfAttribuate >> visitReturnNode: aRBReturnNode [ 
	 ^ self 
]
