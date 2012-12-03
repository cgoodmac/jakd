class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :auth, :game, :deck
  private
  def auth
     if session[:id]
        @auth = User.find(session[:id])
     else
        @auth = nil
        # redirect_to login_path
     end
  end
  def game
    @game = Game.where(:is_in_progress => true).first
  end
  def deck
    if @game
      @deck = @game.deck
    else
    end
  end
end

