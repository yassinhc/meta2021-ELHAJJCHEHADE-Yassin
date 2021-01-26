Class {
	#name : #ENegationTest,
	#superclass : #TestCase,
	#category : #Expressions
}

{ #category : #tests }
ENegationTest >> testEvaluate [
	self
		assert:
			((ENegation new expression: (EConstant new value: 5))
				evaluateWith: Dictionary new)
		equals: -5
]

{ #category : #tests }
ENegationTest >> testEvaluateWithClassCreationMessage [
	self
		assert:
			((ENegation expression: (EConstant new value: 5))
				evaluateWith: Dictionary new)
		equals: -5
]

{ #category : #tests }
ENegationTest >> testNegatedStructureIsCorrect [
	| exp |
	exp := EConstant value: 11.
	self assert: exp negated class = ENegation.
	self assert: exp negated negated equals: exp.
	
]

{ #category : #tests }
ENegationTest >> testNegationNegated [
	self
		assert: ((EConstant new value: 5) negated negated evaluateWith: Dictionary new)
		equals: 5
]
