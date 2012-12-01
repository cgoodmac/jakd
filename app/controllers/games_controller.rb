class GamesController < ApplicationController
  def create
    @game = Game.create
    @game.users << @auth

    
  end
end