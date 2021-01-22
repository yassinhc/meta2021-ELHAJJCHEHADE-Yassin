Class {
	#name : #StonePaperScissorsTest,
	#superclass : #TestCase,
	#category : #StonePaperScissors
}

{ #category : #tests }
StonePaperScissorsTest >> testPaperIsWinning [
	self assert: (Stone new play: Paper new) = #paper 
]

{ #category : #tests }
StonePaperScissorsTest >> testScissorsIsWinning [
	self assert: (Scissors new play: Paper new) = #scissors 
]

{ #category : #tests }
StonePaperScissorsTest >> testStoneAgainsStone [
	self assert: (Stone new play: Stone new) = #draw 
]
