class HomeController < ApplicationController
  
  def critter
    render :critter, :layout=>false
  end
end
