Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Dice
}

{ #category : #initialization }
DieHandle >> addDie: aDie [

	dice add: aDie.
]

{ #category : #initialization }
DieHandle >> dice [ 

	^ dice
]

{ #category : #initialization }
DieHandle >> diceNumber [ 


	^ dice size
]

{ #category : #initialization }
DieHandle >> initialize [ 

	super initialize.
	dice := OrderedCollection new.
]

{ #category : #initialization }
DieHandle >> maxVal [

	| res |
	res := 0.
	dice do: [ :each | res:= res +each faces ].
	^ res
]

{ #category : #initialization }
DieHandle >> roll [ 

	| res |
	res := 0.
	dice do: [ :each | res:= res +each roll ].
	^ res
]
