class GamesController < ApplicationController

  def play

    if @game
      @game.users << @auth
    else
      @game = Game.create
      @game.users << @auth
    end

    #adding cards to the dealer
    @dealer = []
    @deck = DeckOfCards.new
    @deck.shuffle
    a = @deck.draw
    @dealer << a
    b = @deck.draw
    @dealer << b

    @auth.cards = []
    c = @deck.draw
    @auth.cards << c
    d = @deck.draw
    @auth.cards << d

  end
end

