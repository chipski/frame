Frame::Application.routes.draw do
  authenticated :user do
    #get :private, :to => 'home#private'
  end
  devise_scope :user do
    root :to => "devise/registrations#new"
    match '/user/confirmation' => 'confirmations#update', :via => :put, :as => :update_user_confirmation
  end
  devise_for :users, :controllers => { :registrations => "registrations", :confirmations => "confirmations" }
  match 'users/bulk_invite/:quantity' => 'users#bulk_invite', :via => :get, :as => :bulk_invite
  resources :users do
    get 'invite', :on => :member
  end
  
  [:index, :next, :another, :form] 
  
  match "critter" => "home#critter"
  match "another" => "home#another"
  match "next"    => "home#next"
  match "index"   => "home#index"
  root :to => 'home#index'
end
