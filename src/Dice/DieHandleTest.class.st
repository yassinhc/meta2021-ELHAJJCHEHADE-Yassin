Class {
	#name : #DieHandleTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DieHandleTest >> testCreationAndAddingIsOk [

	| handle |
	handle := DieHandle new
		addDie: (Die withFaces: 6);
		addDie: (Die withFaces: 10);
		yourself. 
	self assert: handle diceNumber equals: 2
]

{ #category : #tests }
DieHandleTest >> testCreationWithTheSameDie [

	| handle |
	handle := DieHandle new addDie: (Die withFaces: 6).
	self assert: handle diceNumber equals: 1.
	handle addDie: (Die withFaces: 6).
	self assert: handle diceNumber equals: 2
	
]

{ #category : #tests }
DieHandleTest >> testMaxValue [

	| handle |
	handle := DieHandle new
		addDie: (Die withFaces: 6);
		addDie: (Die withFaces: 10);
		yourself. 
	self assert: handle maxVal equals: 16.
]

{ #category : #tests }
DieHandleTest >> testRoll [

	| handle |
	handle := DieHandle new
		addDie: (Die withFaces: 6);
		addDie: (Die withFaces: 10);
		yourself.
	10 timesRepeat:  
	[self assert: (handle roll between: handle diceNumber  and: handle maxVal)]. 
]

{ #category : #tests }
DieHandleTest >> testSimpleCreation [ 

	self assert: 2 D20 diceNumber equals: 2
]

{ #category : #tests }
DieHandleTest >> testSimpleCreation2 [

	self assert: (2 D20 + 1 D12) diceNumber equals: 3
]
