class HomeController < ApplicationController
  
  #before_filter :authenticate_user!, :except => [:error, :landing] 
  #before_filter :authenticate_user!, :only=> [:private] 
  before_filter :new_key
  
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
  def signup
    render :index
  end

  def more
  end

  def private
    render :index
  end

  def critter
    #render :critter, :layout=>false
    render :partial=>"home/frame"
  end
  def critter2
    #render :critter, :layout=>false
    render :partial=>"home/frame3"
  end
  def critter_iframe
    render :partial=>"home/critter_iframe"
  end

  
  def pardot
    render :partial=>"home/frame2", :layout=>false
  end
  def pardot_flat
    render :partial=>"home/frame2"
  end  
  def pardot_iframe
    render :partial=>"home/pardot_iframe"
  end
  
  def new_key
    @new_key = Date.today.strftime("%m-%d-")+SecureRandom.urlsafe_base64(3)
  end
  
end
