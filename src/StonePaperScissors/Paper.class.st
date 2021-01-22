Class {
	#name : #Paper,
	#superclass : #Object,
	#category : #StonePaperScissors
}

{ #category : #'as yet unclassified' }
Paper >> play: anotherTool [
	^ anotherTool playAgainstPaper: self
]

{ #category : #'as yet unclassified' }
Paper >> playAgainstPaper: anotherTool [
	^ #draw 
]

{ #category : #'as yet unclassified' }
Paper >> playAgainstScissors: anotherTool [
	^ #scissors 
]

{ #category : #'as yet unclassified' }
Paper >> playAgainstStone: anotherTool [
	^ #paper
]
