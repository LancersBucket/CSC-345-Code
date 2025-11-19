module War
where

-- think about what classes need to be derived for which
-- algebraic data types.
-- need 4 Suits
data Suit = Clubs | Diamonds | Spades | Hearts
    deriving (Ord, Enum, Eq, Show)

-- need 13 ranks
data Rank = Two | Three | Four | Five | Six | Seven | Eight
          | Nine | Ten | Jack | Queen | King | Ace
    deriving (Ord, Enum, Eq, Show)

-- a card is a Rank and a Suit
type Card = (Rank, Suit)

-- a deck is a list of cards
type Deck = [Card]

-- a hand is a list of cards
type Hand = [Card]

-- makeDeck initializes a deck by making a list of cards
-- from all ranks and suits
makeDeck :: Deck
makeDeck = [(r, s) | r <- [Two .. Ace], s <- [Clubs .. Hearts]]

-- dealCards takes a Deck and a pair of Hands
-- and deals two cards at a time until the Deck is empty.
dealCards :: Deck -> (Hand, Hand) -> (Hand, Hand)
dealCards [] (p1,p2) = (p1,p2)
dealCards (one:two:rest) (p1,p2) = dealCards rest (one:p1, two:p2) 

-- `play` takes a tuple of player 1's hand, player 2's hand
-- and the pot (that can be a hand also). 
-- it follows the rules of war recursively.
-- the base cases are that if both players have no cards
-- then it's a tie
-- if one player has no cards then the other player wins
-- the recursive cases are when one card has a higher rank then 
-- the player with the higher card gets both cards
-- when both cards have the same rank then the pot gets 4 cards from 
-- each hand and each player keeps the rest of their hand to play the
-- next round
-- use local definitions for topcard of each player
-- and a function p that returns the result of
-- a betterCard function that checks which card has a better rank
play :: (Hand, Hand, Hand) -> String
play (p1,p2,pot)
    | null p1 && null p2 = "Game is a Tie! The pot has: " ++ (show pot)
    | null p1 = "Player 2 wins! Player 2 has: " ++ (show p2)
    | null p2 = "Player 1 wins! Player 1 has: " ++ (show p1)
    | p == 1 = play ((tail p1) ++ [topcard1, topcard2] ++ pot, tail p2, [])
    | p == 2 = play (tail p1, (tail p2) ++ [topcard1, topcard2] ++ pot, [])
    | p == 0 = play (drop 4 p1, drop 4 p2, (take 4 p1) ++ (take 4 p2) ++ pot)
    where
        topcard1 = head p1
        topcard2 = head p2
        p = betterCard topcard1 topcard2

-- make a betterCard helper function that is not local
-- that takes 2 cards and returns 0 if the cards have the
-- same rank 1 if the first card is better, and 2
-- if the second card is better
betterCard :: Card -> Card -> Int
-- betterCard (one,_) (two,_) -- Uses just the rank
betterCard one two -- Uses both the rank and the suit
    | one > two = 1
    | two > one = 2
    | otherwise = 0

-- make a startGame function that takes a pair of two hands
-- and returns a triple that has the 2 hands plus an empty pot
-- for the starting of the game
startGame :: (Hand, Hand) -> (Hand, Hand, Hand)
startGame (one,two) = (one,two,[]) 

-- let result be the result of play on a started Game from dealing a newly
-- made deck from into a pair of empty hands.
result = play (startGame (dealCards makeDeck ([],[])))
