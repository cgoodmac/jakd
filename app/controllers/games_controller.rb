class GamesController < ApplicationController
  def play
    @game = Game.create
    @game.users << @auth


  end
end