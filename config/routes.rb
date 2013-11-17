Frame::Application.routes.draw do
  authenticated :user do
    #get :private, :to => 'home#private'
  end
  devise_scope :user do
    #root :to => "devise/registrations#new"
    match '/user/confirmation' => 'confirmations#update', :via => :put, :as => :update_user_confirmation
  end
  devise_for :users, :controllers => { :registrations => "registrations", :confirmations => "confirmations" }
  match 'users/bulk_invite/:quantity' => 'users#bulk_invite', :via => :get, :as => :bulk_invite
  resources :users do
    get 'invite', :on => :member
  end
  
  [:index, :start, :next, :another, :form, :pardot] 
  
  match "critter"     => "home#critter"
  match "pardot"      => "home#pardot"
  match "another"     => "home#another"
  match "next"        => "home#next"
  match "more"        => "home#more"
  match "pardot_flat" => "home#pardot_flat"  
  match "start"       => "home#start"
  match "paper"       => "home#paper"
  match "index"       => "home#index"
  root :to => 'home#start'
end
