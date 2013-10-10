class HomeController < ApplicationController
  
  #before_filter :authenticate_user!, :except => [:error, :landing] 
  #before_filter :authenticate_user!, :only=> [:private] 
  skip_before_filter :authenticate_user!, :except => [:private] 
  
  def index
  end
  
  def start
  end
  
  def another
    #render :index
  end

  def next
  end
  

  def private
    render :index
  end
  
  def critter
    render :critter, :layout=>false
  end
end
