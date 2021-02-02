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

{ #category : #'as yet unclassified' }
Die >> + aDie [ 
	^ aDie addingDie: self
		
]

{ #category : #'as yet unclassified' }
Die >> addingDie: aDie [
		
	| hand |
	hand :=  DieHandle new 
		addDie: aDie;
		addDie: self;
		yourself .
		
	^ hand
 	
	
]

{ #category : #'as yet unclassified' }
Die >> addingHandle: aHandle [ 
	^ aHandle addDie: self
 	
	
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

{ #category : #printing }
Die >> printOn: aStream [


	super printOn: aStream.
	aStream nextPutAll: ' (',faces printString , ')'
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
