Class {
	#name : #Stone,
	#superclass : #Object,
	#category : #StonePaperScissors
}

{ #category : #'as yet unclassified' }
Stone >> play: anotherTool [
	^ anotherTool playAgainstStone: self
]

{ #category : #'as yet unclassified' }
Stone >> playAgainstPaper: anotherTool [
	^ #paper
]

{ #category : #'as yet unclassified' }
Stone >> playAgainstScissors: anotherTool [
	^ #stone
]

{ #category : #'as yet unclassified' }
Stone >> playAgainstStone: anotherTool [
	^ #draw
]
