class HomeController < ApplicationController
  
  #before_filter :authenticate_user!, :except => [:error, :landing] 
  before_filter :authenticate_user!, :only=> [:private] 
  
  def index
  end
  
  def next
    render :index
  end
  
  def another
    render :index
  end

  def private
    render :index
  end
  
  def critter
    render :critter, :layout=>false
  end
end
