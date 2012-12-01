class GamesController < ApplicationController

  def play

    if @game
      @game.users << @auth
    else
      @game = Game.create
      @game.users << @auth
    end

    #adding cards to the dealer's array
    @dealer = []
    @deck = DeckOfCards.new
    @deck.shuffle
    d1 = @deck.draw
    @dealer << d1
    d2 = @deck.draw
    @dealer << d2

    #adding cards to the users's array, @card defined in attr_accessor, being stored in session
    @auth.cards = []
    c1 = @deck.draw
    @auth.cards << c1
    c2 = @deck.draw
    @auth.cards << c2

    #getting value of card1 and card2
    card1 = @game.users[0].cards[0].value
    card2 = @game.users[0].cards[1].value

    #if cards are Jack, Queen or King, then set value at 10
    if card1 > 10 && card1 < 14
      card1 = 10
    end

    if card2 > 10 && card2 < 14
      card2 = 10
    end

    #get user total
    @user_total = card1 + card2


    # if user total is greater than 21 and they have a card with a rank of Ace then make Ace value = 1


  end
end

