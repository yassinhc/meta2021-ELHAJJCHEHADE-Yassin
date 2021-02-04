Class {
	#name : #DepthCalculatorVisitor,
	#superclass : #Object,
	#category : #VisitorExample
}

{ #category : #visiting }
DepthCalculatorVisitor >> visitLeafNode: aSelfNode [ 
	^ 1
]

{ #category : #visiting }
DepthCalculatorVisitor >> visitLiteralNode: aRBLiteralValueNode [
	^ 1
]

{ #category : #visiting }
DepthCalculatorVisitor >> visitLiteralValueNode: aRBLiteralValueNode [
	^ self visitLeafNode: aRBLiteralValueNode 
]

{ #category : #visiting }
DepthCalculatorVisitor >> visitMessageNode: aRBMesaageNode [
	^ self visitNodeWithChildren: aRBMesaageNode
]

{ #category : #visiting }
DepthCalculatorVisitor >> visitMethodNode: aRBMethodNode [
	^ 1 + (aRBMethodNode children 
			inject: 0
			into: [:max :node | max max: (node acceptVisitor: self)])
]

{ #category : #visiting }
DepthCalculatorVisitor >> visitNodeWithChildren: aNode [
	^ 1 + (aNode children 
			inject: 0
			into: [:max :node | max max: (node acceptVisitor: self)])
]

{ #category : #visiting }
DepthCalculatorVisitor >> visitSelfNode: aSelfNode [
	^ self visitLeafNode: aSelfNode 
]

{ #category : #visiting }
DepthCalculatorVisitor >> visitSequenceNode: aRBSequenceNode [
	^ self visitNodeWithChildren: aRBSequenceNode 
]
