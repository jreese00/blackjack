blackjack
=========

####Project Goal

Create a simple blackjack game with the intent of becoming comfortable with ruby and git.
Possibly expand project in future to web based interface using ruby on rails.
Possibly expand project in future to run simulations based on card counting strategies.

####Information Sources
* http://en.wikipedia.org/wiki/Blackjack#Rules_of_play_at_casinos
* http://en.wikipedia.org/wiki/Table_limit
* http://en.wikipedia.org/wiki/Shoe_(cards)_
* https://www.youtube.com/watch?v=0MhWkqfSKQ4

######Table
Each table one dealer and multiple open seats (usually 5-7).
Open seats can be filled by players.
Tables have a minimum and maximum bet limits.  Players must bet at least the table minimum and cannot bet more than the table maximum per round.
Each table has a dealer. The dealer facilities taking bets, dealing cards, playing the house hand, and providing payouts.
Players play separate hands against the dealer/house instead of each other.
Each table has a value (usually 17) that the dealer must stand if at or above the value and hit if below the value).
A "soft" 17 (with an ace counting as a won) must be stood by the dealer at some tables and hit by the dealer at others.


######Round
At the start of the round each player must make their bet for the round.
Bets must meet or exceed the table minimum.
Bets must be less than or equal to the table maximum.
After all bets are in, the hands are dealt starting from the dealer's left and ending with the dealer.
* One face up card to each player
* One face up card to the dealer
* One face up card to each player
* One face down card to the dealer

If face up card in the dealer's hand is an Ace
* Insurance is offered to each player, meaning they can bet up to half of their initial bet and get paid according to table rules (usually 2:1) on their side bet if the dealer has blackjack
* The dealer then checks for and reveals if blackjack, ending the round.

If the dealer does not have blackjack, play then continues from left to right with each player making the following choices as long as their hand does not exceed 21:
* Hit - dealer deals the player another card
* Stand [Pat] - no more cards are dealt to the player, play moves to next player or the deal if no more players remain
* Double Down - Player doubles their initial bet (100% increase), and the dealer deals the player one and only one additional card
* Split
  * only available when hand is two cards of equal value
  * player doubles bet and cards are split into two separate hands, dealer deals each split hand one face up card
  * blackjacks on split hands are generally counted as a plain 21 rather than a blackjack bonus
  * some tables may limit splits to the initial hand or to one re-split 
* Surrender 
  * At some tables the the player may be allowed to surrender as their first move
  * Surrendering will end the player's hand, returning 1/2 of their bet.

######Shoe
Each table has a shoe to hold the cards to be used for that table.
Shoe contains multiple decks (apparently generally an even number from 2 to 8) of standard 52 playing cards.
The shoe has an insert that when reached means the shoe will be shuffled after that hand. 
The insert is placed around 1/4 from end, and the percentage of cards before the insert is called the penetration.

######Scoring
Player hands are scored against the dealer's hand.
Hands that exceed 21 are considered to bust and are losses regardless of the dealer's hand
Hands that are less than or equal to 21 and greater than the dealer's hand win.
Hands that are less than the dealer's hand are losses.

######Payout
At the end of each round, the dealer manages the collection of failed bets and payout of successful bets.
Winning player blackjacks are paid out according to table rules (usually 3:2)
Winning non blackjack hands are paid out at 1:1
Ties (push) return the players initial bet
Players that bust or lose to the dealer's hand lose their initial bet (and any additional bets from double down, split)

######Cards
Standard playing cards are used with four suits and ranks from Ace to King.
Suits are meaningless, only the card value matters.
Face cards are treated as having a value of 10 regardless of their typical value (11, 12, 13).
Aces can have a value of 1 or 11 by player preference to make the best possible hand
