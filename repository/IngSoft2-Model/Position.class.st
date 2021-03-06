Class {
	#name : #Position,
	#superclass : #Object,
	#instVars : [
		'space',
		'lap'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #initialization }
Position class >> atStart [ 
^self new initializeWithSpace: 1 andLap:0.
]

{ #category : #initialization }
Position class >> movingFrom: aPosition forAnAmountOfSpaces: anAmountOfSpaces onABoardOfSize: aBoardSize [
	| newSpace newLap |
	newSpace := (aPosition currentSpace + anAmountOfSpaces-1) % aBoardSize +1.
	newLap := aPosition currentLap + ((aPosition currentSpace + anAmountOfSpaces - 1) // aBoardSize).
	^ self new initializeWithSpace: newSpace andLap: newLap
]

{ #category : #accesing }
Position >> currentLap [
^lap
]

{ #category : #accesing }
Position >> currentSpace [ 
^space.
]

{ #category : #initialization }
Position >> initializeWithSpace: aNumberOfSpaces andLap: aNumberOfLaps [
space:=aNumberOfSpaces.
lap:=aNumberOfLaps
]
