class GamesController < ApplicationController

  def table
      @game = Game.create

      all_other_games = Game.all - Game.where( :id => @game.id )
      
      if all_other_games != nil
        all_other_games.each do |i|
          i.set_is_in_progress(false)
        end
      else
      end
      
      @game.users << @auth
  end

  def bet
    @auth.bet = params[:bet_amount]
    @game.deck = DeckOfCards.new
    @deck = @game.deck
    @deck.shuffle

    deal
  end  


  def deal

    @dealer_array = []


    d1 = @deck.draw
    @dealer_array << d1
    d2 = @deck.draw
    @dealer_array << d2

    @dealer_strings = @dealer_array.map {|i| i.to_s}

    #adding cards to the users's array, @card defined in attr_accessor, being stored in session
    @auth.cards = []
    c1 = @deck.draw
    c2 = @deck.draw

    @auth.cards << c1
    @auth.cards << c2

    @auth_cards_strings = @auth.cards.map {|i| i.to_s}

    #getting value of card1 and card2
    card1val = @auth.cards[0].value
    card2val = @auth.cards[1].value

    #if cards are Jack, Queen or King, then set value at 10
    if card1val > 10 && card1val < 14
      card1val = 10
    end

    if card2val > 10 && card2val < 14
      card2val = 10
    end

    #get user total
    @auth_total = @auth.cards.map {|i| i.value}.inject(&:+)

    @dealer_total = @dealer_array.map {|i| i.value}.inject(&:+)

    # if user total is greater than 21 and they have a card with a rank of Ace then make Ace value = 1
    # if sum == 21
    #   winpath
    # elsif sum > 21
    #   if theres an Ace
    #     ace =1
    #   else
    #     losepath
    #   end
    # end
  end

  def hit
    @game.deck = DeckOfCards.new #this is not right
    @deck = @game.deck
    @deck.shuffle

    binding.pry
    c = @deck.draw
    
    @auth.cards << c

    @auth_cards_strings = @auth.cards.map {|i| i.to_s}

    @auth_total = @auth.cards.map {|i| i.value}.inject(&:+)

  end

  def stay

  end

end

