class HomeController < ApplicationController
  
  #before_filter :authenticate_user!, :except => [:error, :landing] 
  #before_filter :authenticate_user!, :only=> [:private] 
  skip_before_filter :authenticate_user!, :except => [:private] 
  
  def index
  end
  
  def start
    render :index
  end
  
  def another
    render :index
  end

  def paper
    render :index
  end

  def next
    render :index
  end

  def more
  end
  

  def private
    render :index
  end
  
  def critter
    render :critter, :layout=>false
  end
  
  def pardot
    render :partial=>"home/frame2", :layout=>false
  end
end
