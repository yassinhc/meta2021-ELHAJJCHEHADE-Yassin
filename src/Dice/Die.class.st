Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #Dice
}

{ #category : #accessing }
Die class >> faces [
	self shouldBeImplemented.
]

{ #category : #instanceCreation }
Die class >> withFaces: anInteger [ 
	| d |
	d := Die new.
	d faces: anInteger.
	^ d
]

{ #category : #accessing }
Die >> faces [
	^ faces
]

{ #category : #accessing }
Die >> faces: anInteger [
	faces := anInteger 
]

{ #category : #initialization }
Die >> initialize [ 

	super initialize.
	faces:= 6
]

{ #category : #'as yet unclassified' }
Die >> roll [

	^ faces atRandom.
]

{ #category : #accessing }
Die >> withFaces: anInteger [ 

	| d |
	d := Die new.
	d faces: anInteger.
	^ d
]
