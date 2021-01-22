Class {
	#name : #Scissors,
	#superclass : #Object,
	#category : #StonePaperScissors
}

{ #category : #'as yet unclassified' }
Scissors >> play: anotherTool [
	^ anotherTool playAgainstScissors: self 
]

{ #category : #'as yet unclassified' }
Scissors >> playAgainstPaper: anotherTool [
	^ #scissors  
]

{ #category : #'as yet unclassified' }
Scissors >> playAgainstScissors: anotherTool [
	^ #draw
]

{ #category : #'as yet unclassified' }
Scissors >> playAgainstStone: anotherTool [
	^ #stone
]
