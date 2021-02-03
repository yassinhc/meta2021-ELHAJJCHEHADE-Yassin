Class {
	#name : #DirectoryNode,
	#superclass : #Object,
	#instVars : [
		'children'
	],
	#category : #VisitorExample
}

{ #category : #accessing }
DirectoryNode >> acceptVisitor: aVisitor [ 
	^ aVisitor visitDirectoryNode: self
]

{ #category : #accessing }
DirectoryNode >> size [ 
	^ children sum: [ :each | each size ]
]
