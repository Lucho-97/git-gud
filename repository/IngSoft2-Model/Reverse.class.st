Class {
	#name : #Reverse,
	#superclass : #InstantCard,
	#category : #'IngSoft2-Model'
}

{ #category : #actions }
Reverse >> activateCardEffectIn: aGame [
	aGame reverseTheOrderOfPlayers
]
