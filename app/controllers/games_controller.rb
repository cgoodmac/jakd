class GamesController < ApplicationController
  
  def play

    if @game
      @game.users << @auth
    else 
      @game = Game.create
      @game.users << @auth
    end

  end
  
end

