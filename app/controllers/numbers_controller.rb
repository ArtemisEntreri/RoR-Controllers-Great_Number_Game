class NumbersController < ApplicationController
  def index
  	if session[:number].nil?
  		session[:number] = rand(1..100)
  	end

  end

  def guess
  	session[:counter] = !session[:counter].nil? ? session[:counter] += 1 : 1
  	@guess = params[:guess].to_i
  	if @guess > session[:number]
  		flash[:response] = "Your guess is to high, try again!"
  	elsif @guess < session[:number]
  		flash[:response] = "Your guess is to low, try again!"
  	else
  		flash[:correct] = "You guessed it! Nice Job!  It took you #{session[:counter]} attempt(s)!"
  	end
  	redirect_to '/'
  end

  def reset
    session[:counter] = nil
    session[:number] = nil
    redirect_to '/'
  end
end
