class HomeController < ApplicationController
  
  def index

  end

  def play
  	@move=params[:move].to_i+1 #AI algorythm is generating movements from 0-6 so we add 1 more
  	gon.move = @move
  end


end
