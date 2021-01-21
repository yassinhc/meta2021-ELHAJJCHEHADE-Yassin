Class {
	#name : #DiceTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DiceTest >> testINitializationIsOk [

	| d |
	d := Die new.
	self assert: d faces equals:   6
]

{ #category : #tests }
DiceTest >> testIsRolling [

	| d |
	d := Die new.
	10 timesRepeat: 
		[self assert: (d roll  between: 1 and: 6)] 
]
